<html><title>Updates and Live Feed</title></html>
<cfform name="form1" action="callstock.cfm">
	<cfinput name="text_1" required="true">&nbsp;
	<cfinput name="b1" type="submit" value="Get Stock Quote" >
</cfform>

<cfhttp url="http://www.thehindu.com/news/cities/delhi/?service=rss" method="get" result="newsfeed">
</cfhttp>
<hr>
<div style="background: black; color: white;">
	<p><b>Delhi News - Live </b></p><br>
<cfscript>
	record=DeserializeXML(newsfeed.FileContent);
	writeOutput(record.rss.channel.item[1].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[2].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[3].title.xmlText & "   |   ");
</cfscript>
</div>

<cfhttp url="http://www.espn.com/espn/rss/news" method="get" result="newsfeed">
</cfhttp>
<hr>
<div style="background: green; color: white; ">
		<p><b>ESPN Sports News - Live</b> </p><br>
<cfscript>
	record=DeserializeXML(newsfeed.FileContent);
	writeOutput(record.rss.channel.item[1].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[2].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[3].title.xmlText & "   |   ");
</cfscript>
</div>

<cfhttp url="https://www.theguardian.com/world/rss" method="get" result="newsfeed">
</cfhttp>
<hr>
<div style="background: blue; color: white;">
	<p><b> The Guardian - World News Live</b> </p><br>
<cfscript>
	record=DeserializeXML(newsfeed.FileContent);
	writeOutput(record.rss.channel.item[1].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[2].title.xmlText & "   |   ");
	writeOutput(record.rss.channel.item[3].title.xmlText & "   |   ");
</cfscript>
</div>

