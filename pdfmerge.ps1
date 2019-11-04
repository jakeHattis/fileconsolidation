forEach ($dir in get-childItem "test" -Attributes Directory -Recurse) {
$parent = split-path -Path $dir 
$parent = $parent.Replace("z:\test", "")
$parent = $parent.Replace("\", " ")
$name = split-path -Path $dir -LeafBase
$out = "z:\All Documents\"
$out = $out + $parent + $name + ".pdf"
Merge-Pdf -Path $dir -OutputPath $out -Force
foreach ($file in get-childItem $dir -Attributes !Directory) {
Remove-Item $file
}}