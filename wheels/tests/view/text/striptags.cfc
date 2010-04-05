<cfcomponent extends="wheelsMapping.Test">

	<cfset global.controller = createobject("component", "wheelsMapping.Controller")>
	<cfset global.args = {}>
	<cfset global.args.html = '<h1>this</h1><p><a href="http://www.google.com" title="google">is</a></p><p>a <a href="mailto:someone@example.com" title="invalid email">test</a> to<br/><a name="anchortag">see</a> if this works or not.</p>'>

	<cffunction name="test_all_tags_should_be_stripped">
		<cfset loc.e = loc.controller.stripTags(argumentcollection=loc.args)>
		<cfset loc.r = "thisisa test tosee if this works or not.">
		<cfset assert("loc.e eq loc.r")>
	</cffunction>

</cfcomponent>