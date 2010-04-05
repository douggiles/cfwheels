<cfcomponent extends="wheelsMapping.Controller">

	<cfset user = model("user").findOne(where="lastname = 'petruzzi'")>

</cfcomponent>