<!-- This application calls a REST API and then plots a line graph -->
<cfhttp url="https://www.quandl.com/api/v3/datasets/OPEC/ORB.json?api_key=KGzqJGg3wgxAbxyvJ5nW" method="get" result="httpResp" timeout="120">
    <cfhttpparam type="header" name="Content-Type" value="application/json" />
</cfhttp>
<cfscript>
       // Deserialize JSON data    
       record=DeserializeJSON(httpResp.FileContent, true, false);
       
       myarray=record.dataset.data;
       n=arraylen(myarray);
       // datearray stores dates
       for (i=1;i<=n;i++){
             datearray[i]=myarray[i][1];
       }

       // pricearray stores Crude oil price
       for (i=1;i<=n;i++){
             pricearray[i]=myarray[i][2];
       }
       
</cfscript>
<cfchart format="flash" chartwidth="950" chartheight="500" title="OPEC Crude Oil Price">
	<cfchartseries type="Line" seriescolor="green" serieslabel="Price trends" label="OPEC Crude Oil Price">
       <cfloop index="i" from="#n#" to="1" step="-1">
        <cfchartdata item="#datearray[i]#" value="#pricearray[i]#">
      </cfloop>
      </cfchartseries>   
</cfchart>

