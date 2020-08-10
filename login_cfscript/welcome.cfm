<!--- if user has not logged in send back to login screen --->
<cfscript>
if (NOT isDefined("url.passeduserid")){
    location("index.cfm?errormessage=Please login first")
}
</cfscript>

<cfoutput>
    Welcome #url.passeduserid#!<br>
    
</cfoutput>

<p>
    Click 
    <a href="index.cfm?errormessage=Links can be used to pass variables around.  Mostly used to pass database record id's when a user clicks on one of many items in a list.">
        here
    </a>
    to see an example of a user driven passing of a URL variable
</p>
OR
<p>
    Click 
    <a href="index.cfm?errormessage=You chose the second link">
        here
    </a>
    to see an example of a user driven passing of a URL variable
</p>