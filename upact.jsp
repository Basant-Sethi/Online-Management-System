<!DOCTYPE html>
<html>
<head>
<%@page import="java.sql.*" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%
        String uname=request.getParameter("u");
        String upass=request.getParameter("pw");
        String uaddr=request.getParameter("a");
        String uphone=request.getParameter("p");
        try
        {
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
        	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        	 PreparedStatement ps=con.prepareStatement("insert into reginfo values(?,?,?,?)");
        	 ps.setString(1,uname);
        	 ps.setString(2,upass);
        	 ps.setString(3,uaddr);
        	 ps.setString(4,uphone);
        	 int r=ps.executeUpdate();
        	 if(r==1)
        		 out.println("You have succussfuly registered...");
        	 con.close();
        }
    catch(Exception e)
    {
        out.println(e);	
    }
   %>
   <form action=signIN.jsp><input type=submit value=login></form>
</body>
</html>>