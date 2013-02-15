<?xml version = "1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- process.jsp -->

<%-- JSP page settings --%>
<%@ page language = "java" session = "true" %>
<%@ page import = "org.me.webapps.bookstore.*" %>
<%@ page import = "java.text.*" %>
<%@ page import = "java.util.*" %>

<html xmlns = "http://www.w3.org/1999/xhtml">

<head>
   <title>Thank You!</title>

   <link rel = "stylesheet" href = "styles.css" 
      type = "text/css" />
</head>

<% // start scriptlet

		// get user e-mail
		String stremail = (String) session.getAttribute( "currentSessionUserEmail" );
   // get total order amount
   Double d = ( Double ) session.getAttribute( "total" );
   double total = d.doubleValue();

   // load purchase items for sending e-mail
   Map cart = ( Map ) session.getAttribute( "cart" );
		   
   Set cartItems = cart.keySet();
   Iterator iterator = cartItems.iterator();

   BookBean book;
   CartItemBean cartItem;
   int quantity;
   double price, subtotal;
   
   
   // invalidate session because processing is complete
   session.invalidate();

%> <%-- end scriptlet --%>

<body>
   <p class = "bigFont">Thank You</p>

   <p>Your order has been processed.</p>

   <p>Your credit card has been billed:
      <span class = "bold">
         $<%= new DecimalFormat( "0.00" ).format( total ) %>
      </span>
   </p>
   <p>An e-mail with your purchased items has been sent to <%= stremail %></p>
       <%
       String strmessage = "Thank you for purchasing at Online Book store\n"
       																+ "Here are the item(s) you purchased:\n";
    		 int intCount = 0;
       while ( iterator.hasNext() ) {
    	   		intCount += 1;
           // get book data; calculate subtotal and total
           cartItem = ( CartItemBean ) cart.get( iterator.next() );
           book = cartItem.getBook();
           quantity = cartItem.getQuantity();
           price = book.getPrice();
           subtotal = quantity * price;
           
           strmessage += "Item " + intCount + ": " + book.getTitle() + " | Qty: " + quantity + " | Unit price: " + new DecimalFormat( "0.00" ).format( price )
						+ " | Sub total: " + new DecimalFormat( "0.00" ).format( subtotal ) + "\n";           
       				}
       pageContext.getOut().println(strmessage);
       %>
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
