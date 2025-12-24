<?xml version='1.0'?>
<!--
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
					  '/share/xml/XHTML/dtds/xhtml1-transitional.dtd'>
-->
<html>
  <head>
	<title>WmEntireX - Application Monitoring</title>
	<meta http-equiv="Pragma" content="no-cache"></meta>
	<meta http-equiv="Expires" content="-1"></meta>
	<link rel="stylesheet" type="text/css" href="/WmRoot/webMethods.css"></link>
	<script type="text/javascript" src="/WmRoot/webMethods.js.txt"></script>
  </head>
  <body onLoad="setNavigation('/WmEntireX/appmonadmin.dsp?adapterTypeName=WmEntireX', '/WmEntireX/WmEntireXAdapterHelp.html');">
		
	%ifvar action equals('Save')%
		%ifvar actionedit equals('SaveMaxLines')%
	    %invoke pub.wmentirex.appmon:setMaxLines'%
			  %onerror%
				  <table width="100%">
				  <HR><P><FONT COLOR="#FF0000">
				  	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
				  </FONT></P><HR>
				  </table>
		  %endinvoke%
		%endifvar%

		%ifvar actionedit equals('SaveService')%
	    %invoke pub.wmentirex.appmon:setService'%
			  %onerror%
				  <table width="100%">
				  <HR><P><FONT COLOR="#FF0000">
				  	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
				  </FONT></P><HR>
				  </table>
		  %endinvoke%
		%endifvar%
	%endifvar%

	%ifvar actionedit equals('SaveCollectorID')%
    %invoke pub.wmentirex.appmon:setAppMonExternalCollectorID'%
		  %onerror%
			  <table width="100%">
			  <HR><P><FONT COLOR="#FF0000">
			  	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			  </FONT></P><HR>
			  </table>
	  %endinvoke%
	%endifvar%
	
	%ifvar action equals('UseInternalAppMonDC')%
		  %invoke pub.wmentirex.appmon:setUseInternalAppmonDC%
		  %endinvoke%
	%endifvar% 
		
	%ifvar action equals('UseFilesperday')%
		  %invoke pub.wmentirex.appmon:setFilesPerDay%
		  %endinvoke%
	%endifvar%
		
	%ifvar action equals('UseZero')%
		  %invoke pub.wmentirex.appmon:setUseZeroAsNullValue%
		  %endinvoke%
	%endifvar%
	
	%ifvar action equals('CreateFile')%
		  %invoke pub.wmentirex.appmon:setCreateFile%
		  %onerror%
			  <table width="100%">
			  <HR><P><FONT COLOR="#FF0000">
			  	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			  </FONT></P><HR>
			  </table>
		  %endinvoke%
	%endifvar%

	%ifvar action equals('AppMonEnabled')%
		  %invoke pub.wmentirex.appmon:setAppMonEnabled%
		  %onerror%
			  <table width="100%">
			  <HR><P><FONT COLOR="#FF0000">
			  	The Adapter could not process your request because the following error occurred:<br>%value errorMessage%
			  </FONT></P><HR>
			  </table>
		  %endinvoke%
	%endifvar%

	<!-- %ifvar action matches('Change*')% --> 
		  
	<table width="100%">
	  <tr>
	<td class="menusection-Adapters" colspan="2">Adapters &gt;
	  EntireX Adapter &gt; Application Monitoring &gt; Edit</td>
	  </tr>
	  <tr>
	<td colspan="2">
	  <ul>
		<li><a href="appmonadmin.dsp?adapterTypeName=WmEntireX">
		      Return to Application Monitoring</a></li>
	  </ul>
	</td>
	 </tr>
	<tr>
		<td>
		<form action="appmonadmin.dsp" method="post">
		<table class="tableForm">
			<tr>
				<td class="heading" colspan="2">Change Setting</td>
			</tr>
			<tr>
				%ifvar action equals('ChangeCollectorID')%
					<script>writeTD('row');</script>
					Application Monitoring Data Collector ID
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="appMonExternalCollectorID" value="%value appMonExternalCollectorID%" size="100"></input>
				%endifvar%
				%ifvar action equals('ChangeService')%
				  <script>writeTD('row');</script>
					Service to process KPI data 
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="service" value="%value service%" size="100"></input>
				%endifvar%
				%ifvar action equals('ChangeMaxLines')%
				  <script>writeTD('row');</script>
					Maximum number of lines per CSV file
					</td>
					<script>writeTD('rowdata-l');swapRows();</script>
					<input name="maxLines" value="%value maxLines%" size="100"></input>
				%endifvar%
				</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td class="action" colspan="2">
					<input type="hidden" name="adapterTypeName" value="WmEntireX"></input>
					<input type="submit" name="action" value="Save"></input>
				  %ifvar action equals('ChangeCollectorID')%
					  <input type="hidden" name="actionedit" value="SaveCollectorID"></input>
				  %endifvar%
				  %ifvar action equals('ChangeMaxLines')%
					  <input type="hidden" name="actionedit" value="SaveMaxLines"></input>
				  %endifvar%
				  %ifvar action equals('ChangeService')%
					  <input type="hidden" name="actionedit" value="SaveService"></input>
				  %endifvar%
					  <input type="submit" name="action" value="Cancel"></input>
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>

	<!-- %else% -->


	%invoke com.softwareag.entirex.wmadapter.DirectRPCAdmin:getAll%
	
	<table width="100%">
	<tr>
		<td class="menusection-Adapters" colspan="3">Adapters &gt;
		EntireX Adapter &gt; Application Monitoring</td>
	</tr>
	
	<td colspan="2">
	  <ul>
		<li><a href="appmonadmin.dsp">Refresh</a></li>
	  </ul>
	</td>
	
	<td class="padding">&nbsp;</td>
	
	<table width="80%" class="tableView">
		<tr>
			<td class="heading" colspan=3>Application Monitoring Configuration (for Direct RPC, IMS Connect, AS/400, and CICS)&nbsp;</td>
	  </tr>

		<tr>
			<script>writeTDWidth('row-l', '30%');</script>
			Application Monitoring
			</td>
			<script>writeTDWidth('rowdata-l', '50%');</script>
            %ifvar appMonEnabled equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTDWidth('rowdata-l', '20%');swapRows();</script>
          %ifvar appMonEnabled equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=AppMonEnabled&amp;appMonEnabled=false">Disable</a>
	        %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=AppMonEnabled&amp;appMonEnabled=true">Enable</a>
          %endif%
			</td>
		</tr>
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>
	
	<table width="80%" class="tableView">
		<tr>
			<td class="heading" colspan=3>Application Monitoring Data Collector ID</td>
	  </tr>
		<tr>
			<script>writeTDWidth('row-l', '30%');</script>
				ID of External Application Monitoring Data Collector
			</td>
    %ifvar useInternalAppMonDC equals('true')%		
			<script>writeTDWidth('rowdata-l', '50%');</script>
				- not used -
			</td>
			<script>writeTDWidth('rowdata-l', '20%');swapRows();</script>
					-
			</td>
		%else%
			<script>writeTDWidth('rowdata-l', '50%');</script>
				%value appMonExternalCollectorID%
			</td>
			<script>writeTDWidth('rowdata-l', '20%');swapRows();</script>
					<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeCollectorID&amp;appMonExternalCollectorID=%value appMonExternalCollectorID%">Change</a>
			</td>
	  %endif%
	  
		</tr>
  		<tr>
			<script>writeTDWidth('row-l');</script>
				ID of Internal Application Monitoring Data Collector
			</td>
			<script>writeTD('rowdata-l');</script>
       %ifvar useInternalAppMonDC equals('true')%		
				%value appMonInternalCollectorID%
			%else%
				- not used -
			%endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			    -	
			</td>
		</tr>
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>

	<table width="80%" class="tableView">
		<tr>
			<td class="heading" colspan=3>Internal Application Monitoring Data Collector Configuration</td>
		</tr>
				
		<tr>
			<script>writeTDWidth('row-l', '30%');</script>
			Use internal Application Monitoring Data Collector
			</td>
			<script>writeTDWidth('rowdata-l', '50%');</script>
            %ifvar useInternalAppMonDC equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTDWidth('rowdata-l', '20%');swapRows();</script>
          %ifvar useInternalAppMonDC equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseInternalAppMonDC&amp;useInternalAppMonDC=false">Disable</a>
	        %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseInternalAppMonDC&amp;useInternalAppMonDC=true">Enable</a>
          %endif%
			</td>
		</tr>


  %ifvar useInternalAppMonDC equals('true')%
		<tr>
			<script>writeTD('row-l');</script>
				Service to process KPI data
			</td>
			<script>writeTD('rowdata-l');</script>
				%value service%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeService&amp;service=%value service%">Change</a>
			</td>
		</tr>
				<tr>
			<script>writeTD('row-l');</script>
				Create CSV file
			</td>
			<script>writeTD('rowdata-l');</script>
            %ifvar createFile equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
         %ifvar createFile equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=CreateFile&amp;createFile=false">Disable</a>
	       %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=CreateFile&amp;createFile=true">Enable</a>
         %endif%
			</td>
		</tr>
		%ifvar createFile equals('true')%
		<tr>
			<script>writeTD('row-l');</script>
				 Maximum number of lines per CSV file
			</td>
			<script>writeTD('rowdata-l');</script>
				%value maxLines%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
			<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=ChangeMaxLines&amp;maxLines=%value maxLines%">Change</a>
			</td>
		</tr>
		<tr>
			<script>writeTD('row-l');</script>
				Use "0" as the null value for numeric KPI values
			</td>
			<script>writeTD('rowdata-l');</script>
            %ifvar useZeroAsNullValue equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
         %ifvar useZeroAsNullValue equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseZero&amp;useZeroAsNullValue=false">Disable</a>
	       %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseZero&amp;useZeroAsNullValue=true">Enable</a>
         %endif%
			</td>
		</tr>
				<tr>
			<script>writeTD('row-l');</script>
				Create a new CVS file every day
			</td>
			<script>writeTD('rowdata-l');</script>
            %ifvar filesPerDay equals('true')%
              Enabled
            %else%
              Disabled
            %endif%
			</td>
			<script>writeTD('rowdata-l');swapRows();</script>
         %ifvar filesPerDay equals('true')%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseFilesperday&amp;filesPerDay=false">Disable</a>
	       %else%
							<a href="appmonadmin.dsp?adapterTypeName=WmEntireX&amp;action=UseFilesperday&amp;filesPerDay=true">Enable</a>
         %endif%
			</td>
		</tr>
  %endif%
  %endif%
		
	</table>
	</td>
	</table>
  <TR><TD>&nbsp;</TD></TR>
  
	
	<td class="padding">&nbsp;</td>
	
	%endinvoke%

	
	<!-- %endifvar% -->
	
	</body>
</html>