<cfcomponent extends="wheelsMapping.Model">

	<cffunction name="init">
		<cfset belongsTo(name="photogallery", modelName="photogallery", foreignKey="photogalleryid")>
	</cffunction>

</cfcomponent>