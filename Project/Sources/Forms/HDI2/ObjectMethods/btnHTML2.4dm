If (Form:C1466.trace)
	TRACE:C157
End if 

// the W_Print method is NOT preemptive
CALL WORKER:C1389("wPrint"; "W_Print"; "printPreview"; OB Copy:C1225(WParea2); ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc"))


