<?xml version = "1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- order.html -->

<html xmlns = "http://www.w3.org/1999/xhtml">

<head>
   <title>Sign up</title>

   <link rel = "stylesheet" href = "styles.css" 
      type = "text/css" />
</head>

<body>
<!-- Form to input user information and credit card.   -->
   
   <form method = "post" action = "SignupServlet">
		<p class = "bigFont">Account information</p>
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
         <tr>
            <td class = "right bold">e-mail:</td>

            <td>
               <input type = "text" name = "txtemail" 
                  size = "25" />
            </td>
         </tr>
         <tr>
            <td class = "right bold">First name:</td>       

            <td>
               <input type = "text" name = "txtfirstname" 
                  size = "25" />
            </td>
         </tr>

         <tr>
            <td class = "right bold">Last name:</td>

            <td>
               <input type = "text" name = "txtlastname" 
                  size = "25" />
            </td>
         </tr>
     </table>	

   <p class = "bigFont">Shopping information</p>

        

      <!-- table of form elements -->
      <table>  

         <tr>
            <td class = "right bold">Street:</td>

            <td>
               <input type = "text" name = "txtstreet" size = "25" />
            </td>
         </tr>

         <tr>
            <td class = "right bold">City:</td>

            <td>
               <input type = "text" name = "txtcity" size = "25" />
            </td>
         </tr>

         <tr>
            <td class = "right bold">State:</td>

            <td>
               <input type = "text" name = "txtstate" size = "2" />
            </td>
         </tr>        

         <tr>
            <td class = "right bold">Phone #:</td>

            <td>
                  <input type = "text" name = "txtphone" size = "12" />
            </td>
         </tr>  

         <tr>
            <td class = "right bold">Credit Card #:</td>

            <td>
               <input type = "text" name = "txtcreditcard" 
                  size = "25" />  
            </td>
         </tr>

         <tr>
            <td class = "right bold">Expiration (mm/yy):</td>

            <td>
               <select size="1" name="txtexpiresmm">
       					 				<option value ="month">month</option>
       					 				<option value ="1">1</option>
       							 	  <option value ="2">2</option>
        								<option value ="3">3</option>
        								<option value ="4">4</option>
        								<option value ="5">5</option>
        								<option value ="6">6</option>
        								<option value ="7">7</option>
        								<option value ="8">8</option>
        								<option value ="9">9</option>
        								<option value ="10">10</option>
        								<option value ="11">11</option>
        								<option value ="12">12</option>
										</select> /

               <select size="1" name="txtexpiresyy">
       					 				<option value ="year">year</option>
       					 				<option value ="2013">2013</option>
       							 	  <option value ="2014">2014</option>
        								<option value ="2015">2015</option>
        								<option value ="2016">2016</option>
        				</select>
            </td>
         </tr>        
      </table>

      <!-- enable user to submit the form  -->
      <p><input type = "submit" value = "Create account" /></p>
   </form>
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