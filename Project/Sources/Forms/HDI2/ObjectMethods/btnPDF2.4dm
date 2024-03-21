$elems:=WP Get elements:C1550(WParea2; wk type table:K81:222)

$table:=WP Get element by ID:C1549(WParea2; "tableAsia"); 
WP SET ATTRIBUTES:C1342($table; wk empty datasource; wk hide table)
