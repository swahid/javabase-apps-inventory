<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
  <head>
  	<title>Sign-Up/Login Form</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link rel="stylesheet" href="css/skins/skin-blue.min.css">
    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 2.1.4 -->
    <script src="jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="js/app.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/login/normalize.css">
    <link rel="stylesheet" href="css/login/style.css">
  </head>
<body class="hold-transition skin-blue sidebar-collapse">
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">
        <c:url var="index" value="/" />
        <!-- Logo -->
        <a href="${index}" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>IMS</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Inventory</b>System</span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              <!-- User Account Menu -->
              <li class="dropdown user user-menu">
                <!-- Menu Toggle Button -->
                <a href="login">
                  <!-- The user image in the navbar-->
                  <img src="img/avatar5.png" class="user-image" alt="User Image">
                  <!-- hidden-xs hides the username on small devices so only the image appears. -->
                  <span class="hidden-xs">Login/Registration</span>
                </a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

          <!-- login/refistration form Content Here -->
          <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab"><a href="#signup">Sign Up</a></li>
      </ul>
      <div class="tab-content">
          <div id="login">   
          <h1>Welcome Back!</h1>
          
          <font color="red">
				<span style="align: center">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
		  </font>
          <form action="j_spring_security_check" method="POST"
						autocomplete="off"> 
            <div class="field-wrap">
            <label>
              User Name<span class="req">*</span>
            </label>
            <input type="text" name="j_username" required="required" />
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="j_password" required="required" />
          </div>
          
          <p class="forgot">
							<a href="#">Forgot Password?</a>
						</p>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <button type="submit" class="button button-block">Log In</button>
          
          </form>
          
        </div>
        
        <div id="signup">   
          <h1 id="msg">Sign Up for Free </h1>
        
        <form action="#" method="post" id="regForm" autocomplete="off">
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" id="firstName" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" id="lastName" />
            </div>
          </div>

          <div class="field-wrap">
            <label>
              User Name<span class="req">*</span>
            </label>
            <input type="text" id="userName" required="required" />
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id="password" required="required" />
          </div>
          
          <button type="submit" class="button button-block">Get Started</button>
          
          </form>

        </div>
        
      </div>
			<!-- tab-content -->
      
</div> <!-- /form -->
    <script
			src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/login/index.js"></script>
    <script type="text/javascript">
	// registration method on jQuery
					
	$(document).ready(function($) {
		$("#regForm").submit(function(event) {
		
			event.preventDefault();
			var data = {}
					data["firstName"] = $("#firstName").val(),
					data["lastName"] = $("#lastName").val(),
					data["userName"] = $("#userName").val(),
					data["password"] = $("#password").val();
					url = "registration";
			
			$.ajax({
					type : "POST",
					contentType : "application/json",
					url : url,
					data : JSON.stringify(data),
					dataType : 'json',
					success : function(data) {
					var message = "registration Sucess";
					$("#msg").html(data.message);
					document.getElementById("regForm").reset()
				 },
					error : function(e) {
							console.log("ERROR: ",e);
							$("#msg").html(e.message);
							document.getElementById("regForm").reset()
						}
					});
		
			});
	});
	</script>
  
          <!-- login/refistration form Content end -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
      <footer class="main-footer">
        <!-- Default to the left -->
        <strong>Copyright &copy; 2016 <a href="#">@Javabase Inc.</a></strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

  </body>
</html>
