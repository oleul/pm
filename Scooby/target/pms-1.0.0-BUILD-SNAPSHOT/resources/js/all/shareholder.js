var globRow=1;

function clearForm(){
	jQuery('#ownerid').val('-1');
	jQuery('#fname').val('');
	jQuery('#lname').val('');
	jQuery('#address').val('');
	jQuery('#phone').val('');
	jQuery('#mobile').val('');
	jQuery('#email').val('');
	jQuery('#cdate').val('');
}
function insert(base){
	var ownerid = jQuery('#ownerid').val();
	var fname = jQuery('#fname').val();
	var lname = jQuery('#lname').val();
	var address = jQuery('#address').val();
	var phone = jQuery('#phone').val();
	var mobile = jQuery('#mobile').val();
	var email = jQuery('#email').val();
	var cdate = jQuery('#cdate').val();
	var fdate ="";
	
	if(fname == '')
	{
		jQuery('#fname').next('span').html('Please Insert First Name.').show();
		return false;
	} else{
		jQuery('#fname').next('span').html('').hide();
	}
	
	if(lname == '')
	{
		jQuery('#lname').next('span').html('Please Insert Last Name.').show();
		return false;
	} else{
		jQuery('#lname').next('span').html('').hide();
	}
	
	if(address == '')
	{
		jQuery('#address').next('span').html('Please Insert Address.').show();
		return false;
	} else{
		jQuery('#address').next('span').html('').hide();
	}
	
	if(phone == '')
	{
		jQuery('#phone').next('span').html('Please Insert Phone.').show();
		return false;
	} else{
		jQuery('#phone').next('span').html('').hide();
	}
	
	if(mobile == '')
	{
		jQuery('#mobile').next('span').html('Please Insert mobile.').show();
		return false;
	} else{
		jQuery('#mobile').next('span').html('').hide();
	}
	
	if(email == '')
	{
		jQuery('#email').next('span').html('Please Insert email.').show();
		return false;
	} else{
		jQuery('#email').next('span').html('').hide();
	}
	
	if(cdate == '')
	{
		jQuery('#cdate').next('span').html('Please Insert cdate.').show();
		return false;
	} else{
		jQuery('#cdate').next('span').html('').hide();
		fdate = Dateformate(cdate);
	}
	
	var pars =  ownerid+"<>"+fname+"<>"+lname+"<>"+address+"<>"+phone+"<>"+mobile+"<>"+email+"<>"+fdate;
	ajaxHelper.complexAjaxRequest(base+"/owner/insertowner", pars, function(res){
	   	if(res!="-1"){
	 	   document.location.reload();
	    }
	 });
}

function show(base,id){
	var pars =  id;
	ajaxHelper.complexAjaxRequest(base+"/owner/show", pars, function(res){
	   	if(res!=""){
	 	   var resSplit = res.split("<>");
	 	   jQuery('#ownerid').val(resSplit[0]);
	 	   jQuery('#fname').val(resSplit[1]);
	 	   jQuery('#lname').val(resSplit[2]);
	 	   jQuery('#address').val(resSplit[3]);
	 	   jQuery('#phone').val(resSplit[4]);
	 	   jQuery('#mobile').val(resSplit[5]);
	 	   jQuery('#email').val(resSplit[6]);
	 	   jQuery('#cdate').val(resSplit[7]);
	    }
	 });
}

