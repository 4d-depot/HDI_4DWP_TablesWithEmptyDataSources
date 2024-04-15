var $context : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$context:=New object:C1471
//$context.tableDataSource:=Formula from string(Form.memoDataSource).call()

//$context.tableDataSource:=ds.People.all().orderBy("continent asc, country asc, city asc, lastname asc")

$context.europeDataSource:=ds:C1482.People.newSelection()
$context.asiaDataSource:=ds:C1482.People.newSelection()
$context.northAmericaDataSource:=ds:C1482.People.newSelection()
$context.southAmericaDataSource:=ds:C1482.People.newSelection()

For ($i; 1; 2)  // fill one or two tables
	
	$choice:=Choose:C955(Random:C100%4; "Europe"; "Asia"; "North America"; "South America")
	
	Case of 
		: ($choice="Europe")
			$context.europeDataSource:=SampleData($choice)
		: ($choice="Asia")
			$context.asiaDataSource:=SampleData($choice)
		: ($choice="North America")
			$context.northAmericaDataSource:=SampleData($choice)
		: ($choice="South America")
			$context.southAmericaDataSource:=SampleData($choice)
	End case 
End for 

WP SET DATA CONTEXT:C1786(WParea2; $context)
WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk visible references:K81:286; False:C215))
WP COMPUTE FORMULAS:C1707(WParea2)



//$tables:=WP Get elements(WParea2; wk type table)
//For each ($table; $tables)
//WP SET ATTRIBUTES($table; wk empty datasource; wk show data row)
//End for each 


