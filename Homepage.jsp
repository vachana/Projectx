<%@ page import ="java.sql.*" %>
<% 
	if(session.getAttribute("username")==null)
		response.sendRedirect("Index.jsp");
		
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
	<script type'"text/javascript">
	
		function animh()
			{
				$('#tf-home').addClass('animated fadeIn');
				setTimeout(function() {
					$('#tf-home').removeClass('animated fadeIn');
				}, 1000);
			}
			
			function animo()
			{
				$('#tf-order').addClass('animated fadeIn');
				setTimeout(function() {
					$('#tf-order').removeClass('animated fadeIn');
				}, 1000);
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
          <a class="navbar-brand animated rollIn" href="Homepage.jsp">E-Pharmicals</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#tf-home" class="page-scroll animated rollIn" onclick="animh()">Home</a></li>
			<li><a href="#tf-order" class="page-scroll animated rollIn" onclick="animo()">Order</a></li>
            <!--li><a href="checkout.jsp" class="page-scroll animated rollIn" onclick="animc()">Checkout</a></li-->
            <li><a href="logout.jsp" class="page-scroll animated rollIn">Logout</a></li>
            <!--li><a href="#tf-services" class="page-scroll">Services</a></li>
            <li><a href="#tf-testimonials" class="page-scroll">Testimonials</a></li>
            <li><a href="#tf-contact" class="page-scroll">Contact</a></li-->
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
	
	<div id="tf-home" class="text-center animated rollIn">
        <div class="overlay">
            <div class="content">
				</br></br></br></br></br></br></br></br></br></br></br>
                <h1>Welcome <strong><span class="color"><%= session.getAttribute("username") %></span></strong></h1>
                <p class="lead">We are a digital agency with <strong>years of experience</strong> and with <strong>extraordinary people</strong></p>
                <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
				</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
            </div>
        </div>
    </div>
	
	<div id="tf-order" class="text-center container">
        <div class="overlay well">
            <div class="content">
			
				<h1><label class="text-center"> Search Medicine </label></h1>
                <form class="form-horizontal" action="Homepage.jsp">
				<div class="row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="name" name="name" >Name</label></h4>
					<div class="col-md-8">
					<input class=" form-control" type="text" name="name"></input>
					</div>
				</div><br>
				
				<div class="row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="name" name="company" >Company</label></h4>
					<div class="col-md-8">
					<input class=" form-control" type="text" name="company"></input>
					</div>
				</div><br>
				
				
				<div class="row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="name" name="intake" >Intake form</label></h4>
					<div class="col-md-8">
					<select class="form-control" name="intake">
						<option value="consumable">Consumable</option>
						<option value="nonconsumable">Non - Consumable</option>
					</select>
					</div>
				</div><br>
				
				<div class="row">
					<h4><label for="inputuname" class="col-md-2 control-label" id="name" name="name" >Age-Group</label></h4>
					<div class="col-md-10 form-horizontal">
						<h4>
						<div class="col-md-6">
							<label for="age-group" class="radio">Adult</label>
							<input class="col-md-6 radio form-control" type="radio" name="age-group" value="adult">
						</div>
						
						<div class="col-md-6">
							<label for="age-group" class="radio">Child</label>
							<input class="col-md-6 form-control" type="radio" name="age-group" value="child">
						</div>
						</h4>
					</div>
				</div><br>
				
				<br><br>
				<div class="row">
					<input type="submit" class="col-md-6 col-md-offset-3 btn btn-success" value="Search">
				</div>
				</form>
            </div>
        </div>
    </div>
	
	
	
	<%
	
		
	if((request.getParameter("name")!= null) && (request.getParameter("company")!=null) && (request.getParameter("intake")!=null) && (request.getParameter("age-group")!=null)) 
	{
	
	%>
	
	<div class="container">
			<h2> Search Results </h2>
			<br>
			<form class="form-horizontal" action="Checkout.jsp">
			<table class="table table-bordered table-striped" id = "ptable">
				<thead>
					<tr>
						<th>Index</th>
						<th>Name</th>
						<th>Company</th>
						<th>Choice</th>
					</tr>
				</thead>
				<tbody>
	
	
	<%
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		/*out.println(request.getParameter("name"));
		out.println(request.getParameter("company"));
		out.println(request.getParameter("intake"));*/
		//out.println(request.getParameter("age-group"));
		//out.println("select * from " + request.getParameter("intake") +" join "+ request.getParameter("age-group") + " on " + request.getParameter("intake") + ".name = " +request.getParameter("age-group") + ".name where name like '%" + request.getParameter("name") + "%'"  );
		rs = st.executeQuery("select * from " + request.getParameter("intake") +" join "+ request.getParameter("age-group") + " on " + request.getParameter("intake") + ".name = " +request.getParameter("age-group") + ".name where " + request.getParameter("intake") + ".name like '%" + request.getParameter("name") + "%'" );		
		int i  = 1;
		if(rs == null)
			{%>
				<tr>
					<td> No Results to Display </td>
				</tr>
			
			<%	}
		while(rs.next())
		{
			%>
			<tr>
				<td><%= i %></td>
				<td> <%= rs.getString("name") %> </td>
				<td> <%= rs.getString("company") %> </td>
				<td> <input class="col-md-6 radio form-control" type="radio" name="med-chose" value=<%=	rs.getString("name") + ":" +rs.getString("company")%> > </td>
			</tr>
			
			<%
			i++;
		}
		%>
		
		
		
		
		</tbody>
		</table>
		
		 
		<br>
		<h4><label for="age-group" class="radio">Enter Quantity</label></h4>
		<input type="text" class="form-control" name="quantity" >
		<br>
		<input class="col-md-3 col-md-offset-5 btn btn-default" type="submit" name="order" value="Order!!">
	<%
	}
	%>
	
	<br><br>
	
</body>
</html>