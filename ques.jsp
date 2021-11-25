<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type = "text/javascript" >
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };

<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "31";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
location.reload(true);}
}
//-->
</script>
</head>
<body bgcolor="blue"><center>
<%! int c=1,r=0;%>
<%
String res=request.getParameter("r");
if(res==null||res.equals("0"))
	r=r+0;
else
	r=r+2;
out.println("Result="+r);

try
{
	String que,op1,op2,op3,op4,ans;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	 PreparedStatement ps=con.prepareStatement("select * from question",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
	 ResultSet rs=ps.executeQuery();
	 
	 rs.absolute(c);
	 {
		 que= rs.getString(1);
		 op1=rs.getString(2);
		 op2=rs.getString(3); 
		 op3=rs.getString(4);
		 op4=rs.getString(5);
		 ans=rs.getString(6);
		 out.println("<form action=quesaction.jsp><h2><table><tr><td>Q<sub>"+c+"</sub>"+que+"</td></tr><tr><td><input type=radio value="+op1+" name=q>"+op1+
				 "</td></tr><tr><td><input type=radio value="+op2+" name=q>"+op2+
				 "</td></tr><tr><td><input type=radio value="+op3+" name=q>"+op3+
				 "</td></tr><tr><td><input type=radio value="+op4+" name=q>"+op4+
				 "</td></tr></table></h2>");
		 out.println("<input type=submit value=SUBMIT>");
		 out.println("<input type=hidden value="+ans+" name=a></form>");
		 c++;
	 }
}
catch(Exception e)
{
out.println(e);	
}
%>
<form action="<%=request.getRequestURL()%>" name="forma">
Timer for this only Question have 30s remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">	
</form>
<script>
<!--
timer();
//-->
</script>


</center>
</body>
</html>