function softdelete(base){
	var id = jQuery('#ownerid').val();
	var pars =  id;
	ajaxHelper.complexAjaxRequest(base+"/owner/delete", pars, function(res){
	   	if(res!=""){
	 	   jQuery("#owner"+id).remove();
	 	   clearForm();
	    }
	 });
}
function ReplaceAll(Source,stringToFind,stringToReplace){
	var temp = Source;
	var index = temp.indexOf(stringToFind);

    while(index != -1){
        temp = temp.replace(stringToFind,stringToReplace);
        index = temp.indexOf(stringToFind);
    }
    return temp;
}
function addRow(){
	var tr = jQuery("<tr>").appendTo(jQuery("#shareAddBody")).attr("id","shareTr"+globRow);
	var td = jQuery("<td>").appendTo(tr).attr("id","slno"+globRow);
    //var hidtd0=jQuery("#slno0").html();
    td.html(globRow);
    
    var td1 = jQuery("<td>").appendTo(tr).attr("id","amount"+globRow);
    var hidtd1=jQuery("#am0").html();
    hidtd1=hidtd1.replace("IDamount","IDamount"+globRow); 
    td1.html(hidtd1+"<br\><span id='amounterr"+globRow+"' class='error'></span>");
    
    var td2 = jQuery("<td>").appendTo(tr).attr("id","date"+globRow);
    var hidtd2=jQuery("#dt0").html();
    hidtd2=hidtd2.replace("IDsdate","IDsdate"+globRow); 
    td2.html(hidtd2+"<br\><span id='dateerr"+globRow+"' class='error'></span>");
    
    var td3 = jQuery("<td>").appendTo(tr).attr("id","cashbank"+globRow);
    var hidtd3=jQuery("#cb0").html();
    hidtd3=hidtd3.replace("IDcashbank","IDcashbank"+globRow); 
    hidtd3=hidtd3.replace("checkdetail","checkdetail"+globRow); 
    hidtd3=hidtd3.replace("rowId",globRow);
    hidtd3=hidtd3.replace("IDbank","IDbank"+globRow); 
    hidtd3=hidtd3.replace("IDbankerr","IDbankerr"+globRow);
    hidtd3=hidtd3.replace("IDcheck","IDcheck"+globRow);
    hidtd3=hidtd3.replace("IDcheckerr","IDcheckerr"+globRow);
    hidtd3=hidtd3.replace("IDcheckdt","IDcheckdt"+globRow);
    hidtd3=hidtd3.replace("IDcheckdterr","IDcheckdterr"+globRow);
    
    hidtd3=hidtd3.replace("othersdetail","othersdetail"+globRow); 
    hidtd3=hidtd3.replace("IDaccDesc","IDaccDesc"+globRow); 
    hidtd3=hidtd3.replace("IDaccDescerr","IDaccDescerr"+globRow);
    td3.html(hidtd3);
    
    var td4 = jQuery("<td>").appendTo(tr).attr("id","btn"+globRow);
    var hidtd4=jQuery("#btn0").html();
    hidtd4=hidtd4.replace("IDaddbtn","IDaddbtn"+globRow);
    hidtd4=hidtd4.replace("rowId",globRow); 
    td4.html(hidtd4);
    
    jQuery("#IDsdate"+globRow).datepicker();
    jQuery("#IDcheckdt"+globRow).datepicker();
    
    globRow = globRow + 1;
}
function showBankDetail(rowId){
	var cashbank = jQuery('#IDcashbank'+rowId).val();
	if(cashbank == 2){
		jQuery('#othersdetail'+rowId).hide();
		jQuery('#checkdetail'+rowId).show();
	} else if(cashbank == 3){
		jQuery('#checkdetail'+rowId).hide();
		jQuery('#othersdetail'+rowId).show();
	} else{
		jQuery('#checkdetail'+rowId).hide();
		jQuery('#othersdetail'+rowId).hide();
	}
}
function addShare(base,rowId){
	var ownerid = jQuery('#ownerid').val();
	
	var amount = jQuery('#IDamount'+rowId).val();
	var cashbank = jQuery('#IDcashbank'+rowId).val();
	var date = jQuery('#IDsdate'+rowId).val();
	var ndate="";
	var bankname="-1";
	var checkno="-1";
	var checkdate="-1";
	var othersAcc="";
	var err = 0;
	if(ownerid == ''){
		jQuery('#errorMsg').html('Please Select a Owner.').show();
		err = 1;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	if(amount == '')
	{
		jQuery('#amounterr'+rowId).html('Please Insert Amount.').show();
		err = 1;
	} else{
		jQuery('#amounterr'+rowId).html('').hide();
	}
	
	if(date == '')
	{
		jQuery('#dateerr'+rowId).html('Please Select Date.').show();
		err = 1;
	} else{
		jQuery('#dateerr'+rowId).html('').hide();
		ndate = Dateformate(date);
	}
	
	if(cashbank == 2)
	{
		bankname=jQuery('#IDbank'+rowId).val();
		checkno=jQuery('#IDcheck'+rowId).val();
		checkdate=jQuery('#IDcheckdt'+rowId).val();
		if(bankname == ''){
			jQuery('#IDbankerr'+rowId).html('Please Insert Bank name.').show();
			err = 1;
		} else{
			jQuery('#IDbankerr'+rowId).html('').hide();
		}
		if(checkno == ''){
			jQuery('#IDcheckerr'+rowId).html('Please Insert Check no.').show();
			err = 1;
		} else{
			jQuery('#IDcheckerr'+rowId).html('').hide();
		}
		if(checkdate == ''){
			jQuery('#IDcheckdterr'+rowId).html('Please Select Check Date.').show();
			err = 1;
		} else{
			jQuery('#IDcheckdterr'+rowId).html('').hide();
			checkdate = Dateformate(checkdate);
		}
	}
	
	if(cashbank == 3)
	{
		othersAcc=jQuery('#IDaccDesc'+rowId).val();
		if(othersAcc == ''){
			jQuery('#IDaccDescerr'+rowId).html('Please Insert Account name.').show();
			err = 1;
		}
	}
	
	if(err == 1)
		return;
	else{
		var pars =  ownerid+"<>"+amount+"<>"+cashbank+"<>"+ndate+"<>"+bankname+"<>"+checkno+"<>"+checkdate+"<>"+othersAcc;
		ajaxHelper.complexAjaxRequest(base+"/owner/addShare", pars, function(res){
		   	if(res!="-1"){
		 	   document.location.reload();
		    }
		 });
	}
	
}