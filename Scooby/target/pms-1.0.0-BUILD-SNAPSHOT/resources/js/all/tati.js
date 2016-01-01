function clearForm(){
	jQuery('#tatiid').val('-1');
	jQuery('#tname').val('');
	jQuery('#tadd').val('');
	jQuery('#tmobile').val('');
	jQuery('#jdate').val('');
	jQuery('#status').val('Active');
	
	document.getElementById("btnSave").disabled = false;
}

function showTati(id){
	var tatiid = jQuery('#tatid'+id).val();
	var tname = jQuery('#tatname'+id).val();
	var tadd = jQuery('#tataddress'+id).val();
	var tmobile = jQuery('#tatmobile'+id).val();
	var jdate = jQuery('#tatjdate'+id).val();
	var status = jQuery('#tatstatus'+id).val();
		
	jQuery('#tatiid').val(tatiid);
	jQuery('#tname').val(tname);
	jQuery('#tadd').val(tadd);
	jQuery('#tmobile').val(tmobile);
	jQuery('#jdate').val(jdate);
	jQuery('#status').val(status);
	
	document.getElementById("btnSave").disabled = true;
	
	
}

function insert(base,action){
	var tatiid = jQuery('#tatiid').val();
	var tname = jQuery('#tname').val();
	var tadd = jQuery('#tadd').val();
	var tmobile = jQuery('#tmobile').val();
	var jdate = jQuery('#jdate').val();
	var status = jQuery('#status').val();
	
	if(tname == '')
	{
		jQuery('#tname').next('span').html('Please Insert Name.').show();
		return false;
	} else{
		jQuery('#tname').next('span').html('').hide();
	}
	
	if(tadd == '')
	{
		jQuery('#tadd').next('span').html('Please Insert Tati Address.').show();
		return false;
	} else{
		jQuery('#tadd').next('span').html('').hide();
	}
	
	if(tmobile == '')
	{
		tmobile = "-1";
		jQuery('#tmobile').next('span').html('').hide();
	}
	
	if(jdate == '')
	{
		jQuery('#jdate').next('span').html('Please Insert Join Date.').show();
		return false;
	} else{
		jQuery('#jdate').next('span').html('').hide();
	}
	
	if(status == '')
	{
		jQuery('#status').next('span').html('Please Select Status.').show();
		return false;
	} else{
		jQuery('#status').next('span').html('').hide();
	}
		
	var pars =  tatiid+"<>"+tname+"<>"+tadd+"<>"+tmobile+"<>"+jdate+"<>"+status+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/tati/inserttati", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}