forEach ($file in get-childItem "0-9" -Attributes !Directory -Recurse) {
$le = split-path -Path $file -LeafBase
$dir = split-path -Path $file
$newName = $le + "LISTING FORM.pdf"
$newDest = $dir + "\" + "Listing Forms Ready to be Uploaded\" + $newName
Out-Printer -ImagePath $file -PrinterName "Microsoft Print to PDF" -Destination $newDest
Remove-Item $file}