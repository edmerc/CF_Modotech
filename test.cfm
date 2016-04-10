<!--- nuthin but tests --->

<cfset user = entityLoad( "users", session.userID )>

<cfdump var="#user#"/>