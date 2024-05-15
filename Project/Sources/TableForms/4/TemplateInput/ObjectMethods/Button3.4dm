$_tables:=WP Get elements:C1550([Templates:4]wp:3; wk type table:K81:222)

For each ($table; $_tables)
	
	Case of 
		: ($table.dataSource.source="This.data.asiaDataSource")
			$table.id:="tableAsia"
			WP SET ATTRIBUTES:C1342($table; wk empty datasource:K81:385; wk show data row:K81:386)  // default
			
		: ($table.dataSource.source="This.data.europeDataSource")
			$table.id:="tableEurope"
			WP SET ATTRIBUTES:C1342($table; wk empty datasource:K81:385; wk hide data row:K81:387)
			
		: ($table.dataSource.source="This.data.northAmericaDataSource")
			$table.id:="tableNorthAmerica"
			WP SET ATTRIBUTES:C1342($table; wk empty datasource:K81:385; wk hide table:K81:388)
			
		: ($table.dataSource.source="This.data.southAmericaDataSource")
			$table.id:="tableSouthAmerica"
			WP SET ATTRIBUTES:C1342($table; wk empty datasource:K81:385; "showAlternate")
			
	End case 
	
End for each 