var $Path : Text
var $wpExport; $context : Object

$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.svg"

$wpExport:=OB Copy:C1225(WParea2)
$context:={tableDataSource: ds:C1482.People.all().orderBy("continent asc, country asc, city asc, lastname asc")}
WP SET DATA CONTEXT:C1786($wpExport; $context)

WP EXPORT DOCUMENT:C1337($wpExport; $path; wk svg:K81:356)

OPEN URL:C673($Path)
