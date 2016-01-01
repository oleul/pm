/*function clearForm(){
	var uid = jQuery('#uid').val('-1');
	var utype = jQuery('#utype').val('');
	var uname = jQuery('#uname').val('');
	var pass = jQuery('#pass').val('');
}*/
function insertUser(base){
	var fname = jQuery('#first_name').val();
	var mname = jQuery('#middle_name').val();
	var lname = jQuery('#last_name').val();
	var uname = jQuery('#user_name').val();
	var email = jQuery('#email').val();
	var role = jQuery('#user_role').val();
	
	var companyname = jQuery('#company_name').val();
	var address = jQuery('#address').val();
	var city = jQuery('#city').val();
	var zippcode = jQuery('#zippcode').val();
	var country = jQuery('#country-selector').val();
	var business_category = jQuery('#business_category').val();
	var designation = jQuery('#designation').val();
	var contactnumber = jQuery('#contact_number').val();
	
	var password = jQuery('#password').val();
	var confirm_password = jQuery('#confirm_password').val();
	
	
	if(utype == '')
	{
		jQuery('#utype').next('span').html('Please Select User Type.').show();
		
		return false;
	} else{
		jQuery('#utype').next('span').html('').hide();
	}
	
	if(uname == '')
	{
		jQuery('#uname').next('span').html('Please Insert User Name.').show();
		
		return false;
	} else{
		jQuery('#uname').next('span').html('').hide();
	}
	
	if(pass == '')
	{
		jQuery('#pass').next('span').html('Please Insert User Password.').show();
		
		return false;
	} else{
		jQuery('#pass').next('span').html('').hide();
	}
	
	var pars =  uid+"/"+utype+"/"+uname+"/"+pass;
	ajaxHelper.complexAjaxRequest(base+"/user/insertuser", pars, function(res){
	   	if(res!="-1"){
	 	   document.location.reload();
	    }
	 });
}

function showUser(base,id){
	var pars =  id;
	ajaxHelper.complexAjaxRequest(base+"/user/showuser", pars, function(res){
	   	if(res!=""){
	 	   var resSplit = res.split("/");
	 	   jQuery('#uid').val(resSplit[0]);
	 	   jQuery('#utype').val(resSplit[1]);
	 	   jQuery('#uname').val(resSplit[2]);
	 	   jQuery('#pass').val(resSplit[3]);
	    }
	 });
}

function deleteUser(base){
	var id = jQuery('#uid').val();
	var pars =  id;
	ajaxHelper.complexAjaxRequest(base+"/user/deleteuser", pars, function(res){
	   	if(res!=""){
	 	   jQuery("#user"+id).remove();
	 	   clearForm();
	    }
	 });
}