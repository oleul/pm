/*function clearForm(){
	var uid = jQuery('#uid').val('-1');
	var utype = jQuery('#utype').val('');
	var uname = jQuery('#uname').val('');
	var pass = jQuery('#pass').val('');
}*/
function insertUser(base){//alert("test");
	var fname = jQuery('#first_name').val();
	var mname = jQuery('#middle_name').val();
	var lname = jQuery('#last_name').val();
	var uname = jQuery('#user_name').val();
	var email = jQuery('#email').val();
	var role = jQuery('#user_role').val().split("-");
	
	var empId = jQuery('#empId').val();
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
	
	
	if(fname == '' && mname == '' && lname == '')
	{
		jQuery('#errorMsg').html('* Name Required').show();
		
		return false;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	if(uname == '')
	{
		jQuery('#errorMsg').html('* User Name Required').show();
		
		return false;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	if(role[0] == 'Please Select')
	{
		jQuery('#errorMsg').html('* Select Role').show();
		
		return false;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	if(role[1] == 'Client')
	{
		if(companyname == '')
		{
			jQuery('#errorMsg').html('* Company Name Required').show();
			
			return false;
		} else{
			jQuery('#errorMsg').html('').hide();
		}
		if(country == '')
		{
			jQuery('#errorMsg').html('* Country Required').show();
			
			return false;
		} else{
			jQuery('#errorMsg').html('').hide();
		}
		if(contactnumber == '')
		{
			jQuery('#errorMsg').html('* Contact Number Required').show();
			return false;
		} else{
			jQuery('#errorMsg').html('').hide();
		}
	} else{
		if(empId == '')
		{
			jQuery('#errorMsg').html('* Employee Id Required').show();
			return false;
		} else{
			jQuery('#errorMsg').html('').hide();
		}
	}
	
	if(password == '' || confirm_password == '')
	{
		jQuery('#errorMsg').html('* Password and Confirm Password Required').show();
		
		return false;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	if(password != confirm_password)
	{
		jQuery('#errorMsg').html('* Password not matched').show();
		
		return false;
	} else{
		jQuery('#errorMsg').html('').hide();
	}
	
	var pars =  fname+"~"+mname+"~"+lname+"~"+uname+"~"+email+"~"+role[0]+"~"+empId+"~"+companyname+"~"+address
	+"~"+city+"~"+zippcode+"~"+country+"~"+business_category+"~"+designation+"~"+contactnumber+"~"+password;
	
	ajaxHelper.complexAjaxRequest(base+"/users/insertuser", pars, function(res){
	   	if(res == uname){
	 	   //document.location.reload();
	   		window.location.href=base+"/";
	    }
	 });
}

function showUser(base,id){
	var pars =  id;
	ajaxHelper.complexAjaxRequest(base+"/users/insertuser", pars, function(res){
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
	ajaxHelper.complexAjaxRequest(base+"/users/deleteuser", pars, function(res){
	   	if(res!=""){
	 	   jQuery("#user"+id).remove();
	 	   clearForm();
	    }
	 });
}