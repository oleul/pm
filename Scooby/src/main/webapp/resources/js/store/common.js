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

function textFieldValidationDouble(obj) {
	var cval = obj.value;
	var len = cval.length;
	var newChar = cval.charAt(len - 1);
	var pointcount = 0;
	
	for ( var i = 0; i < len; i++) {
		var cChar = cval.charAt(i);
		var chCode = cChar.charCodeAt(0);
		if(chCode == 46)
			pointcount = pointcount + 1;
	}

	var cCode = newChar.charCodeAt(0);
	var newVal = "";
	if ((cCode < 48 || cCode > 57) && (pointcount > 1 || cCode != 46)) {
		for ( var i = 0; i < (len - 1); i++) {
			newVal = newVal + cval.charAt(i);
		}
		obj.value = newVal;
	}
}


function textFieldSize(obj, countryId) {
	
	var bcountry = document.getElementById(countryId);
	var bselectedCountry = bcountry.options[bcountry.selectedIndex].value;
	if(bselectedCountry == 1){
		var cval = obj.value;
		var len = cval.length;
		var newChar = cval.substring(0,len-1);
		
		if(len>5){
			obj.value = newChar;
		}
	}
}
