$path = "c:\tools\version"
if (Test-Path $path -PathType Leaf) {
    [IO.File]::ReadAllText($path)
}
else {
	""
}