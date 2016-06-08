<% 
	if(session.getAttribute("username")!=null)
		response.sendRedirect("Homepage.jsp");
		
	%>
<html>
<head>
<title> Index </title>
<link rel="stylesheet" href="cyborgbootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!--script type="text/javascript" src="js/SmoothScroll.js"></script-->
<meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="http://localhost:8080/Pharmacy/animate.css">
	
	<script type="text/javascript">
			
			function animh()
			{
				$('#tf-home').addClass('animated bounceInLeft');
				setTimeout(function() {
					$('#tf-home').removeClass('animated bounceInLeft');
				}, 1000);
			}
			
			function animl()
			{
				$('#tf-login').addClass('animated bounceInLeft');
				setTimeout(function() {
					$('#tf-login').removeClass('animated bounceInLeft');
				}, 1000);
			}
			
			function anims()
			{
				$('#tf-signup').addClass('animated bounceInLeft');
				setTimeout(function() {
					$('#tf-signup').removeClass('animated bounceInLeft');
				}, 1000);
			}
			
			function s_validate()
			{
				return true;
			}
			
			
	</script>
	

</head>
<body>
<!-- Navbar -->
<nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand animated bounceInDown" href="Index.jsp">E-Pharmicals</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#tf-home" class="page-scroll animated bounceInDown" onclick="animh()">Home</a></li>
            <li><a href="#tf-login" class="page-scroll animated bounceInDown" onclick="animl()">Login</a></li>
            <li><a href="#tf-signup" class="page-scroll animated bounceInDown" onclick="anims()">Signup</a></li>
            <!--li><a href="#tf-services" class="page-scroll">Services</a></li>
            <li><a href="#tf-works" class="page-scroll">Portfolio</a></li>
            <li><a href="#tf-testimonials" class="page-scroll">Testimonials</a></li>
            <li><a href="#tf-contact" class="page-scroll">Contact</a></li-->
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

	<div id="tf-home" class="text-center animated bounceInDown">
        <div class="overlay">
            <div class="content">
				</br></br></br></br></br></br></br></br></br></br></br>
                <h1>Welcome on <strong><span class="color">E-Pharmicals</span></strong></h1>
                <p class="lead">We are a digital agency with <strong>years of experience</strong> and with <strong>extraordinary people</strong></p>
                <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
				</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
            </div>
        </div>
    </div>
	
	
	<div id="tf-login" class="text-center">
        <div class="overlay">
            <div class="content">
				</br></br></br></br></br></br></br>
				
				<div class="row">
					<div class="col-lg-4 col-lg-offset-4"><h1> Login</h1></div>
				</div>
				
				</br></br>
				
				<form action="loginprocess.jsp" class="form-horizontal" method="post" text="#FFFFFF">
				<div class=" row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="u_name" name="u_name" >Username</label></h4>
					
					<div class="col-md-8">
						<input type="text" class="form-control" id="uname" name='username' placeholder="Username" required>
					</div>
				</div>
				
				<div class="form-group row">
					<h4><label for="inputpassword" class="col-md-2 control-label" id="u_name" name="u_pass" >Password</label></h4>
					
					<div class="col-md-8">
						<input type="password" class="form-control" id="uname" name='password' placeholder="Password" required>
					</div>
				</div>
				
				</br></br>
				
				<div class="row">
					<div class="col-md-4"></div>
						<div> <input type="submit" class="btn btn-success col-md-4" Value="Log Me In!" > </div>
					</div>
				</div>
				</form>
				
			</br></br></br>
				
			</div>
		</div>
	</div> 
	
	
	
	<div id="tf-signup" class="text-center">
        <div class="overlay">
            <div class="content">
				</br></br></br></br>
                
				
				<div class="row">
					<div class="col-lg-4 col-lg-offset-4"><h1> Sign - Up </h1></div>
				</div>
				
				</br>
				
				<form action="signupprocess.jsp" class="form-horizontal" method="post" text="#FFFFFF">
				
				<div class="form-group row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="u_name" name="u_name" >Username</label></h4>
					
					<div class="col-md-8">
						<input type="text" class="form-control" id="uname" name='s_username' placeholder="Username" required>
					</div>
				</div>
				
				<div class="form-group row">
					<h4><label for="inputname" class="col-md-2 control-label" id="u_name" name="u_name" >Name</label></h4>
					
					<div class="col-md-8">
						<input type="text" class="form-control" id="uname" name='s_name' placeholder="Name" required>
					</div>
				</div>
				
				
				<div class="form-group row">
					<h4><label for="inputdob" class="col-md-2 control-label" id="u_name" name="u_name" >Date-of-Birth</label></h4>
					
					<div class="col-md-8">
						<input type="text" class="form-control" id="uname" name='s_dob' placeholder="Date-of-Birth" required>
					</div>
				</div>
				
				<div class="form-group row">
					<h4><label for="inputpassword" class="col-md-2 control-label" id="u_name" name="u_name" >Password</label></h4>
					
					<div class="col-md-8">
						<input type="password" class="form-control" id="uname" name='s_password' placeholder="Password" required>
					</div>
				</div>
				
				<div class="form-group row">
					<h4><label for="inputphone" class="col-md-2 control-label" id="u_name" name="u_name" >Phone</label></h4>
					
					<div class="col-md-8">
						<input type="text" class="form-control" id="uname" name='s_phone' placeholder="Phone" required>
					</div>
				</div>
				
				</br></br>
				
				<div class="row">
					<div class="col-md-4"></div>
						<div> <input type="submit" class="btn btn-success col-md-4" Value="Register!" onclick="s_validate()" > </div>
					</div>
				</div>
				
				</form>
				
				
				</br></br>
            </div>
        </div>
    </div>
	
	<hr>
	
	
</body>
</html>