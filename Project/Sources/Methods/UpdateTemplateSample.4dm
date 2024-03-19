//%attributes = {}

$templateName:="Above"

$template:=ds:C1482.Templates.query("name=:1"; $templateName).first()
WParea2:=$template.wp

//Form.memoDataSource:=$template.dataSource  // as string

//$context:=New object
//$context.tableDataSource:=Formula from string($template.dataSource).call()

//WP SET DATA CONTEXT(WParea2; $context)
//WP COMPUTE FORMULAS(WParea2)
