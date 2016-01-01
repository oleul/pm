function clearForm(){
	jQuery('#productionid').val('-1');
	jQuery('#cqty').val('');
	jQuery('#tid').val('');
	jQuery('#mid').val('');
	jQuery('#pdate').val('');
	
	document.getElementById("btnSave").disabled = false;
}

/*function showTati(id){
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
	
	
}*/

function insert(base,action){
	var pid = jQuery('#productionid').val();
	var cqty = jQuery('#cqty').val();
	var tid = jQuery('#tid').val();
	var mid = jQuery('#mid').val();
	var pdate = jQuery('#pdate').val();
	
	if(pdate == '')
	{
		jQuery('#pdate').next('span').html('Please Select Production Date.').show();
		return false;
	} else{
		jQuery('#pdate').next('span').html('').hide();
	}
	if(cqty == '')
	{
		jQuery('#cqty').next('span').html('Please Insert Production Quantity.').show();
		return false;
	} else{
		jQuery('#cqty').next('span').html('').hide();
	}
	
	if(tid == '')
	{
		jQuery('#tid').next('span').html('Please Select Tati.').show();
		return false;
	} else{
		jQuery('#tid').next('span').html('').hide();
	}
	
	if(mid == '')
	{
		jQuery('#mid').next('span').html('Please Select Machine.').show();
		return false;
	} else{
		jQuery('#mid').next('span').html('').hide();
	}
	
	/*if(mid == '')
	{
		tmobile = "-1";
		jQuery('#tmobile').next('span').html('').hide();
	}*/
	
		
		
	var pars =  pid+"<>"+cqty+"<>"+tid+"<>"+mid+"<>"+pdate+"<>"+action;
	ajaxHelper.complexAjaxRequest(base+"/tati/insertcloth", pars, function(res){
	   	if(res!="-1"){
	   		clearForm();
	   		document.location.reload();
	    }
	 });
}