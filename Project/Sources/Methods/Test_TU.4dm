//%attributes = {}
var $loops; $i : Integer
ARRAY TEXT:C222(arrNames; 0)
ARRAY LONGINT:C221(arrValues; 0)
ARRAY LONGINT:C221(arrCount; 0)

$loops:=50

GET MEMORY STATISTICS:C1118(1; arrNames; arrValues; arrCount)
$availableBefore:=Round:C94(arrValues{4}/1000000; 2)


For ($i; 1; $loops)
	TU
End for 

GET MEMORY STATISTICS:C1118(1; arrNames; arrValues; arrCount)
$availableAfter:=Round:C94(arrValues{4}/1000000; 2)

ALERT:C41("before: "+String:C10($availableBefore)+" , after: "+String:C10($availableAfter))

