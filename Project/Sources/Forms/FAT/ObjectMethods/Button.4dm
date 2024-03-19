
$nbRows:=1200
$nbCols:=120
$WParea:=WP New:C1317
$table:=WP Insert table:C1473($WParea; wk append:K81:179; wk exclude from range:K81:181; $nbCols; $nbRows)


$range:=WP Table get columns:C1476($table; 120; 1)
WP SET ATTRIBUTES:C1342($range; wk width:K81:45; "40px")
WP GET ATTRIBUTES:C1345($range; wk width:K81:45; $width)


$range:=WP Table get rows:C1475($table; 1200; 1)
WP SET ATTRIBUTES:C1342($range; wk width:K81:45; "25px")
WP GET ATTRIBUTES:C1345($range; wk width:K81:45; $height)


$cell:=WP Table get cells:C1477($table; $nbCols; $nbRows; 1; 1)
WP SET TEXT:C1574($cell; "Alpha"; wk replace:K81:177)



$text:=WP Get text:C1575($cell)
$text:=Substring:C12($text; 1; Length:C16($text)-1)  // remove the \r at the end



