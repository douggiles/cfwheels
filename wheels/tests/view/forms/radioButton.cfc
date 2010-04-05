<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.tests._assets.controllers.ControllerWithModel")>

	<cffunction name="test_x_radioButton_valid">
		<cfset loc.controller.radioButton(objectName="user", property="gender", tagValue="m", label="Male")>
	</cffunction>

</cfcomponent>