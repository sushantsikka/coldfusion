<cfhttp url="http://dev.markitondemand.com/MODApis/Api/v2/Quote?symbol=#form.text_1#" method="get" result="httpResp2">
<cfhttpparam type="header" name="Content-Type" value="application/xml" />
</cfhttp>
<br>
<div style="background: black;
		color: white;
		font-size: 125%;">
<cfscript>
	 record=DeserializeXML(httpResp2.FileContent);
	 writeOutput("Name   : ");
     writeOutput(record.StockQuote.Name & "  |  ");
     writeOutput("Symbol   : ");
     writeOutput(record.StockQuote.Symbol & "  |  ");
     writeOutput("LastPrice   : ");  
     writeOutput(record.StockQuote.LastPrice & "  |  ");
     writeOutput("High   : ");
     writeOutput(record.StockQuote.High & "  |  ");
     writeOutput("Low   : ");
     writeOutput(record.StockQuote.Low & "  |  ");
     writeOutput("Open   : ");
     writeOutput(record.StockQuote.Open);
</cfscript>
</div>
<title>Stock Quote</title>
