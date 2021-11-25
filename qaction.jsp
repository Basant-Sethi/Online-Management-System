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
String txt=request.getParameter("que");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String op4=request.getParameter("op4");
String ans=request.getParameter("ans");
out.println(txt+"<br>"+op1+"<br>"+op2+"<br>"+op3+"<br>"+op4+"<br>"+"The answer is:- "+ans+"<br>");
try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	 PreparedStatement ps=con.prepareStatement("insert into question values(?,?,?,?,?,?)");
	 ps.setString(1,txt);
	 ps.setString(2,op1);
	 ps.setString(3,op2);
	 ps.setString(4,op3);
	 ps.setString(5,op4);
	 ps.setString(6,ans);

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
</body>
</html>