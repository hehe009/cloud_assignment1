<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ 
   page language = "java" 
   import = "org.me.webapps.bookstore.*, java.util.*" 
   session = "true"   
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
SendMail sm = new SendMail();
sm.setTo("max_kan@hotmail.com");
sm.setMessage("This is Message body");
sm.setSubject("Send from servlet");
if (sm.send()) {
	System.out.println("Mail sent");
} else {
	System.out.println("Mail failed");
}
%>
</body>
</html>