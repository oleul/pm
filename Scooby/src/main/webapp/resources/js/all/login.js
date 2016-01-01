var times = {
    'timezones': function(){
        return moment.tz.names();
    },
    
    'time': moment().format('hh:mm a'),
    
    'date': moment().format('MMM-Do'),
    
    'clock': function(){
        setInterval(function(){
            $('.date').html(moment().format('MMM-Do'));
            $('.time').html(moment().format('hh:mm:ss a'));    
        },1000);
    },
    
    'list_timezones': function(){
        $(this.timezones()).each(function(i, v) {
            $('.timezones').append("<option value='" + v + "'>" + v + "</option>");
        });
    },
    
    'track_timezone1': function(){
        $('.timezone1').on('keyup change',function(){
                $('.timezone1_date').html(moment().tz($(this).val()).format('MMM-Do'));
                $('.timezone1_time').html(moment().tz($(this).val()).format('hh:mm:ss a'));
        });
    },
    
    'time_difference_between_zones': function(zone1,zone2){
            var a = moment().tz(zone1).format('Z');
            var b = a.split(':');
            var c = (b[0] * 60 + b[1] * 1);
        
        //    var d = new Date()
        //    var e = d.getTimezoneOffset() * -1;
        
            var d = moment().tz(zone2).format('Z');
            var e = d.split(':');
                e = (e[0] * 60 + e[1] * 1);
        
            var f = (c - e * 1);
            var hour = Math.ceil(f / 60);
            hour = (hour > 12) ? hour - 12 : hour;
            var minute = Math.round(f - hour * 60);
            minute = (minute < 0) ? minute * -1 : minute;
            var difference = hour + ':' + minute;
            return difference;
    },
    
    'trackTimeZoneDifference': function(){
        var x = this;
        $('.timezone2,.timezone3').on('keyup change', function(){
            var zone1 = $('.timezone2 option:selected').val();
            var zone2 = $('.timezone3 option:selected').val();
            
            var defference = x.time_difference_between_zones(zone1,zone2);
            $('.time_defferance_between_timezones').html(defference+' Hr.');
        });
    },
    
    'initialize': function(){
        this.clock();
        this.list_timezones();
        this.track_timezone1();
        this.trackTimeZoneDifference();
    }
};

var clients_data=function(){
  $('.role').on('change keyup',function(e){
  e.preventDefault();
    var optval=$(this).val();
    var value=optval.split("-");
  if(value[1]==="Client"){
	$('.employee').hide(600);
    $('.client').slideDown(600);
  }else if(value[0]==="Please Select"){
	  $('.employee').hide(600);
	  $('.client').hide(600);
  }else{
    $('.client').hide(600);
    $('.employee').slideDown(600);
  }
});

}

$(document).ready(function() {
    if($('.role').length>0){
        clients_data();
    }
    if($('.seleectCountry').length>0){
        $('select.seleectCountry').selectToAutocomplete();
    }
    times.initialize();
    $(document).mousemove(function(event) {
        TweenLite.to($("body"), 
        .5, {
            css: {
                backgroundPosition: "" + parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px",
            	"background-position": parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / 12) + "px, " + parseInt(event.pageX / 15) + "px " + parseInt(event.pageY / 15) + "px, " + parseInt(event.pageX / 30) + "px " + parseInt(event.pageY / 30) + "px"
            }
        })
    });
    window.asd = $('.SlectBox').SumoSelect();
})


function loginValided(base){
	
	var uname = jQuery('#username').val();
	var pass = jQuery('#password').val();
	
	if(uname == '')
	{
		alert("Please Insert User Name.");
		return false;
	} 
	
	if(pass == '')
	{
		alert("Please Insert Password.");
		return false;
	}
	
	var pars =  uname+"~"+pass;
	ajaxHelper.complexAjaxRequest(base+"/user/valideduser", pars, function(res){
	   	if(res!="-1"){
	   		//jQuery("#errorMsg").hide();
	   		window.location.href=base+"/pms";
	    }else{
	    	//jQuery("#errorMsg").show();
	    }
	 });
}

function logout(base){
	
	var pars =  "";
	ajaxHelper.complexAjaxRequest(base+"/user/logout", pars, function(res){
	   	if(res!="-1"){
	   		window.location.href=base+"/user/login";
	    }
	 });
}