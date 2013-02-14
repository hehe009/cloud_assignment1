<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel = "stylesheet" href = "styles.css" type = "text/css" />
</head>
<body>
	<% 
			Object objReturnurl = session.getAttribute( "returnurl" );
			if( objReturnurl != null ) 
			{
				session.setAttribute("returnurl", objReturnurl.toString());
		    }
		    %>
		<h1>Returning?</h1>
		<%
		Object objlogin = request.getParameter("login");				
		   if (objlogin != null) {
			   if (objlogin.toString().equals("false")) {
			%>
			<b>
			<%
			pageContext.getOut().println("<b>incorrect username or password</b>");
			%>
			</b>
			<%
	     	}
		  }
		%>
		
		<form action="login" method="post">		
			 <table>  
         <tr>
            <td class = "right bold">username:</td>       

            <td>
               <input type = "text" name = "txtusername" 
                  size = "25" />
            </td>
         </tr>

         <tr>
            <td class = "right bold">password:</td>

            <td>
               <input type = "password" name = "txtpassword" 
                  size = "25" />
            </td>
         </tr>
     </table>			
			<input type="submit" value="submit">
			<br><br>
			<a href="signup.jsp" >New customer sign up here</a>			
		
		</form>
	</body>
</html>