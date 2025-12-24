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
	  <tr>
		<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  	EntireX Adapter &gt; License Information &gt; Edit</td>
	  </tr>
	  <tr>
		<td colspan="2">
		  <ul>
			<li><a href="license.dsp?adapterTypeName=WmEntireX">
		      Return to License Information</a></li>
	  	  </ul>
		</td>
	  </tr>
	  <tr>
		<td>
		<form action="license.dsp" method="post">
		<table class="tableForm">
			<tr>
				<td class="heading" colspan="2">Adabas Replication License Information</td>
			</tr>
			<tr>
				<script>writeTD('row');</script>
				License File Location (Folder and File)
				</td>
				<script>writeTD('rowdata-l');swapRows();</script>
				<input name="licenseFilename" value="%value licenseFilename%"
					size="100"></input>
				</td>
			</tr>
			<tr>
				<td class="action" colspan="2">
					<input type="hidden" name="adapterTypeName" value="WmEntireX"></input>
					<input type="submit" name="reptorAction" value="Save"></input>
					<input type="submit" name="reptorAction" value="Cancel"></input>
				</td>
			</tr>
		</table>
		</form>
		</td>
	  </tr>	</body>
</html>