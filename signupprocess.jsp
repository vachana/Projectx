<%@ page import ="java.sql.*" %>
<% 

	String username = request.getParameter("s_username");    
    String password = request.getParameter("s_password");
	String name = request.getParameter("s_name");    
    String dob = request.getParameter("s_dob");
	String phone = request.getParameter("s_phone");
	//out.println(username);
	//out.println(password);
	//out.println(name);
	//out.println(dob);
	//out.println(phone);
	//password = name = dob = phone = Null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root", "");
    Statement st = con.createStatement();
	try{
	String sql = "Insert into users (username,name,dob,password,phone) values('"+ username +"','" + name +"','" + dob +"','" + password +"','" + phone +"')";
		st.executeUpdate(sql);
		session.setAttribute("username", username);
		response.sendRedirect("Homepage.jsp");
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
	

%>