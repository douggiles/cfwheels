<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.tests._assets.controllers.ControllerWithModel")>

	<cffunction name="test_x_textArea_valid">
		<cfset loc.controller.textArea(objectName="user", property="firstname")>
	</cffunction>

</cfcomponent>