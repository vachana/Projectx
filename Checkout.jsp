<%@ page import="java.io.*" %>
<% 
	if(session.getAttribute("username")==null)
		response.sendRedirect("Index.jsp");
		
	%>
<html>
<head>
<title> Checkout </title>
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
            <li><a href="Homepage.jsp" class="page-scroll animated bounceInDown" onclick="animh()">Home</a></li>
            <li><a href="logout.jsp" class="page-scroll animated bounceInDown" onclick="animl()">Logout</a></li>
            <!--li><a href="#tf-signup" class="page-scroll animated bounceInDown" onclick="anims()">Signup</a></li-->
            <!--li><a href="#tf-services" class="page-scroll">Services</a></li>
            <li><a href="#tf-works" class="page-scroll">Portfolio</a></li>
            <li><a href="#tf-testimonials" class="page-scroll">Testimonials</a></li>
            <li><a href="#tf-contact" class="page-scroll">Contact</a></li-->
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
	
	<%
		String s[] = request.getParameter("med-chose").split(":");
		
		out.println(s[0]);
		out.println(s[1]);
		
	%>
	
	<br><br><br>
	<div id="tf-order" class=" container">
        <div class="overlay well">
            <div class="content">
				<div class="text-center">
				<h2><label class="text-center"> Order Placed </label></h2>
				<h4><label> Order Summary </label> </h4>
				</div>
				<br>
				<h5 class="col-md-offset-1"> Medicine Name : <%= s[0] %></h5>
				<br>
                
				<h5 class="col-md-offset-1"> Company Name : <%= s[1] %></h5>
				<br>
				
				<h5 class="col-md-offset-1"> Quantity : <%= request.getParameter("quantity") %></h5>
				<br>
				
            </div>
        </div>
    </div>



</body>
</html>