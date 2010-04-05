<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.Controller")>

	<cffunction name="test_x_endFormTag_valid">
		<cfset loc.controller.endFormTag()>
	</cffunction>

</cfcomponent>