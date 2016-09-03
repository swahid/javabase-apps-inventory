<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Sign-Up/Login Form</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="css/login/normalize.css">
    <link rel="stylesheet" href="css/login/style.css">
  </head>
  <body>
    <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab"><a href="#signup">Sign Up</a></li>
      </ul>
      <div class="tab-content">
          <div id="login">   
          <h1>Welcome Back!</h1>
          
          <font color="red">
				<span style="align:center">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</span>
		  </font>
		 	<c:url var="loginUrl" value="/login" />
          <form action="${loginUrl}" method="POST" autocomplete="off"> 
            <div class="field-wrap">
            <label>
              User Name<span class="req">*</span>
            </label>
            <input type="text" name="username" required="required"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required="required"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          <input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
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
            <input type="text" id="userName" required="required"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id="password" required="required"/>
          </div>
          
          <button type="submit" class="button button-block">Get Started</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/login/index.js"></script>
    <script type="text/javascript">
    // registration method on jQuery
    $(document).ready(function($){
        $("#regForm").submit(function(event){
            
            event.preventDefault();
            var data = {}
                data["firstName"] = $("#firstName").val(),
                data["lastName"] = $("#lastName").val(),
                data["userName"] = $("#userName").val(),
                data["password"] = $("#password").val();
                url = "login/registration";
                
            $.ajax({
                type        : "POST",
                contentType : "application/json",
                url     : url,
                data    : JSON.stringify(data),
                dataType: 'json',
                success : function(data) {
                    console.log("SUCCESS: ", data);
                    var message = "registration Sucess";
                    $("#msg").html(data.message);
                    document.getElementById("regForm").reset()
                },
                error : function(e) {
                    console.log("ERROR: ", e);
                    $("#msg").html(data.message);
                    document.getElementById("regForm").reset()
                }
            });
            
        });
        /* $("#loginForm").submit(function(event){
            
            event.preventDefault();
            var data = {}
                data["userName"] = $("#userName").val(),
                data["password"] = $("#password").val();
                url = "login";
                
            $.ajax({
                type        : "POST",
                contentType : "application/json",
                url     : url,
                data    : JSON.stringify(data),
                dataType: 'json',
                success : function(response) {
                    console.log("SUCCESS: ", response);
                    if (response.page !=null) {
                    window.location.href =response.page;
                    document.getElementById("loginForm").reset()
                    }else {
                    document.getElementById("loginForm").reset()
                    alert("Bad Credintials")
                    }
                    
                },
                error : function (e) {
                    console.log("ERROR: ", e);
                    document.getElementById("loginForm").reset()
                    alert("Bad Credintials")
                }
            });
            
        }); */
    });
    </script>
    
    
  </body>
</html>
