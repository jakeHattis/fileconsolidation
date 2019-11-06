forEach ($dir in get-childItem "test" -Attributes Directory -Recurse) {
$parent = split-path -Path $dir 
$parent = $parent.Replace("Z:\test\", "")
$parent = $parent.Replace("\", " ")
$name = split-path -Path $dir -LeafBase
$out = "Z:\All Documents\"
$out = $out + $parent + $name + ".pdf"
Merge-Pdf -Path $dir -OutputPath $out -Force
}