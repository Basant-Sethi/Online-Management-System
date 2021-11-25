<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><th>question</th>
<th>op1</th>
<th>op2</th>
<th>op3</th>
<th>op4</th>
<th>ans</th>
</tr>
<% int n=0;
String question=request.getParameter("que");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String op4=request.getParameter("op4");
String ans=request.getParameter("ans");

try{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
     System.out.println("connected");
    Statement st=con.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    ResultSet rs=st.executeQuery("select * from question");
    while(rs.next()){
  if(n%2==0)  
out.println("<form action=edit.jsp><input type=hidden name=q value="+rs.getString(7)+"><tr><td>"+rs.getString(1)+" </td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td> "+rs.getString(5)+" </td><td>"+rs.getString(6)+"</td><td><input type=submit value=Edit></td></tr></form>");  
  else
	  out.println("<form action=edit.jsp><input type=hidden name=q value="+rs.getString(7)+"><tr bgcolor=lightgreen><td>"+rs.getString(1)+" </td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td> "+rs.getString(5)+" </td><td>"+rs.getString(6)+"</td><td><input type=submit value=Edit></td></tr></form>");  
	  n++;
    }
    con.close();
    
}
    
catch(Exception e)
{
	out.println(e);
}

%>
</table>
</body>
</html>