
Param($directory, $resdir)



$regpattern = "\d+\.\d+\.\d+\.\d+\s+<->\s+\d+\.\d+\.\d+\.\d+"

$files = Get-ChildItem $directory

foreach($fname in $files){
	[regex]::Matches((Get-Content $directory$fname),$regpattern) >> $resdir$fname".reg.txt"
}