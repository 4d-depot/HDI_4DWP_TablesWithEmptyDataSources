//%attributes = {}
var $WParea; $table; $cell : Object
var $nbRows; $nbCols; $i; $loops : Integer

$nbRows:=10000
$nbCols:=20


$WParea:=WP New:C1317
$table:=WP Insert table:C1473($WParea; wk append:K81:179; wk exclude from range:K81:181; $nbCols; $nbRows)
$cell:=WP Table get cells:C1477($table; $nbCols; $nbRows)
WP SET TEXT:C1574($cell; "Alpha"; wk replace:K81:177)

$text:=WP Get text:C1575($cell)
$text:=Substring:C12($text; 1; Length:C16($text)-1)  // remove the \r at the end

CLEAR VARIABLE:C89($WParea)
CLEAR VARIABLE:C89($table)
CLEAR VARIABLE:C89($cell)




