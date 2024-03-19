//%attributes = {}
#DECLARE($continent : Text)->$samples : cs:C1710.PeopleSelection

$es:=ds:C1482.People.query("continent = :1"; $continent)
$max:=$es.length

$samples:=ds:C1482.People.newSelection()

For ($i; 1; 8)
	$rnd:=Random:C100%$max
	$se:=$es[$rnd]
	$samples.add($se)
End for 

$samples:=$samples.orderBy("continent asc, country asc, city asc, lastname asc")
