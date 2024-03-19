//%attributes = {"preemptive":"capable"}
#DECLARE($action : Text; $document : Object; $tableES : cs:C1710.PeopleSelection)



var $Path : Text
var $context : Object

$context:={tableDataSource: $tableES}
WP SET DATA CONTEXT:C1786($document; $context)

Case of 
	: ($action="exportHTML")
		$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.html"
		WP EXPORT DOCUMENT:C1337($document; $path; wk web page complete:K81:2; wk normal:K81:7)
		OPEN URL:C673($Path)
		
	: ($action="exportPDF")
		$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.pdf"
		WP EXPORT DOCUMENT:C1337($document; $path; wk pdf:K81:315; wk normal:K81:7)
		OPEN URL:C673($Path)
		
	: ($action="exportDocx")
		$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.docx"
		WP EXPORT DOCUMENT:C1337($document; $path; wk docx:K81:277)
		OPEN URL:C673($Path)
End case 


