//%attributes = {}
var $e : cs:C1710.PeopleEntity

$es:=ds:C1482.People.query("continent=''")

$continents:=["Asia"; "Europe"; "North America"; "South America"]

For each ($e; $es)
	
	$p:=Random:C100%$continents.length
	$e.continent:=$continents[$p]
	
	
	Case of 
			
		: ($e.continent="Asia")
			$countries:=["Japan"; "China"]
			
			$p:=Random:C100%$countries.length
			$e.country:=$countries[$p]
			
			Case of 
				: ($e.country="Japan")
					$cities:=["Tokyo"; "Yokohama"; "Osaka"; "Saporo"]
					
				: ($e.country="China")
					$cities:=["Hong Kong"; "Macau"; "Beijing"; "Saporo"]
					
			End case 
			$p:=Random:C100%$cities.length
			$e.city:=$cities[$p]
			
			
		: ($e.continent="Europe")
			$countries:=["France"; "Portugal"; "Italy"; "U.K."; "España"]
			
			$p:=Random:C100%$countries.length
			$e.country:=$countries[$p]
			
			Case of 
				: ($e.country="France")
					$cities:=["Paris"; "Lyon"; "Lilles"]
					
				: ($e.country="Portugal")
					$cities:=["Lisbon"; "Porto"]
					
				: ($e.country="Italy")
					$cities:=["Roma"; "Venice"]
					
				: ($e.country="U.K.")
					$cities:=["London"; "Oxford"]
					
				: ($e.country="España")
					$cities:=["Madrid"; "Valencia"]
					
			End case 
			
			$p:=Random:C100%$cities.length
			$e.city:=$cities[$p]
			
		: ($e.continent="North America")
			$countries:=["Canada"; "U.S.A."]
			
			$p:=Random:C100%$countries.length
			$e.country:=$countries[$p]
			Case of 
				: ($e.country="Canada")
					$cities:=["Ottawa"; "Montréal"; "Québec"]
					
				: ($e.country="U.S.A.")
					$cities:=["Boston"; "Chicago"; "Portland"]
					
			End case 
			$p:=Random:C100%$cities.length
			$e.city:=$cities[$p]
			
			
		: ($e.continent="South America")
			$countries:=["Peru"; "Brazil"; "Argentina"]
			
			$p:=Random:C100%$countries.length
			$e.country:=$countries[$p]
			Case of 
				: ($e.country="Peru")
					$cities:=["Lima"; "Puno"]
					
				: ($e.country="Brazil")
					$cities:=["Sao Paulo"; "Rio do Janeiro"]
					
				: ($e.country="Argentina")
					$cities:=["Buenos Aeres"; "Rosario"]
					
			End case 
			$p:=Random:C100%$cities.length
			$e.city:=$cities[$p]
			
	End case 
	
	$e.save()
	
End for each 