<cfcomponent extends="wheelsMapping.Test">

	<cfinclude template="/wheelsMapping/global/functions.cfm">

	<cfset params = {controller="dummy", action="dummy"}>
	<cfset controller = $controller(name="dummy").$createControllerObject(params)>

	<cffunction name="setup">
		<cfset oldCGIScope = request.cgi>
	</cffunction>

	<cffunction name="test_isPost_valid">
		<cfset request.cgi.request_method = "post">
		<cfset assert("controller.isPost() eq true")>
	</cffunction>
	
	<cffunction name="test_isPost_invalid">
		<cfset request.cgi.request_method = "">
		<cfset assert("controller.isPost() eq false")>
	</cffunction>

	<cffunction name="teardown">
		<cfset request.cgi = oldCGIScope>
	</cffunction>

</cfcomponent>