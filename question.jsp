<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form action=qaction.jsp>
<table >
<tr>
<th>
<h2>Enter Question</h2><br> <textarea rows = "5" cols = "60" name=que></textarea>
</th>
</tr>
<tr>
<th>
Option 1 <input type=text name=op1>
</th>
</tr>
<tr>
<th>
Option 2 <input type=text name=op2>
</th>
</tr>
<tr>
<th>
Option 3 <input type=text name=op3>
</th>
</tr>
<tr>
<th>
Option 4 <input type=text name=op4>
</th>
</tr>
<tr>
<th>
Answer <input type=text name=ans>
</th>
</tr>
<tr>
<th>
<input type=submit value=Add>
</th>
</tr>
<tr>
<th>
<input type=reset value=Reset>
</th>
</tr>
</table>

</form>
</center>
</body>
</html>