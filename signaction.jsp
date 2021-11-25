<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname=request.getParameter("u");
String upass=request.getParameter("pw");
String und="",pwd="";
try
{

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement pst=con.prepareStatement("select * from reginfo where username=? and password=?");
    pst.setString(1,uname);
    pst.setString(2,upass);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
    	
    	response.sendRedirect("test.jsp");
    }
    else
    {
    	response.sendRedirect("error1.jsp");
    }
    
}
catch(Exception e)
{
	out.println("some problem"+e);
}
%>
</body>
</html>