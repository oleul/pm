<script type="text/javascript" src="${rc.contextPath}/js/all/expences.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#edate").datepicker();
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
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Expences Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="60px" class="boxtdloginleft"></td>
					<td width="30%" height="60px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Description</span></td>
	        <td width="60%" height="60px" bgcolor="#FCFEFD">
	        	<textarea rows="2" cols="30" id="desc" name="desc"></textarea>
	        	<span class="error"></span>
	        </td>
					<td width="5%" height="60px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Account</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD">
				  	<select id="IDaccount" onchange="">
				  		<option value="-1"></option>
						  <#list account as acc>
						  	<option value="${acc.id}">${acc.accountDesc!''}</option>
						  </#list>
						</select>
				  	<span class="error"></span>
				  </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Amount</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="amount" name="amount"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">date</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="edate" name="edate"/><span class="error"></span></td>
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
        		<input type ="hidden" name="expenceid" id="expenceid" value ="-1"/>
        		<input type ="button" value =" New  " class="new_submit" onclick="clearForm();"/>
        		<input type ="button" value =" Save " id="btnSave" class="new_submit" disabled="disabled" onclick="insert('${rc.contextPath}','NEW');"/>
        		<input type ="button" value ="Update" class="new_submit" onclick="insert('${rc.contextPath}','UPDATE');"/>
        		<input type ="button" value ="Delete" class="new_submit" onclick="insert('${rc.contextPath}','DELETE');"/>
        		
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
			        				<td>Expences Id</td>
			        				<td>Description</td>
			        				<td>amount</td>
			        				<td>Date</td>
			        			</thead>
			        			<#list expList as exp>
			        			<#assign clsName=""/>
		        				<#if (exp_index % 2==0)>
		        					<#assign clsName="normalEven"/>
		        				<#else>
		        					<#assign clsName="normalOdd"/>
		        				</#if>
			        			<tr id="ex${exp.id}" onclick="showExpence('${exp.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
			        				<td>${exp.id}</td>
			        				<td>${exp.description}</td>
			        				<td>${exp.amount}</td>
			        				<td>${exp.expDate}
			    							<input type ="hidden" name="expid${exp.id}" id="expid${exp.id}" value ="${exp.id}"/>
			    							<input type ="hidden" name="expdesc${exp.id}" id="expdesc${exp.id}" value ="${exp.description}"/>
			    							<input type ="hidden" name="expamount${exp.id}" id="expamount${exp.id}" value ="${exp.amount}"/>
			    							<input type ="hidden" name="expDate${exp.id}" id="expDate${exp.id}" value ="${exp.expDate}"/>
			    							<#if exp.isCheck>
			    								<input type ="hidden" name="expisChk${exp.id}" id="expisChk${exp.id}" value ="2"/>
			    							<#else>
			    								<input type ="hidden" name="expisChk${exp.id}" id="expisChk${exp.id}" value ="1"/>
			    							</#if>
			    							<input type ="hidden" name="expbname${exp.id}" id="expbname${exp.id}" value ="${exp.bankName}"/>
			    							<input type ="hidden" name="expcheckNo${exp.id}" id="expcheckNo${exp.id}" value ="${exp.checkNo}"/>
			    							<input type ="hidden" name="expchkDate${exp.id}" id="expchkDate${exp.id}" value ="${exp.checkDate}"/>
			    							<input type ="hidden" name="expAcc${exp.id}" id="expAcc${exp.id}" value ="${exp.account.id}"/>
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