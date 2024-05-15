//%attributes = {}
#DECLARE($action : Text)

var $context : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$context:=New object:C1471

Case of 
	: ($action="Clear")
		$context.europeDataSource:=ds:C1482.People.newSelection()
		$context.asiaDataSource:=ds:C1482.People.newSelection()
		$context.northAmericaDataSource:=ds:C1482.People.newSelection()
		$context.southAmericaDataSource:=ds:C1482.People.newSelection()
		
	: ($action="Fill")
		$context.europeDataSource:=SampleData("Europe"; 2)
		$context.asiaDataSource:=SampleData("Asia"; 2)
		$context.northAmericaDataSource:=SampleData("North America"; 2)
		$context.southAmericaDataSource:=SampleData("South America"; 2)
End case 

WP SET DATA CONTEXT:C1786(WParea2; $context)
WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk visible references:K81:286; False:C215))
WP COMPUTE FORMULAS:C1707(WParea2)
