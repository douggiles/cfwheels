<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.Controller") />
	
	<cffunction name="test_deobfuscateParam_valid">
		<cfset fail()>
	</cffunction>
	
</cfcomponent>