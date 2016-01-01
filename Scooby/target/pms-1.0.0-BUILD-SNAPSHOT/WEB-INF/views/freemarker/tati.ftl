<script type="text/javascript" src="${rc.contextPath}/js/all/tati.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#jdate").datepicker();
		
	});
	</script>
	
	
<div id="ahr_content"> 
	<div id="ahr_content_top"></div>
	<div id="ahr_content_wrap">
	
		<#--Page Content Start from Here-->
		<div id="formPannel">
			<table width="75%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="5%" height="33" class="boxtdlefttop"></td>
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Tati Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Tati Name</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="tname" name="tname"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Tati Address</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="tadd" name="tadd"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Mobile No</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="tmobile" name="tmobile"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Join Date</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="jdate" name="jdate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Status</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD">
	        	<select id="status" name="status">
	        		<option value="1">Active</option>
	        		<option value="0">Not Active</option>
	        	</select>
	        	<span class="error"></span>
	        </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<input type ="hidden" name="tatiid" id="tatiid" value ="-1"/>
        		<input type ="button" value =" New  " class="new_submit" onclick="clearForm()"/>
        		<input type ="button" value =" Save " class="new_submit" onclick="insert('${rc.contextPath}','NEW');"/>
        		<input type ="button" value ="Update" class="new_submit" onclick="insert('${rc.contextPath}','UPDATE');"/>
        		<input type ="button" value ="Delete" class="new_submit" onclick="deleteUser('${rc.contextPath}');"/>
        		
        	</td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="33" class="boxtdleftbottom"></td>
					<td colspan="2" width="90%" height="33" class="boxtdbottom"></td>
					<td width="5%" height="33" class="boxtdrightbottom"></td>
				</tr>
			</table>
		</div><br /><div id="msgRes"></div>
		<div id="panelList">
			<table width="75%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="5%" height="33" class="boxtdlefttop"></td>
	        <td width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Tati List</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<table  width="100%" border="1" cellspacing="0" cellpadding="0">
        			<tr>
        				<td>
			        		<table  width="100%" border="0" cellspacing="0" cellpadding="0">
			        			<thead id="head">
			        				<td>Tati Id</td>
			        				<td>Tati Name</td>
			        				<td>Tati Address</td>
			        				<td>Mobile No</td>
			        				<td>status</td>
			        			</thead>
			        			<#list tatis as tati>
			        				<#assign clsName=""/>
			        				<#if (tati_index % 2==0)>
			        					<#assign clsName="normalEven"/>
			        				<#else>
			        					<#assign clsName="normalOdd"/>
			        				</#if>
				        			<tr id="tat${tati.id}" onclick="showTati('${tati.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
				        				<td>${tati.id}</td>
				        				<td>${tati.name}</td>
				        				<td>${tati.address}</td>
				        				<td>${tati.mobile}</td>
				        				<td><#if tati.status>Active
				        							<input type ="hidden" name="tatstatus${tati.id}" id="tatstatus${tati.id}" value ="1"/>
				        						<#else>Not Active
				        							<input type ="hidden" name="tatstatus${tati.id}" id="tatstatus${tati.id}" value ="0"/>
				        						</#if>
				        					<input type ="hidden" name="tatid${tati.id}" id="tatid${tati.id}" value ="${tati.id}"/>
				    							<input type ="hidden" name="tatjdate${tati.id}" id="tatjdate${tati.id}" value ="${tati.joinDate}"/>
				    							<input type ="hidden" name="tatname${tati.id}" id="tatname${tati.id}" value ="${tati.name}"/>
				    							<input type ="hidden" name="tataddress${tati.id}" id="tataddress${tati.id}" value ="${tati.address}"/>
				    							<input type ="hidden" name="tatmobile${tati.id}" id="tatmobile${tati.id}" value ="${tati.mobile}"/>
				    						</td>
				        			</tr>
			        			</#list>
			        		</table>
			        	</td>
			        </tr>
			    	</table>	
        	</td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="33" class="boxtdleftbottom"></td>
					<td width="90%" height="33" class="boxtdbottom"></td>
					<td width="5%" height="33" class="boxtdrightbottom"></td>
				</tr>
			</table>
		</div><br/><br/>