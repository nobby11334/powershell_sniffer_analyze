
Param($tgtdir, $fname, $resdir)

if($fname -eq ""){
	return
}

$regpattern = "\d+\.\d+\.\d+\.\d+\s+<->\s+\d+\.\d+\.\d+\.\d+"


[regex]::Matches((Get-Content $tgtdir$fname),$regpattern)|foreach{
	$_.Value >> "$resdir$fname.reg.txt"
}
