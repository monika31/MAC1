
<%-- 
    Document   : ContactUs
    Created on : 15-Aug-2017, 12:46:09 PM
    Author     : Monika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link href="css/style_contactus.css" rel="stylesheet" type="text/css"/>
 <script>
            function validateform() {
                var name = document.myform.Email_id.value;
                var password = document.myform.Password1.value;


                if (name === null || name === "") {
                    alert("Please enter your Email Id");
                    return false;
                }
                else if (password === null || password === "")
                {
                    alert("You should enter your password");
                    return false;
                }

            }
</script>
    </head>
    <body>
        <div class="home_header">
          
<%
                String FirstNAME=(String)session.getAttribute("session_FNAME");
                 String Email_id=(String)session.getAttribute("session_EMAIL_ID");

                 if(Email_id==null)
                 {
        %>
      
       
         
         <%
                 }
                 else
                 {
                     %>
                     
                     <p class="values">       
                    <a href="Students.jsp"> <%=FirstNAME%> </a> <br/>
                    <a href="#"> Logout </a>
         </p>
                      
                      
                      <%
                      }
                     %>

            <div class="home_subheader">
                <ul>
                    <a href="Home.jsp">HOME</a>
                    <a href="NewJobs.jsp">JOBS</a>
                    <a href="home.jsp">LOGIN</a>
                    <a href="ContactUs.jsp">CONTACT US</a>
                    <a href="Students.jsp">REGISTRATION</a>


                </ul>
            </div>
        </div>
             <div class="home_logos">
                 <img src="css/images/GoogleDrive_728x90.jpg" height="100px" width="100%" >
                   
            
        </div>
            <div class="contactus">
                <div class="contactlogo">
                    <img src="css/images/contact-us-website.jpg" height="100px" width="100%">
                </div>
                <form  name="myform" action="ContactUs" method="Post"  onsubmit="return validateform()">
                    <br>   First Name: <input type="text" name="FirstName" class="textfield"><br><br>
                          Last Name: <input type="text" name="LastName" class="textfield"><br><br>
                          Email Id: <input type="text" name="EmailId" class="textfield"><br><br>
                          Phone_No: <input type="text" name="Phone" class="textfield"><br><br>
                          Your Message : <textarea class="textarea" name="Message"></textarea><br><br>
                          <input type="Submit" value="Submit" name="Submit" class="Submit">
                          <input type="Submit" value="Clear" name="Submit1" class="Submit">
                </form>
            </div>
            <%
                
                 if(Email_id==null)
                 {
        %>     
        <div class="home_login">
                <img src="css/images/User-Administrator-Blue-icon.png" height="50px" width="30%" class="user_login">
                <form action="Userlogin" method="Post">
                 SIGN-IN<br><br>
               <font size="4px"> Email_id:</font> <br>
               <input type="text" name="Email_Id" class="Sign_indesign" > 
               <font size="4px"> Password: </font><br>
               <input type="password" name="Password1" class="Sign_indesign1"><br><br><br>
               <input type="submit" value="Login" class="button_design">
               <font size="4px" ><a href="StudentRegistration.jsp"><font color="black">Create New Account </a></font></font>
                </form>
                 
                      
                     
            </div> 
         <%
                 }
                 else
                 {
                     %>
                     <div class="home_login">
                         <img src="css/images/1306742985.jpg" height="30px" width="20%" class="img_login">
                   
                     </div>
                      
                      
                      <%
                      }
                     %>
                     <div class="leftbanner">
                         <img src="css/images/3084793485626002354.jpg" height="100px" width="100%" class="ritebannerpic">
                     </div>
                     <div class="ritebanner">
                         <img src="css/images/vertical-banner.png" height="100px" width="100%" class="ritebannerpic">
                     </div>
                     <div class="bottom">
                         <marquee >
                             <img src="css/images/14795748476697032401.png" class="marquee"/>
                             <img src="css/images/d89c7c07de101383fd84f4668ede54b4.png" class="marquee">

                         </marquee>
                     </div>
    </body>
</html>
