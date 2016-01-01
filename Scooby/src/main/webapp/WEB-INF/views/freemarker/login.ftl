    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">                                
                        <div class="row-fluid user-row">
                            <center><h1>Scooby</h1></center>
                        </div>
                    </div>
                        <div class="panel-body">
                            <form  accept-charset="UTF-8" class="form-signin">
                                <fieldset>            					
                                    <div class="form-group">
                                        <div class="input-group">
                        				    <span class="input-group-addon user_id">User ID</span> 
                                            <input class="form-control login_input" required placeholder="Username" name="username" id="username" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon user_id">Pasword</span>
                                            <input class="form-control login_input" required placeholder="Password" name="password" id="password" type="password">
                                        </div>
                                    </div>
                                    
                                    <br></br>
                                    <input class="btn btn-lg btn-primary btn-block" type="button" id="login" value="Sign In »" onclick="loginValided('${rc.contextPath}');"/>
                                </fieldset>
                            </form>
                        </div>
                    <div class="panel-heading">                                
                        <div class="row-fluid user-row">
                            <div class="row">
                                <div class="col-xs-6">
                                   <p> <a href="${rc.contextPath}/users">Apply for new account</a></p>
                                   <p> <a href="#" data-toggle="modal" data-target="#myModal">Traning Modules</a></p>
                                   <p> <a href="">Privacy policy</a></p>
                                </div>
                                <div class="col-xs-6">
                                    <p><a href="">Forgot Password</a></p>
                                    <p><a href="">About Scooby</a></p>
                                    <p><a href="">Contact WebMaster</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                <table class="tg table time_table">
                    <tr>
                        <th class="tg-s6z2" colspan="5">World Clock</th>
                        <th class="tg-s6z2" colspan="2" rowspan="2">Automated date and time (PC)</th>
                    </tr>
                    <tr>
                        <td class="tg-s6z2">List of the country</td>
                        <td class="tg-s6z2">Date</td>
                        <td class="tg-s6z2">Time</td>
                        <td class="tg-s6z2" colspan="2">Difference between</td>
                    </tr>
                    <tr>
                        <td class="tg-s6z2" rowspan="2">
                            <select name="" id="" class="timezones timezone1">
                                <option value="">-Please select-</option>
                            </select>
                        </td>
                        <td class="tg-s6z2 timezone1_date" rowspan="2">--</td>
                        <td class="tg-s6z2 timezone1_time" rowspan="2">--</td>
                        <td class="tg-s6z2">
                            <select name="" id="" class="timezones timezone2">
                                <option value="">-Please select-</option>
                            </select>
                        </td>
                        <td class="tg-s6z2">
                            <select name="" id="" class="timezones timezone3">
                                <option value="">-Please select-</option>
                            </select>
                        </td>
                        <td class="tg-s6z2">Date</td>
                        <td class="tg-s6z2">Time</td>
                    </tr>
                    <tr>
                        <td class="tg-s6z2 time_defferance_between_timezones" colspan="2">--</td>
                        <td class="tg-s6z2"><span class="date"></span></td>
                        <td class="tg-s6z2"><span class="time"></span></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">              
                <div class="modal-body">
                    <center>  
                        <object width="560" height="315" loop
                            data="https://www.youtube.com/embed/oxtP3wxXlTA?rel=0&autoplay=1&loop=1">
                        </object>
                        <!--<iframe width="560" height="315" src="https://www.youtube.com/embed/oxtP3wxXlTA" frameborder="0" allowfullscreen></iframe>-->
                    </center>
                </div>
            </div>
        </div>
    </div>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${rc.contextPath}/js/store/bootstrap.min.js"></script>
    <script src="${rc.contextPath}/js/store/jquery.select-to-autocomplete.js"></script>
    <script src="${rc.contextPath}/js/store/jquery.sumoselect.min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/js/all/login.js"></script>