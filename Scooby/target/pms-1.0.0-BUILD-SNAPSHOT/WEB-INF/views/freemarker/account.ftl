<script type="text/javascript" src="${rc.contextPath}/js/all/accounts.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		
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
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Account Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="60px" class="boxtdloginleft"></td>
					<td width="30%" height="60px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Account Name</span></td>
	        <td width="60%" height="60px" bgcolor="#FCFEFD"><input type="text" id="accName" name="accName"/><span class="error"></span>
	        </td>
					<td width="5%" height="60px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Account Description</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="accDesc" name="accDesc"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<input type ="hidden" name="accId" id="accId" value ="-1"/>
        		<input type ="hidden" name="accDate" id="accDate" value =""/>
        		<input type ="button" value =" New  " class="new_submit" onclick="clearForm();"/>
        		<input type ="button" value =" Save " id="btnSave" class="new_submit" disabled="disabled" onclick="insert('${rc.contextPath}','NEW');"/>
        		<input type ="button" value ="Update" class="new_submit" onclick="insert('${rc.contextPath}','UPDATE');"/>
        		<#--<input type ="button" value ="Delete" class="new_submit" onclick="insert('${rc.contextPath}','DELETE');"/>-->
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
	        <td width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >User List</font> </td>
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
			        				<td>Account Id</td>
			        				<td>Account Name</td>
			        				<td>Account Desc</td>
			        				<td>Date</td>
			        			</thead>
			        			<#list account as acc>
			        			<#assign clsName=""/>
		        				<#if (acc_index % 2==0)>
		        					<#assign clsName="normalEven"/>
		        				<#else>
		        					<#assign clsName="normalOdd"/>
		        				</#if>
			        			<tr id="acc${acc.id}" onclick="showExpence('${acc.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
			        				<td>${acc.id}</td>
			        				<td>${acc.accountName}</td>
			        				<td>${acc.accountDesc}</td>
			        				<td>${acc.createDate}
			    							<input type ="hidden" name="accId${acc.id}" id="accId${acc.id}" value ="${acc.id}"/>
			    							<input type ="hidden" name="accName${acc.id}" id="accName${acc.id}" value ="${acc.accountName}"/>
			    							<input type ="hidden" name="accDesc${acc.id}" id="accDesc${acc.id}" value ="${acc.accountDesc}"/>
			    							<input type ="hidden" name="accDate${acc.id}" id="accDate${acc.id}" value ="${acc.createDate}"/>
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