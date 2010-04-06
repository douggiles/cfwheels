<cfcomponent extends="wheelsMapping.Test">

	<cfinclude template="/wheelsMapping/global/functions.cfm">

	<cfset params = {controller="dummy", action="dummy"}>	
	<cfset controller = $controller(name="dummy").$createControllerObject(params)>

	<cffunction name="test_x">
	</cffunction>

</cfcomponent>