<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
	out.println(userid);
	out.println(pwd);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Homepage.jsp");
    } else {
        response.sendRedirect("Index.jsp?loginerr=1");
    }
%>