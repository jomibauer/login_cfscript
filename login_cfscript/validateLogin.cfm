<!--- check userid and password.  If correct go to welcome passing the userid in the URL --->
<cfscript>
if (isDefined("form.userid") AND form.userid EQ "test"){
    if (isDefined("form.password") AND form.password EQ "test"){
        <!--- example of an application server driven passing of a variable in the URL --->
        location("welcome.cfm?passeduserid=#form.userid#")
	}
}
</cfscript>
<!--- If userid or password is not defined or not correct then go back to login passing the errormessage in the URL--->
<cflocation url="index.cfm?errormessage=Your login information was incorrect please try again">