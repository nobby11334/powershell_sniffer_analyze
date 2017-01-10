
Param($tgtdir, $fname, $resdir)




$files = Get-ChildItem $directory

Get-Content $tgtdir$fname |Sort-Object|Get-Unique >> $resdir$fname".unq.txt"
