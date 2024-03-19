$_tables:=WP Get elements:C1550([Templates:4]wp:3; wk type table:K81:222)

For each ($table; $_tables)
	
	Case of 
		: ($table.dataSource.source="This.data.asiaDataSource")
			$table.id:="tableAsia"
			
		: ($table.dataSource.source="This.data.europeDataSource")
			$table.id:="tableEurope"
			
		: ($table.dataSource.source="This.data.northAmericaDataSource")
			$table.id:="tableNorthAmerica"
			
		: ($table.dataSource.source="This.data.southAmericaDataSource")
			$table.id:="tableSouthAmerica"
			
	End case 
	
End for each 