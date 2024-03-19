//%attributes = {"preemptive":"incapable"}
#DECLARE($action : Text; $document : Object; $tableES : cs:C1710.PeopleSelection)

var $Path : Text
var $context : Object

$context:={tableDataSource: $tableES}
WP SET DATA CONTEXT:C1786($document; $context)


Case of 
	: ($action="printPreview")
		
		SET PRINT PREVIEW:C364(True:C214)
		WP PRINT:C1343($document; wk recompute expressions:K81:311)
		SET PRINT PREVIEW:C364(False:C215)
		
		
End case 
