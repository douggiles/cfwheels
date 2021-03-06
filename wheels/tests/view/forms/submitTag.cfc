<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.tests._assets.controllers.ControllerWithModel")>

	<cffunction name="test_defaults">
		<cfset loc.e = loc.controller.submitTag()>
		<cfset loc.r = '<input type="submit" value="Save changes" />'>
		<cfset halt(false, 'loc.e')>
		<cfset assert('loc.e eq loc.r')>
	</cffunction>
	
	<cffunction name="test_disabled_is_escaped">
		<cfset loc.e = loc.controller.submitTag(disable="Mark as: 'Completed'?")>
		<cfset loc.r = '<input onclick="this.disabled=true;this.value=''Mark as: \''Completed\''?'';this.form.submit();" type="submit" value="Save changes" />'>
		<cfset assert('loc.e eq loc.r')>
	</cffunction>

</cfcomponent>