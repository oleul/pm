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

$(document).ready(function() {
    times.initialize();
    window.asd = $('.SlectBox').SumoSelect();
    
})