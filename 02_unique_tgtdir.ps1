
Param($directory, $resdir)



$regpattern = "\d+\.\d+\.\d+\.\d+\s+<->\s+\d+\.\d+\.\d+\.\d+"

$files = Get-ChildItem $directory

foreach($fname in $files){
	Get-Content $directory$fname | Get-Unique >> $resdir$fname".unq.txt"

}