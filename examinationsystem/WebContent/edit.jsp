<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>you can edit your data</h1>
<%@page import="java.sql.*" %>
<%
String n=request.getParameter("q");
try{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
     
    Statement st=con.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    ResultSet rs=st.executeQuery("select * from question where qid='"+n+"'");
    if(rs.next()){
    	%>
 <hr color=green size=11>
   <form action=editaction.jsp>
      que <textarea name=t><%=rs.getString(1) %></textarea><br>
       Op1<input type=text name=o1 value=<%=rs.getString(2) %>><br>
       Op2<input type=text name=o2 value=<%=rs.getString(3) %>><br>
       Op3<input type=text name=o3 value=<%=rs.getString(4) %>><br>
       Op4<input type=text name=o4 value=<%=rs.getString(5) %>><br>
       ans<input type=text name=a value=<%=rs.getString(6) %>><br>
       <input type=submit value=Update>   
   </form>
    <%  	
  }
    con.close();
    
}
    
catch(Exception e)
{
	out.println(e);
}


%>
   
</body>
</html>