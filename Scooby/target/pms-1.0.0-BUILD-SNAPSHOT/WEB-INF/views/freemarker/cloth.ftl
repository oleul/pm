<script type="text/javascript" src="${rc.contextPath}/js/all/cloth.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#pdate").datepicker();
		
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
	        <td colspan="2" width="90%" height="33" align="center" class="boxtdtop"><font face="Georgia, Times New Roman, Times, serif" size="+1" >Cloth Production Entry Form</font> </td>
					<td width="5%" height="33" class="boxtdrighttop"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Date</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="pdate" name="pdate"/><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Cloth Quantity</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD"><input type="text" id="cqty" name="cqty" style="text-align:right;"  onkeyup="textFieldValidationDouble(this);"/><span>&nbsp&nbspYard</span><span class="error"></span></td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Tati</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD">
	        	<select id="tid" name="tid">
	        		<option value="-1"></option>
	        		<#list tatis as tati>
	        			<option value="${tati.id}">${tati.id}&nbsp-&nbsp${tati.name}</option>
	        		</#list>
	        	</select>
	        	<span class="error"></span>
	        </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
					<td width="30%" height="30px" bgcolor="#FCFEFD" align="right"><span style="padding-right:10px;">Machine</span></td>
	        <td width="60%" height="30px" bgcolor="#FCFEFD">
	        	<select id="mid" name="mid">
	        		<option value="-1"></option>
	        		<#list machines as machine>
	        			<option value="${machine.id}">${machine.id}&nbsp-&nbsp${machine.description}</option>
	        		</#list>
	        	</select>
	        	<span class="error"></span>
	        </td>
					<td width="5%" height="30px" class="boxtdloginright"></td>
				</tr>
				<tr>
					<td width="5%" height="30px" class="boxtdloginleft"></td>
        	<td colspan="2" width="90%" height="30px" bgcolor="#FCFEFD" align="center">
        		<input type ="hidden" name="productionid" id="productionid" value ="-1"/>
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