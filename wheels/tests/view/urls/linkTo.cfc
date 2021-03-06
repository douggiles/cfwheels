<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.Controller")>

	<cffunction name="setup">
		<cfset SavedConfig = duplicate(application.wheels.URLRewriting)>
		<cfset application.wheels.URLRewriting = "On">
	</cffunction>

	<cffunction name="teardown">
		<cfset application.wheels.URLRewriting = SavedConfig>
	</cffunction>

	<cffunction name="test_controller_action_only">
		<cfset loc.e = '<a href="#application.wheels.webpath#account/logout">Log Out</a>'>
		<cfset loc.r = loc.controller.linkTo(text="Log Out", controller="account", action="logout")>
		<cfset assert('loc.e eq loc.r')>
	</cffunction>

	<cffunction name="test_confirm_is_escaped">
		<cfset loc.e = '<a href="#application.wheels.webpath#" onclick="return confirm(''Mark as: \''Completed\''?'');">#application.wheels.webpath#</a>'>
		<cfset loc.r = loc.controller.linkTo(confirm="Mark as: 'Completed'?")>
		<cfset assert('loc.e eq loc.r')>
	</cffunction>

</cfcomponent>