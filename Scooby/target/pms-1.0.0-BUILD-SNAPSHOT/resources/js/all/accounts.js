function clearForm(){
	jQuery('#accId').val('-1');
	jQuery('#accName').val('');
	jQuery('#accDesc').val('');
	//jQuery('#accDate').val('');
		
	document.getElementById("btnSave").disabled = false;
}

function showExpence(id){
	var aid = jQuery('#accId'+id).val();
	var aname = jQuery('#accName'+id).val();
	var adesc = jQuery('#accDesc'+id).val();
	//var cdate = jQuery('#accDate'+id).val();
	
	
	jQuery('#accId').val(aid);
	jQuery('#accName').val(aname);
	jQuery('#accDesc').val(adesc);
	//jQuery('#accDate').val(cdate);
		
	document.getElementById("btnSave").disabled = true;
	
}

function insert(base,action){
	var accId = jQuery('#accId').val();
	var accName = jQuery('#accName').val();
	var accDesc = jQuery('#accDesc').val();
	//var accDate = jQuery('#accDate').val();
	
	
	if(accName == '')
	{
		jQuery('#accName').next('span').html('Please Insert Account Name.').show();
		return false;
	} else{
		jQuery('#accName').next('span').html('').hide();
	}
	
	if(accDesc == '')
	{
		jQuery('#accDesc').next('span').html('Please Select Account Description.').show();
		return false;
	} else{
		jQuery('#accDesc').next('span').html('').hide();
	}
	
	var pars =  accId+"<>"+accName+"<>"+accDesc+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/account/insertaccount", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}