If (Form:C1466.trace)
	TRACE:C157
End if 

// the W_Export method IS preemptive
CALL WORKER:C1389("wExport"; "W_Export"; "exportPDF"; OB Copy:C1225(WParea2); ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc"))
