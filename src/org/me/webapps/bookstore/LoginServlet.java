package org.me.webapps.bookstore;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		try
		{	    
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("Start");
			UserBean user = new UserBean();
			user.setUserName(request.getParameter("txtusername"));
			user.setPassword(request.getParameter("txtpassword"));

			if (user.isValid())
			{

				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentSessionUser", user.getUsername());
				session.setAttribute("currentSessionUserEmail", user.getEmail());
				
				Object objReturnurl = session.getAttribute( "returnurl" );
				if( objReturnurl != null ) 
				{
					response.sendRedirect(objReturnurl.toString());
				} else {
					response.sendRedirect("books.jsp"); //logged-in page
				}
			}

			else 
				response.sendRedirect("login.jsp?login=false"); //error page 
		} 


		catch (Throwable theException) 	    
		{
			System.out.println(theException); 
		}
	}

}
