<script type="text/javascript" src="${rc.contextPath}/js/all/fiber.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#purDate").datepicker();
		jQuery("#cdate").datepicker();
		
	});
	</script>
	
	

<#function total x y>
  <#return (x * y)>
</#function>

<div id="ahr_content"> 
	<div id="ahr_content_top"></div>
	<div id="ahr_content_wrap">
	
		<#--Page Content Start from Here-->
		<div id="formPannel">
			<table width="75%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="5%" height="33" class="boxtdlefttop"></td>
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Suta Purchase Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Purchase Date</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="purDate" name="purDate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Name</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="name" name="name"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Saler Company Name</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="descrip" name="descrip"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Reference</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="ref" name="ref"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Quantity</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="qty" name="qty" onkeyup="textFieldValidation(this);" onBlur="calculateTotal();"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Rate</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="rate" name="rate" onkeyup="textFieldValidation(this);" onBlur="calculateTotal();"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Total Amount</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="total" name="total"/><span class="error"></span></td>
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
        		<input type ="hidden" name="fiberid" id="fiberid" value ="-1"/>
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
			        				<td>Purchase Date</td>
			        				<td>Name</td>
			        				<td>Reference</td>
			        				<td>Quantity</td>
			        				<td>Rate</td>
			        				<td>Total</td>
			        			</thead>
			        			<#list fibers as fiber>
			        			<#assign clsName=""/>
		        				<#if (fiber_index % 2==0)>
		        					<#assign clsName="normalEven"/>
		        				<#else>
		        					<#assign clsName="normalOdd"/>
		        				</#if>
			        			<tr id="fib${fiber.id}" onclick="showFiber('${fiber.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
			        				<td>${fiber.purDate}</td>
			        				<td>${fiber.name}</td>
			        				<td>${fiber.reference}</td>
			        				<td>${fiber.quantity}</td>
			        				<td>${fiber.rate}</td>
			        				<td>${total(fiber.quantity , fiber.rate)}
			    							<input type ="hidden" name="fibid${fiber.id}" id="fibid${fiber.id}" value ="${fiber.id}"/>
			    							<input type ="hidden" name="fibpdate${fiber.id}" id="fibpdate${fiber.id}" value ="${fiber.purDate}"/>
			    							<input type ="hidden" name="fibname${fiber.id}" id="fibname${fiber.id}" value ="${fiber.name}"/>
			    							<input type ="hidden" name="fibref${fiber.id}" id="fibref${fiber.id}" value ="${fiber.reference}"/>
			    							<input type ="hidden" name="fibqty${fiber.id}" id="fibqty${fiber.id}" value ="${fiber.quantity}"/>
			    							<input type ="hidden" name="fibrate${fiber.id}" id="fibrate${fiber.id}" value ="${fiber.rate}"/>
			    							<#if fiber.isCheck>
			    								<input type ="hidden" name="fiberisChk${fiber.id}" id="fiberisChk${fiber.id}" value ="2"/>
			    							<#else>
			    								<input type ="hidden" name="fiberisChk${fiber.id}" id="fiberisChk${fiber.id}" value ="1"/>
			    							</#if>
			    							<input type ="hidden" name="fiberbname${fiber.id}" id="fiberbname${fiber.id}" value ="${fiber.bankName}"/>
			    							<input type ="hidden" name="fibercheckNo${fiber.id}" id="fibercheckNo${fiber.id}" value ="${fiber.checkNo}"/>
			    							<input type ="hidden" name="fiberchkDate${fiber.id}" id="fiberchkDate${fiber.id}" value ="${fiber.checkDate}"/>						
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