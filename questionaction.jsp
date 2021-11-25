<%
String uans=request.getParameter("q");
if(uans!=null)
{
	String ans=request.getParameter("a");
	if(uans.equals(ans))
		response.setHeader("Refresh","0;url=ques.jsp?r=1");
	else
		response.setHeader("Refresh","0;url=ques.jsp?r=0");
}
else
	response.setHeader("Refresh","0;url=ques.jsp?r=0");
%>
