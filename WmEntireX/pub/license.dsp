<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Settings</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/license.dsp?adapterTypeName=WEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
	<!--
	If DSP was requested from the Save button
	then invoke the setProperties service.

	%ifvar action equals('Save')%
	  %invoke com.softwareag.entirex.wmadapter.License:setProperties%
	  %endinvoke%
	%endifvar%
	
	%ifvar reptorAction equals('Save')%
	  %invoke com.softwareag.entirex.wmadapter.License:setReptorProperties%
	  %endinvoke%
	%endifvar%
	-->
	%invoke com.softwareag.entirex.wmadapter.License:getProperties%
	
	
	<table width="100%">
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt; EntireX Adapter &gt; License Information</td>
	  </tr>
      <tr>
		<td colspan="4">
		<ul>
			<li><a
				href="editexxlicense.dsp?adapterTypeName=WmEntireX&amp;action=Edit">
			Change EntireX License File</a></li>
		</ul>
		</td>
	  </tr>
    </table>
	
	

	<table class="tableView">
		<tr>
			<td class="heading" colspan=2>EntireX License Information</td>
		</tr>
		%ifvar licenseErrormessage -notempty%
			<tr>
				<script>writeTD('row');</script>
				Error Message:
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value licenseErrormessage%
				</td>
			</tr>
		%else%
			<tr>
				<script>writeTD('row');</script>
				Valid until
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value expires%
				</td>
			</tr>
		%endifvar%
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for connections to IMS Connect
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value imsLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for connections to CICS
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value cicsLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for Direct RPC connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value directRpcLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for COBOL Converter connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value cobolConverterLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for AS/400 connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value cicsLicense%
			</td>
		</tr>
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for EntireX Broker connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value brokerRpcLicense%
			</td>
		</tr>
	</table>
	
   <table width="100%">
	<tr>
		<td>
		<ul>
			<li><a
				href="editreptorlicense.dsp?adapterTypeName=WmEntireX">
			Change Adabas Replication License File</a></li>
		</ul>
		</td>
	</tr>
    </table>
	<table class="tableView">
		<tr>
			<td class="heading" colspan=2>Adabas Replication License Information</td>
		</tr>
		%ifvar reptorLicenseErrormessage -notempty%
			<tr>
				<script>writeTD('row');</script>
				Error Message:
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value reptorLicenseErrormessage%
				</td>
			</tr>
		%else%
			<tr>
				<script>writeTD('row');</script>
				Valid until
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				%value reptorExpires%
				</td>
			</tr>
		%endifvar%
		<tr>
			<script>writeTDWidth('row', '25%');</script>
			License for Adabas Replication connections
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			%value reptorLicense%
			</td>
		</tr>
	</table>
	%endinvoke%
	</body>
</html>