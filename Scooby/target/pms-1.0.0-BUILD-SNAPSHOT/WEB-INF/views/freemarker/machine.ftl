<script type="text/javascript" src="${rc.contextPath}/js/all/machine.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#purDate").datepicker();
		jQuery("#cdate").datepicker();
		
		jQuery("#IDcashbank").val("Cash");
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
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Machine Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Machine Type</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD">
	        	<select id="mchtype">
						  <option value="-1"></option>
						  <#list types as type>
						  <option value="${type.id}">${type.typeName}</option>
						  </#list>
						</select>
	        	<span class="error"></span>
	        </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Description</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="description" name="description"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Machine Model</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="model" name="model"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Machine Status</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD">
				  	<select id="IDstatus">
						  <option value="0">Active</option>
						  <option value="1">Inactive</option>
						</select>
				  	<span class="error"></span>
				  </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Machine Price</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="price" name="price"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Others Cost</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="cost" name="cost"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">No Of Machine</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="nofMachine" name="nofMachine"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Purchase Date</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="purDate" name="purDate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Cash or Bank</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD">
				  	<select id="IDcashbank" onchange="showBankDetail();">
						  <option value="1">Cash</option>
						  <option value="2">Check</option>
						</select>
				  	<span class="error"></span>
				  </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr id="trBankName" style="display:none">
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Bank Name</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="bankName" name="bankName"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr id="trCheckNo" style="display:none">
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Check No</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="checkno" name="checkno"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr id="trCheckDate" style="display:none">
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Check date</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="cdate" name="cdate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<input type ="hidden" name="mchid" id="mchid" value ="-1"/>
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
			        				<td>Machine Id</td>
			        				<td>Description</td>
			        				<td>Model</td>
			        				<td>Purchase Date</td>
			        			</thead>
			        			<#list machines as machine>
			        			<#assign clsName=""/>
		        				<#if (machine_index % 2==0)>
		        					<#assign clsName="normalEven"/>
		        				<#else>
		        					<#assign clsName="normalOdd"/>
		        				</#if>
			        			<tr id="mch${machine.id}" onclick="showMachine('${machine.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
			        				<td>${machine.id}</td>
			        				<td>${machine.description}</td>
			        				<td>${machine.modelNo}</td>
			        				<td>${machine.purDate}
			    							<input type ="hidden" name="mchid${machine.id}" id="mchid${machine.id}" value ="${machine.id}"/>
			    							<input type ="hidden" name="mchdesc${machine.id}" id="mchdesc${machine.id}" value ="${machine.description}"/>
			    							<input type ="hidden" name="mchtype${machine.id}" id="mchtype${machine.id}" value ="${machine.typeId}"/>
			    							<input type ="hidden" name="mchModel${machine.id}" id="mchModel${machine.id}" value ="${machine.modelNo}"/>
			    							<#if machine.status>
			    								<input type ="hidden" name="mchStatus${machine.id}" id="mchStatus${machine.id}" value ="0"/>
			    							<#else>
			    								<input type ="hidden" name="mchStatus${machine.id}" id="mchStatus${machine.id}" value ="1"/>
			    							</#if>
			    							<input type ="hidden" name="mchPrice${machine.id}" id="mchPrice${machine.id}" value ="${machine.price}"/>
			    							<input type ="hidden" name="mchCost${machine.id}" id="mchCost${machine.id}" value ="${machine.otherCost}"/>
			    							<input type ="hidden" name="mchPdate${machine.id}" id="mchPdate${machine.id}" value ="${machine.purDate}"/>
			    							
			    							<#if machine.isCheck>
			    								<input type ="hidden" name="mchisChk${machine.id}" id="mchisChk${machine.id}" value ="2"/>
			    							<#else>
			    								<input type ="hidden" name="mchisChk${machine.id}" id="mchisChk${machine.id}" value ="1"/>
			    							</#if>
			    							<input type ="hidden" name="mchbname${machine.id}" id="mchbname${machine.id}" value ="${machine.bankName}"/>
			    							<input type ="hidden" name="mchcheckNo${machine.id}" id="mchcheckNo${machine.id}" value ="${machine.checkNo}"/>
			    							<input type ="hidden" name="mchchkDate${machine.id}" id="mchchkDate${machine.id}" value ="${machine.checkDate}"/>
			    							
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