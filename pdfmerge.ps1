forEach ($dir in get-childItem "1.3 Mimosa st GW" -Attributes Directory -Recurse) {
$parent = split-path -Path $dir
$parent_leafBase = split-path -Path $parent -LeafBase
$name = split-path -Path $dir -LeafBase
$out = "C:\Users\Jake\Desktop\1.3 Mimosa st GW\All Documents\"
$out = $out + $parent_leafBase + $name + ".pdf"
Merge-Pdf -Path $dir -OutputPath $out -Force }