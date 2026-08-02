[CmdletBinding()]
param(
    [Parameter(Position = 0)]
    [string]$Query,

    [string]$Root,

    [ValidateRange(0, 8)]
    [int]$ContextLines = 2,

    [ValidateRange(1, 50)]
    [int]$MaxMatches = 12,

    [switch]$VerifyOnly
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($Root)) {
    if (-not [string]::IsNullOrWhiteSpace($env:EPOCH_RUST_REFERENCE_ROOT)) {
        $Root = $env:EPOCH_RUST_REFERENCE_ROOT
    } else {
        $Root = "C:\Users\jawsu\Agent_Skills_Master\reference-libraries\rust"
    }
}

if (-not (Test-Path -LiteralPath $Root -PathType Container)) {
    throw "REFERENCE_LIBRARY_NOT_FOUND: $Root"
}

$SkillRoot = Split-Path -Parent $PSScriptRoot
$CatalogPath = Join-Path $SkillRoot "references\rust-library.json"
$Catalog = Get-Content -LiteralPath $CatalogPath -Raw | ConvertFrom-Json
$Manuals = @($Catalog.manuals)

if ($Manuals.Count -ne [int]$Catalog.expected_manual_count) {
    throw "REFERENCE_CATALOG_INVALID: expected $($Catalog.expected_manual_count) records; found $($Manuals.Count)"
}

$Verified = @()
foreach ($Manual in $Manuals) {
    $Path = Join-Path $Root $Manual.relative_path
    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        throw "REFERENCE_INTEGRITY_FAILURE: missing $($Manual.relative_path)"
    }

    $File = Get-Item -LiteralPath $Path
    if ($File.Length -ne [int64]$Manual.bytes) {
        throw "REFERENCE_INTEGRITY_FAILURE: byte count differs for $($Manual.relative_path)"
    }

    $Digest = (Get-FileHash -LiteralPath $Path -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($Digest -ne $Manual.sha256) {
        throw "REFERENCE_INTEGRITY_FAILURE: SHA-256 differs for $($Manual.relative_path)"
    }

    $Verified += [pscustomobject]@{
        RelativePath = $Manual.relative_path
        Path = $Path
        Authority = $Manual.authority
        Bytes = $File.Length
        SHA256 = $Digest
    }
}

if ($VerifyOnly) {
    [pscustomobject]@{
        Status = "PASS"
        ReferenceRoot = (Resolve-Path -LiteralPath $Root).Path
        ManualCount = $Verified.Count
        Manuals = @($Verified | Select-Object RelativePath, Authority, Bytes, SHA256)
    } | ConvertTo-Json -Depth 5
    exit 0
}

if ([string]::IsNullOrWhiteSpace($Query)) {
    throw "QUERY_REQUIRED: provide -Query or use -VerifyOnly"
}

$Results = @()
foreach ($Manual in $Verified) {
    if ($Results.Count -ge $MaxMatches) { break }

    $Lines = [IO.File]::ReadAllLines($Manual.Path)
    for ($Index = 0; $Index -lt $Lines.Length; $Index++) {
        if ($Results.Count -ge $MaxMatches) { break }
        if ($Lines[$Index].IndexOf($Query, [StringComparison]::OrdinalIgnoreCase) -lt 0) { continue }

        $StartIndex = [Math]::Max(0, $Index - $ContextLines)
        $EndIndex = [Math]::Min($Lines.Length - 1, $Index + $ContextLines)
        $ExcerptLines = @()
        for ($LineIndex = $StartIndex; $LineIndex -le $EndIndex; $LineIndex++) {
            $ExcerptLines += ("{0}: {1}" -f ($LineIndex + 1), $Lines[$LineIndex])
        }

        $Results += [pscustomobject]@{
            RelativePath = $Manual.RelativePath
            Authority = $Manual.Authority
            MatchLine = $Index + 1
            StartLine = $StartIndex + 1
            EndLine = $EndIndex + 1
            Citation = "$($Manual.RelativePath):lines $($StartIndex + 1)-$($EndIndex + 1)"
            Excerpt = $ExcerptLines -join "`n"
        }
    }
}

[pscustomobject]@{
    Status = "PASS"
    CatalogVerified = $true
    Query = $Query
    MatchLimit = $MaxMatches
    MatchCount = $Results.Count
    Truncated = ($Results.Count -ge $MaxMatches)
    Matches = @($Results)
} | ConvertTo-Json -Depth 6
