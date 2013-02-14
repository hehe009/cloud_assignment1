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

//			if (user.isValid())
			if (true)
			{

				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentSessionUser", user.getUsername()); 
				response.sendRedirect("books.jsp"); //logged-in page      		
			}

			//else 
				//response.sendRedirect("invalidLogin.jsp"); //error page 
		} 


		catch (Throwable theException) 	    
		{
			System.out.println(theException); 
		}
	}

}