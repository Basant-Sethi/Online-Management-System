<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body  {
  background-image: url("back.jpg");
  background-size:80%
}
</style>
</head>
<body><center>
<h1><font color="red">SIGN IN HERE</font></h1>
<pre>
<form action="signact.jsp" method="post">
       <font color="white">
       Username</font> <input type="text" name="u"><br>
      <font color="white" >Password </font><input type="password" name="pw"><br>
       <input type="submit" value="login" ><br>
       <input type="reset" value="reset">
       </form></pre></center>
</body>
</html>