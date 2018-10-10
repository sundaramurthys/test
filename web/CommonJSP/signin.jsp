<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Sign In | CAMPS | SDC BIT</title>
        <!-- Favicon-->
        <link rel="icon" href="../../favicon.ico" type="image/x-icon">
        <%String host_string = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="<%=host_string%>plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="<%=host_string%>plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="<%=host_string%>plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Custom Css -->
        <link href="<%=host_string%>css/style.css" rel="stylesheet">
        <!-- Jquery Core Js -->
        <script src="<%=host_string%>plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="<%=host_string%>plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="<%=host_string%>plugins/node-waves/waves.js"></script>

        <!-- Validation Plugin Js -->
        <script src="<%=host_string%>plugins/jquery-validation/jquery.validate.js"></script>
        <script src="<%=host_string%>js/pages/CommonJSP/notifications.js"/>
        <!-- Custom Js -->
        <script src="<%=host_string%>js/admin.js"></script>
        <script src="<%=host_string%>js/pages/CommonJSP/sign-in.js"></script>
        <script src="<%=host_string%>plugins/jquery-validation/additional-methods.js"></script>
        <!-- Bootstrap Notify Plugin Js -->
        <script src="<%=host_string%>plugins/bootstrap-notify/bootstrap-notify.js"></script>

    </head>

    <body class="login-page">
        <div class="login-box">
            <div class="logo" style="text-align: center;">
                <img src="../images/camps-logo.png"/>                  
            </div>
            <div class="card">
                <div class="body">
                    <form id="sign_in" action="../LoginCheck.jsp" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">person</i>
                            </span>
                            <div class="form-line">
                                <input type="text" class="form-control"  name="username" data-rule-alphanumeric="true" id="username" placeholder="username" required autofocus>
                            </div>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="material-icons">lock</i>
                            </span>
                            <div class="form-line">
                                <input type="password" class="form-control" name="password" autocomplete="off" data-rule-varchar="true" id="password"  placeholder="password" required>
                            </div>
                        </div>
                        <div class="msg">                      
                            <button class="btn btn-block bg-blue waves-effect" type="submit" style="width: 200px;">SIGN IN</button>                        
                        </div>

                       
                        <div class="row m-t-15 m-b--20">  
                            <div class="col-xs-6 ">                           
                            </div>
                           
                        </div>
                    </form>
                    <% if (request.getParameter("er_c") != null && request.getParameter("er_c").equalsIgnoreCase("0")) {
                            out.print(" <script> showNotification('alert-danger', 'Incorrect username / Password','bottom', 'center',  '', '',false,'glyphicon glyphicon-remove-circle');</script>");
                        } else if (request.getParameter("er_c") != null && request.getParameter("er_c").equalsIgnoreCase("1")) {
                            out.print(" <script> showNotification('bg-deep-orange', 'The account is deactivated contact Administrator','bottom', 'center',  '', '',false,'glyphicon glyphicon-pushpin');</script>");
                        }%>
                </div>
            </div>
        </div>


    </body>

</html>