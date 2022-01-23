Get-ChildItem -Path 'C:\Users\ankit\Downloads\dhiiacademy\application\views' -Recurse |
Foreach-Object {

$currentfile = $_.FullName
#echo $currentfile
$filename = Get-ChildItem -Path $currentfile -Name
#echo $filename
$workingdirectory =  Get-ChildItem -Path $currentfile -Directory | select Directory
#$drive = "c:\"
#$workingdirectory.psobject.properties.name
#try{$g = $workingdirectory | Convert-String -Example "C:\wamp64\www\www\dhiiacademy}=E:\wamp64\www\www\dhiiacademy" String}
$g = -join $workingdirectory
#echo $g.GetType().Name
#$h = $g | Convert-String -Example "C:\wamp64\www\www\dhiiacademy}=E:\wamp64\www\www\dhiiacademy"
#catch {
$h = $g.Replace("@{Directory=C", "E")
$i = $h.Replace("}","")
#echo $i
#$h = -join $h
#mkdir $i
#}
php amp-console amp:convert "$currentfile" --full-document --no-lines --no-orig-and-warn >  $i\$filename
#$workingdirectory1 = $workingdirectory | Foreach {"$($_.Option)$($_.Title)"}
#$copydir = if($workingdirectory -like "c:\"){$workingdirectory -replace "c:\", "e:\"}
#echo $copydir
#echo $g.GetType().Name

}
