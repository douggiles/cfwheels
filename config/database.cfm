<!--- 
	Valid database types are "mysql5" and "sqlserver" (MySQL 4.1 is not supported at this time)
	You can leave user and pass blank if you have your username and password setup in the datasource in ColdFusion Administrator
--->

<cfif application.settings.environment IS "development">
	<cfset application.database.type = "mysql5">
	<cfset application.database.user = "">
	<cfset application.database.pass = "">
	<cfset application.database.name = "datasource_name">
<cfelseif application.settings.environment IS "production">
	<cfset application.database.type = "mysql5">
	<cfset application.database.user = "">
	<cfset application.database.pass = "">
	<cfset application.database.name = "datasource_name">
</cfif>