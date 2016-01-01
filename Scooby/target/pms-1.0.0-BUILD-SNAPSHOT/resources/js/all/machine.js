function clearForm(){
	jQuery('#mchid').val('-1');
	jQuery('#mchtype').val('');
	jQuery('#description').val('');
	jQuery('#model').val('');
	jQuery('#IDstatus').val('Active');
	jQuery('#price').val('');
	jQuery('#cost').val('');
	jQuery('#nofMachine').val('');
	jQuery('#purDate').val('');
	jQuery('#IDcashbank').val('Cash');
	jQuery('#bankName').val('');
	jQuery('#checkno').val('');
	jQuery('#cdate').val('');
	
	document.getElementById("btnSave").disabled = false;
	showBankDetail();
}

function showBankDetail(){
	var cashbank = jQuery('#IDcashbank').val();
	if(cashbank == 1){
		jQuery('#trBankName').hide();
		jQuery('#trCheckNo').hide();
		jQuery('#trCheckDate').hide();
	} else{
		jQuery('#trBankName').show();
		jQuery('#trCheckNo').show();
		jQuery('#trCheckDate').show();
	}
}

function showMachine(id){
	var mchId = jQuery('#mchid'+id).val();
	var desc = jQuery('#mchdesc'+id).val();
	var type = jQuery('#mchtype'+id).val();
	var model = jQuery('#mchModel'+id).val();
	var status = jQuery('#mchStatus'+id).val();
	var price = jQuery('#mchPrice'+id).val();
	var cost = jQuery('#mchCost'+id).val();
	var pdate = jQuery('#mchPdate'+id).val();
	
	var isChk = jQuery('#mchisChk'+id).val();
	var bankName = jQuery('#mchbname'+id).val();
	var checkno = jQuery('#mchcheckNo'+id).val();
	var checkdate = jQuery('#mchchkDate'+id).val();
	var noOfmch = 1;
	
	jQuery('#mchid').val(mchId);
	jQuery('#mchtype').val(type);
	jQuery('#description').val(desc);
	jQuery('#model').val(model);
	jQuery('#IDstatus').val(status);
	jQuery('#price').val(price);
	jQuery('#cost').val(cost);
	jQuery('#nofMachine').val(noOfmch);
	jQuery('#purDate').val(pdate);
	jQuery('#IDcashbank').val(isChk);
	jQuery('#bankName').val(bankName);
	jQuery('#checkno').val(checkno);
	jQuery('#cdate').val(checkdate);
	
	document.getElementById("btnSave").disabled = true;
	showBankDetail();
	
}

function insert(base,action){
	var mchId = jQuery('#mchid').val();
	var type = jQuery('#mchtype').val();
	var desc = jQuery('#description').val();
	var model = jQuery('#model').val();
	var status = jQuery('#IDstatus').val();
	var price = jQuery('#price').val();
	var cost = jQuery('#cost').val();
	var nofmch = jQuery('#nofMachine').val();
	var pdate = jQuery('#purDate').val();
	var IDcashbank = jQuery('#IDcashbank').val();
	var bankName = jQuery('#bankName').val();
	var checkno = jQuery('#checkno').val();
	var cdate = jQuery('#cdate').val();
	var fdate ="";
	
	if(type == '')
	{
		jQuery('#mchtype').next('span').html('Please Select Machine Type.').show();
		return false;
	} else{
		jQuery('#mchtype').next('span').html('').hide();
	}
	
	if(desc == '')
	{
		desc = "-1";
		jQuery('#description').next('span').html('').hide();
	}
	
	if(model == '')
	{
		model = "-1";
		jQuery('#model').next('span').html('').hide();
	}
	
	if(price == '')
	{
		jQuery('#price').next('span').html('Please Insert Machine Price.').show();
		return false;
	} else{
		jQuery('#price').next('span').html('').hide();
	}
	
	if(cost == '')
	{
		jQuery('#cost').next('span').html('Please Insert Machine others cost.').show();
		return false;
	} else{
		jQuery('#cost').next('span').html('').hide();
	}
	
	if((nofmch == '') || (nofmch == '0'))
	{
		jQuery('#nofMachine').next('span').html('No of Machine not less then 1.').show();
		return false;
	} else{
		jQuery('#nofMachine').next('span').html('').hide();
	}
	
	if(pdate == '')
	{
		jQuery('#purDate').next('span').html('Please Select Purchase Date.').show();
		return false;
	} else{
		jQuery('#purDate').next('span').html('').hide();
	}
	
	if(IDcashbank == 2)
	{
		if(bankName == '')
		{
			jQuery('#bankName').next('span').html('Please Insert Bank Name.').show();
			return false;
		} else{
			jQuery('#bankName').next('span').html('').hide();
		}
		
		if(checkno == '')
		{
			jQuery('#checkno').next('span').html('Please Insert Check No.').show();
			return false;
		} else{
			jQuery('#checkno').next('span').html('').hide();
		}
		
		if(cdate == '')
		{
			jQuery('#cdate').next('span').html('Please Insert Check Date.').show();
			return false;
		} else{
			jQuery('#cdate').next('span').html('').hide();
			fdate = Dateformate(cdate);
		}
	} else{
		bankName = "-1";
		checkno = "-1";
		fdate = "-1";
	}
	
	var pars =  mchId+"<>"+type+"<>"+desc+"<>"+model+"<>"+status+"<>"+price+"<>"+cost+"<>"+nofmch+"<>"+pdate+"<>"+IDcashbank+"<>"+bankName+"<>"+checkno+"<>"+fdate+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/machine/insertmachine", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}