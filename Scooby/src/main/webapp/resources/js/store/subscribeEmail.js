function subscribeEmail(baseUrl){
	var email= document.getElementById('subscribeEmail').value;
	if(email!=""){
		jQuery.ajax({
			url: baseUrl+"/subscribe/subscribeEmail",
			type: "POST",
			data: email,
			beforeSend: function(x) {
			  if (x && x.overrideMimeType) {
			    x.overrideMimeType("application/j-son;charset=UTF-8");
			  }
			  jQuery('#subscribeEmailDiv').hide();
			  jQuery('#loadingMsg').css('display','block');
			},
			success: function(result) {
				if(result == 'OK'){
					document.getElementById('subscribeEmail').value="";
					jQuery('#loadingMsg').hide();
					jQuery('#subscribeEmailMsg').show();
				}
			},
			error: function() {
				document.getElementById('subscribeEmail').value="";
				jQuery('#loadingMsg').hide();
				jQuery('#subscribeEmailMsg').show();
			}
		});
	}
	
}

function textFieldValidation(obj) {
	var cval = obj.value;
	var len = cval.length;
	var newChar = cval.charAt(len - 1);

	var cCode = newChar.charCodeAt(0);
	var newVal = "";
	if (cCode < 48 || cCode > 57) {
		for ( var i = 0; i < (len - 1); i++) {
			newVal = newVal + cval.charAt(i);
		}
		obj.value = newVal;
	}
}

function Dateformate(dd){
	var rdd="";
	var len = dd.length;
	for ( var i = 0; i < len; i++) {
		var ch = dd.charAt(i);
		if(ch =='/'){
			rdd = rdd + "-";
		} else{
			rdd = rdd + ch;
		}
	}
	return rdd;
}