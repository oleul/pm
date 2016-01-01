function clearForm(){
	jQuery('#fiberid').val('-1');
	jQuery('#purDate').val('');
	jQuery('#name').val('');
	jQuery('#ref').val('');
	jQuery('#descrip').val('');
	jQuery('#qty').val('');
	jQuery('#rate').val('');
	jQuery('#total').val('');
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


function calculateTotal(){
	var qty = jQuery('#qty').val();
	var rate = jQuery('#rate').val();
	
	if(qty == '')
		qty = '0';
	if(rate == '')
		rate = '0';
	
	var total = qty * rate;
	
	jQuery('#total').val(total);
	
}

function calcTotal(qty, rate){
	
	if(qty == '')
		qty = '0';
	if(rate == '')
		rate = '0';
	
	var total = qty * rate;
	
	return total;
	
}


function showFiber(id){
	var fibId = jQuery('#fibid'+id).val();
	var fibpdate = jQuery('#fibpdate'+id).val();
	var fibname = jQuery('#fibname'+id).val();
	var fibref = jQuery('#fibref'+id).val();
	var fibqty = jQuery('#fibqty'+id).val();
	var fibrate = jQuery('#fibrate'+id).val();
	
	var isChk = jQuery('#fiberisChk'+id).val();
	var bankName = jQuery('#fiberbname'+id).val();
	var checkno = jQuery('#fibercheckNo'+id).val();
	var checkdate = jQuery('#fiberchkDate'+id).val();
	
	
	jQuery('#fiberid').val(fibId);
	jQuery('#purDate').val(fibpdate);
	jQuery('#name').val(fibname);
	jQuery('#ref').val(fibref);
	jQuery('#descrip').val(fibref);
	jQuery('#qty').val(fibqty);
	jQuery('#rate').val(fibrate);
	jQuery('#total').val(calcTotal(fibqty,fibrate));
	jQuery('#IDcashbank').val(isChk);
	jQuery('#bankName').val(bankName);
	jQuery('#checkno').val(checkno);
	jQuery('#cdate').val(checkdate);
	
	document.getElementById("btnSave").disabled = true;
	showBankDetail();
	
}

function insert(base,action){
	var fiberid = jQuery('#fiberid').val();
	var purDate = jQuery('#purDate').val();
	var name = jQuery('#name').val();
	var descrip = jQuery('#descrip').val();
	var ref = jQuery('#ref').val();
	var qty = jQuery('#qty').val();
	var rate = jQuery('#rate').val();
	var IDcashbank = jQuery('#IDcashbank').val();
	var bankName = jQuery('#bankName').val();
	var checkno = jQuery('#checkno').val();
	var cdate = jQuery('#cdate').val();
	var fdate ="";
	
	if(purDate == '')
	{
		jQuery('#purDate').next('span').html('Please Insert Purchase Date.').show();
		return false;
	} else{
		jQuery('#purDate').next('span').html('').hide();
	}
	
	if(name == '')
	{
		jQuery('#name').next('span').html('Please Insert Name.').show();
		return false;
	} else{
		jQuery('#name').next('span').html('').hide();
	}
	
	if(descrip == '')
	{
		jQuery('#descrip').next('span').html('Please Insert Description.').show();
		return false;
	} else{
		jQuery('#descrip').next('span').html('').hide();
	}
	
	if(ref == '')
	{
		ref = "-1";
		jQuery('#ref').next('span').html('').hide();
	}
	
	if(qty == '')
	{
		jQuery('#qty').next('span').html('Please Insert Quantity.').show();
		return false;
	} else{
		jQuery('#qty').next('span').html('').hide();
	}
	
	if(rate == '')
	{
		jQuery('#rate').next('span').html('Please Insert rate.').show();
		return false;
	} else{
		jQuery('#rate').next('span').html('').hide();
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
	
	var pars =  fiberid+"<>"+purDate+"<>"+name+"<>"+descrip+"<>"+ref+"<>"+qty+"<>"+rate+"<>"+IDcashbank+"<>"+bankName+"<>"+checkno+"<>"+fdate+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/fiber/insertfiber", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}