C_TEXT:C284($path)
C_LONGINT:C283($page)
C_PICTURE:C286($pict)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=ds:C1482.Documents.all().orderBy("pageNumber").toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		LISTBOX SELECT ROW:C912(*; "LB"; 1)
		WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk formula highlight:K81:350; wk never:K81:352; wk formula highlight color:K81:351; "LightYellow"; wk visible references:K81:286; True:C214))
		
		Form:C1466.highlight:=False:C215
		Form:C1466.trace:=False:C215
		
		Form:C1466.action:="gotoPage"
		SET TIMER:C645(-1)
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		Case of 
			: (Form:C1466.action="gotoPage")
				
				$index:=Form:C1466.tabControl.index
				FORM GOTO PAGE:C247($index+1)
				WParea1:=Form:C1466.documents[$index].comments
				
				If ($index=1)
					Form:C1466.action:="loadSample"
					SET TIMER:C645(1)
				End if 
				
			: (Form:C1466.action="loadSample")
				
				UpdateTemplateSample
				Form:C1466.action:=""
				
		End case 
		
		//WP SET DATA CONTEXT(WParea2; New object("company"; Form.companies[0]))
		//WP COMPUTE FORMULAS(WParea2)
		
		
End case 
