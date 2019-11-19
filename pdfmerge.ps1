forEach ($dir in get-childItem "test" -Attributes Directory -Recurse) {
$path = convert-path $dir
$path = $path.Replace("Z:\test\", "")
$path = $path.Replace("\", " ")
$path = $path.Replace(".", ",")
$out = "Y:\Prop Photos\"
$out = $out + $path + ".pdf"
Merge-Pdf -Path $dir -OutputPath $out -Force}