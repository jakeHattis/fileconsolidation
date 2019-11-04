forEach ($file in get-childItem "test" -Attributes !Directory -Recurse) {
$le = split-path -Path $file -LeafBase
$dir = split-path -Path $file
$newName = $le + ".pdf"
$newDest = $dir + "\" + $newName
Out-Printer -ImagePath $file -PrinterName "Microsoft Print to PDF" -Destination $newDest
Remove-Item $file}