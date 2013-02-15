<?xml version = "1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- books.jsp -->

<%-- JSP page settings --%>
<%@ 
   page language = "java" 
   import = "org.me.webapps.bookstore.*, java.util.*" 
   session = "true"   
%>

<!-- begin document -->
<html xmlns = "http://www.w3.org/1999/xhtml">

<head>
   <title>Book List</title>

   <link rel = "stylesheet" href = "styles.css" 
      type = "text/css" />
</head>

<body>
		<% session.setAttribute("returnurl", "books.jsp"); %>
		<table id="table-login" width="100%" border=0>
			<tr><td style="float:right" >
			<% 
					Object destPageObj = session.getAttribute( "currentSessionUser" );
		      String strusername = "";
		      if( destPageObj != null ) 
		      			{
		    	  strusername = destPageObj.toString();
		          pageContext.getOut().println("hello, " + strusername + " | ");
		      %>
		      <a href="logout">Logout</a>
		      <%
		    		} else {
		      %>
		      <a href="login.jsp">Login / Sign up</a>
		      <%		
		      			}
			%>
			</td></tr>
		</table>
   <p class = "bigFont">List of Books</p>

   <p>
      
   <%-- begin JSP scriptlet to create list of books --%>
   <%
      TitlesBean titlesBean = new TitlesBean();
      List titles = titlesBean.getTitles();
      BookBean currentBook;

      // store titles in session for further use
      session.setAttribute( "titles", titles );

      // obtain an Iterator to the set of keys in the List
      Iterator iterator = titles.iterator();
 
      // use the Iterator to get each BookBean and create
      // a link to each book
      %>
      <table id="table-booklist">
      <%
      while ( iterator.hasNext() ) {
         currentBook = ( BookBean ) iterator.next();

   %> <%-- end scriptlet to insert literal XHTML and --%>
      <%-- JSP expressions output from this loop     --%>

         <%-- link to a book's information --%>
         <tr>
         <td>
         <span class = "bold">
      	   <img style = "border: thin solid black" height="80" width="61"
      	    src = "images/<%= currentBook.getImageFile() %>" 
                    alt = "<%= currentBook.getTitle() %>"  />
        </td>
        <td>
            <a href = 
               "displayBook?isbn=<%= currentBook.getISBN() %>">

               <%= currentBook.getTitle() + "<br>" +
                   currentBook.getEditionNumber() + " edition" %>
            </a>
         </span>
         </td>
         </tr>

   <% // continue scriptlet  

      }   // end while loop

   %> <%-- end scriptlet --%> 
			</table>
   </p>
</body> 

</html>

<!--
 ***************************************************************
 * (C) Copyright 2001 by Deitel & Associates, Inc. and         *
 * Prentice Hall. All Rights Reserved.                         *
 *                                                             *
 * DISCLAIMER: The authors and publisher of this book have     *
 * used their best efforts in preparing the book. These        *
 * efforts include the development, research, and testing of   *
 * the theories and programs to determine their effectiveness. *
 * The authors and publisher make no warranty of any kind,     *
 * expressed or implied, with regard to these programs or to   *
 * the documentation contained in these books. The authors     *
 * and publisher shall not be liable in any event for          *
 * incidental or consequential damages in connection with, or  *
 * arising out of, the furnishing, performance, or use of      *
 * these programs.                                             *
 ***************************************************************
-->
