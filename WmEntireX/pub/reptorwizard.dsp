<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Adabas Replication Wizard</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/reptorwizard.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	<table width="100%">
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt; EntireX Adapter &gt; Adabas Replication Wizard</td>
	  </tr>
    </table>
    
	%ifvar action equals('Create')%
	  %invoke com.softwareag.entirex.wmadapter.Admin:createReptorObjects%
	  %value message%
	  %onerror%
			<table width="100%">
	    <HR><P><FONT COLOR="#FF0000">
	    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
	    </FONT></P><HR>
	    </table>
	  %endinvoke%
	%end%
    
	%invoke com.softwareag.entirex.wmadapter.Admin:getReptorConnections%
	<td>  
 	  <form action="reptorwizard.dsp" method="post">
	    <table class="tableForm">
	      <tr>
			<td class="heading" colspan="2">Adabas Replication Wizard</td>
	      </tr>
	      <tr>
		<td class="oddrow-l">Select Connection</td>
				<td class="oddrow-l"><select name="connection">
                  %loop connections%
 					<OPTION value="%value connalias% %value packageName%"> %value connalias%</OPTION>
		          %end%
				</select></td>
	      <tr>
				<td class="evenrow-l">Listener Name</td>
				<td class="evenrow-l"><input name="listenername" value="%value listenername%"></input></td>
		  <tr>
				<td class="evenrow-l">Document Types</td>
				<td class="evenrow-l"><input name="doctype" value="%value doctype%"></input></td>
	      </tr>
		<td class="action" colspan="2">
		  <input type="hidden" name="adapterTypeName" value="WmEntireX"></input>
		  <input type="submit" name="action" value="Create"></input>
		</td>
	      </tr>
	    </table>
	  </form>
	</td>
    %endinvoke%
  </body>
</html>