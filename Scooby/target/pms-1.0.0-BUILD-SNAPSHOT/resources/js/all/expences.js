function clearForm(){
	jQuery('#expenceid').val('-1');
	jQuery('#desc').val('');
	jQuery('#amount').val('');
	jQuery('#edate').val('');
	jQuery('#IDcashbank').val('Cash');
	jQuery('#IDaccount').val('');
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

function showExpence(id){
	var expId = jQuery('#expid'+id).val();
	var desc = jQuery('#expdesc'+id).val();
	var amount = jQuery('#expamount'+id).val();
	var edate = jQuery('#expDate'+id).val();
	var isChk = jQuery('#expisChk'+id).val();
	var bankName = jQuery('#expbname'+id).val();
	var checkno = jQuery('#expcheckNo'+id).val();
	var checkdate = jQuery('#expchkDate'+id).val();
	var acc = jQuery('#expAcc'+id).val();
	
	jQuery('#expenceid').val(expId);
	jQuery('#desc').val(desc);
	jQuery('#amount').val(amount);
	jQuery('#edate').val(edate);
	jQuery('#IDcashbank').val(isChk);
	jQuery('#IDaccount').val(acc);
	jQuery('#bankName').val(bankName);
	jQuery('#checkno').val(checkno);
	jQuery('#cdate').val(checkdate);
	
	document.getElementById("btnSave").disabled = true;
	showBankDetail();
	
}

function insert(base,action){
	var expId = jQuery('#expenceid').val();
	var desc = jQuery('#desc').val();
	var acc = jQuery('#IDaccount').val();
	var amount = jQuery('#amount').val();
	var edate = jQuery('#edate').val();
	var IDcashbank = jQuery('#IDcashbank').val();
	var bankName = jQuery('#bankName').val();
	var checkno = jQuery('#checkno').val();
	var cdate = jQuery('#cdate').val();
	var fdate ="";
	
	if(desc == '')
	{
		jQuery('#desc').next('span').html('Please Insert Description for Expences.').show();
		return false;
	} else{
		jQuery('#desc').next('span').html('').hide();
	}
	
	if(acc == '-1')
	{
		jQuery('#IDaccount').next('span').html('Please Select Account for Expences.').show();
		return false;
	} else{
		jQuery('#IDaccount').next('span').html('').hide();
	}
	
	if(amount == '')
	{
		jQuery('#amount').next('span').html('Please Insert Expences Amount.').show();
		return false;
	} else{
		jQuery('#amount').next('span').html('').hide();
	}
	
	if(edate == '')
	{
		jQuery('#edate').next('span').html('Please Select Expences Date.').show();
		return false;
	} else{
		jQuery('#edate').next('span').html('').hide();
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
	
	var pars =  expId+"<>"+desc+"<>"+amount+"<>"+edate+"<>"+IDcashbank+"<>"+bankName+"<>"+checkno+"<>"+fdate+"<>"+acc+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/expences/insertexpence", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}