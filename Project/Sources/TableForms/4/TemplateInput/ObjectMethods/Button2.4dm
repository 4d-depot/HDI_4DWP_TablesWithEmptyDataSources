
$context:={}
If (Shift down:C543)
	$context.tableDataSource:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc")
	
Else 
	$context.tableDataSource:=Formula:C1597(SampleData).call()
End if 


WP SET DATA CONTEXT:C1786([Templates:4]wp:3; $context)

WP COMPUTE FORMULAS:C1707([Templates:4]wp:3)