forEach ($file in get-childItem "GH.zip" -Attributes !Directory -Recurse) {
$le = split-path -Path $file -LeafBase
$dir = split-path -Path $file
$dir = $dir.Replace("C:\Users\Jake\Desktop\GH.zip\", "")
$dir = $dir.Replace("\", " ")
$dest = "Z:\All Documents\"
$newName = $le + ".pdf"
$newDest = $dest + $dir + $newName
Out-Printer -Path $file -PrinterName "Microsoft Print to PDF" -Destination $newDest
Remove-Item $file}