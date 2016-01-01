<script type="text/javascript" src="${rc.contextPath}/js/all/shareholder.js"></script>
<script type="text/javascript">
	jQuery(function() {
		jQuery( "#cdate" ).datepicker();
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
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Share Holder Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">First name</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD">
	        	<input type="text" id="fname" name="fname"/><span class="error"></span>
	        </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Last Name</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="lname" name="lname"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Address</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="address" name="address"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Phone</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="phone" name="phone"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Mobile</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="mobile" name="mobile"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Email</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="email" name="email"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Date</span></td>
				  <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="cdate" name="cdate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<input type ="hidden" name ="ownerid" id="ownerid" value ="-1"/>
        		<input type ="button" value =" New  " class="new_submit" onclick="clearForm();"/>
        		<input type ="button" value =" Save " class="new_submit" onclick="insert('${rc.contextPath}');"/>
        		<input type ="button" value ="Update" class="new_submit" onclick="insert('${rc.contextPath}');"/>
        		<input type ="button" value ="Delete" class="new_submit" onclick="softdelete('${rc.contextPath}');"/>
        	</td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="left">
						<div id="grid_show" style="display:none;cursor:pointer;margin:0;"
     					onclick="jQuery(this).hide('slow');jQuery('#shareinfo').show('slow');">
    					<img src="${rc.contextPath}/images/store/small/toggle-expand-dark.png" alt=""	title=""/>
    					<b>Add Share</b>
						</div>
						<fieldset id="shareinfo" style="margin:0;">
					    <legend style="cursor:pointer;"
					            onclick="jQuery(this).parent().hide('slow');jQuery('#grid_show').show('slow');">
					        <img src="${rc.contextPath}/images/store/small/toggle-collapse-dark.png" alt="" title=""/>
					        <b>Add Share</b>
					    </legend>
					    <table width="100%" border="0" cellspacing="3" cellpadding="0">
								<thead id="head">
									<td width="5%">Sl</td>
									<td width="10%">Amount</td>
									<td width="10%">Date</td>
									<td width="60%">Cash/Check</td>
									<td width="15%"><a style="cursor:pointer" href="javascript:addRow();"><img src="${rc.contextPath}/images/store/small/add_grid.png" alt="add row" title="add new share"/></a></td>
								</thead>
								<tbody id="shareAddBody">
								</tbody>
							</table>
						</fieldset>
					</td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="33" class="boxtdleftbottom"></td>
					<td colspan="2" width="90%" height="33" class="boxtdbottom" align="center"><span id="errorMsg" class="error"></span></td>
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
			        				<td>Owner Id</td>
			        				<td>Owner Name</td>
			        				<td>Owner Phone</td>
			        				<td>Owner Mobile</td>
			        				<td>Owner Email</td>
			        				<td>Join Date</td>
			        			</thead>
			        			<#list owners as owner>
			        				<#assign clsName=""/>
			        				<#if (owner_index % 2==0)>
			        					<#assign clsName="normalEven"/>
			        				<#else>
			        					<#assign clsName="normalOdd"/>
			        				</#if>
				        			<tr id="owner${owner.id}" onclick="show('${rc.contextPath}','${owner.id}');" class="${clsName}" onMouseOver="this.className='highlight'" onMouseOut="this.className='${clsName}'">
				        				<td>${owner.id}</td>
				        				<td>${owner.firstName!''}&nbsp;${owner.lastName!''}</td>
				        				<td>${owner.phone!''}</td>
				        				<td>${owner.mobile!''}</td>
				        				<td>${owner.email!''}</td>
				        				<td>${owner.createDate!''}</td>
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
		</div>
		<div id="demoRows" style="display:none">
			<table>
				<tbody>
					<tr>
						<td id="slno0"></td>
						<td id="am0"><input type="text" id="IDamount" style="text-align: right" onkeyup="textFieldValidation(this);"/></td>
						<td id="cb0">
							<select id="IDcashbank" onchange="showBankDetail(rowId);">
							  <option value="1">Cash</option>
							  <option value="2">Check</option>
							  <option value="3">Others</option>
							</select><br\>
							<table id="checkdetail" style="display:none" width="100%">
								<tr>
									<td id="bank"  width="50px">Bank Name<input type="text" id="IDbank" style="width:100px;"/><br\><span id='IDbankerr' class='error'></span></td>
								</tr>
								<tr>
									
									<td id="check" width="50%">Check No<input type="text" id="IDcheck" style="width:100px;"/><br\><span id='IDcheckerr' class='error'></span></td>
								</tr>
								<tr>
									
									<td id="checkdt" width="50%">Check Date<input type="text" id="IDcheckdt" style="width:100px;"/><br\><span id='IDcheckdterr' class='error'></span></td>
								</tr>
							</table>
							<table id="othersdetail" style="display:none" width="100%">
								<tr>
									<td id="accDesc"  width="50px">Others Details<input type="text" id="IDaccDesc" style="width:100px;"/><br\><span id='IDaccDescerr' class='error'></span></td>
								</tr>
							</table>
						</td>
						<td id="dt0">
							<input type="text" id="IDsdate"/>
						</td>
						<td id="btn0">
							<input id="IDaddbtn" type ="button" value ="Add" class="new_submit" onclick="addShare('${rc.contextPath}',rowId)"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div><br/><br/>