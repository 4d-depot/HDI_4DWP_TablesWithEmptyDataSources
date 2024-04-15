$tables:=WP Get elements:C1550(WParea2; wk type table:K81:222)
For each ($table; $tables)
	WP SET ATTRIBUTES:C1342($table; wk empty datasource:K81:385; wk hide table:K81:388)
End for each 