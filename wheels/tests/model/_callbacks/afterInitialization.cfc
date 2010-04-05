<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.Controller") />
	
	<cffunction name="test_afterInitialization_valid">
		<cfset fail()>
	</cffunction>
	
</cfcomponent>