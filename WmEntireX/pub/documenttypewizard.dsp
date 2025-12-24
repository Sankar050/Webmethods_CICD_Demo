<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Create Document Type / Metadata from Adabas File</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/documenttypewizard.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	<table width="100%">
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt; EntireX Adapter &gt; Create Document Type / Metadata</td>
	  </tr>
    </table>
    
	%ifvar action equals('Create')%
	%invoke com.softwareag.entirex.wmadapter.Admin:createDocumentType%
	  %value message%
	  %onerror%
			<table width="100%">
	    <HR><P><FONT COLOR="#FF0000">
	    	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
	    </FONT></P><HR>
	    </table>
	  %endinvoke%
	%end%
	
	<td>  
 	  <form action="documenttypewizard.dsp" method="post">
	    <table class="tableForm" width="100%">
	      <tr>
					<td class="heading" colspan="2">Global Format Buffer</td>
	      </tr>
	    	<tr>
					<td class="evenrow-l" width="20%">Name</td>
					<td class="evenrow-l"><input name="gfftname" value="%value gfftname%"></input></td>
	      </tr>
	    </table>
	    <table class="tableForm" width="100%">
	      <tr>
					<td class="heading" colspan="2">Source</td>
	      </tr>
	      <tr><td class="subheading" colspan=2>Replication System File</td></tr>
	      <tr>
					<td class="evenrow-l" width="20%">Node</td>
					<td class="evenrow-l"><input name="node" value="%value node%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Port</td>
					<td class="evenrow-l"><input name="port" value="%value port%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Database Number</td>
					<td class="evenrow-l"><input name="dbid" value="%value dbid%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">File Number</td>
					<td class="evenrow-l"><input name="fnr" value="%value fnr%"></input></td>
	      </tr>
	      <tr>
					<td class="subheading" colspan="2">SYSRPTR Unload File</td>
	      </tr>
	      <tr>
					<td class="evenrow-l" width="20%">File Name</td>
					<td class="evenrow-l"><input size=100 name="filename" value="%value filename%"></input></td>
	      </tr>
	    </table>
	    <table class="tableForm" width="100%">
	      <tr>
					<td class="heading" colspan="2">Target</td>
	      </tr>
	      <tr>
					<td class="subheading" colspan="2">Generate Document Type</td>
	      </tr>
	      <tr>
					<td class="evenrow-l" width="20%">Package</td>
					<td class="evenrow-l"><input name="package" value="%value package%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Folder</td>
					<td class="evenrow-l"><input name="folder" value="%value folder%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Generate Document Type</td>
					<td class="evenrow-l"><select name="gendoc">
							<OPTION value="false" selected>false</OPTION>
							<OPTION value="true"> true</OPTION>
						</select>
					</td>
	      </tr>
	      <tr>
					<td class="subheading" colspan="2">Generate Metadata</td>
	      </tr>
	      <tr>
					<td class="evenrow-l" width="20%">Connection</td>
					<td class="evenrow-l"><input name="connection" value="%value connection%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Table Name</td>
					<td class="evenrow-l"><input name="tablename" value="%value tablename%"></input></td>
	      </tr>
	      <tr>
					<td class="evenrow-l">Generate Metadata</td>
					<td class="evenrow-l"><select name="genmeta">
							<OPTION value="false" selected>false</OPTION>
							<OPTION value="true"> true</OPTION>
						</select>
					</td>
	      </tr>
	      <tr>
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