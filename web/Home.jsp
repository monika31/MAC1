<%-- 
    Document   : Home
    Created on : Aug 15, 2017, 12:51:01 PM
    Author     : Monika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
 <script>
            function validateform() {
                var name = document.myform.Email_id.value;
                var password = document.myform.Password1.value;


                if (name == null || name == "") {
                    alert("Please enter your Email Id");
                    return false;
                }
                else if (password == null || password == "")
                {
                    alert("You should enter your password");
                    return false;
                }

            }
</script>
    </head>
    <body>
        
        <div class="home">
            <%
                String FirstNAME = (String) session.getAttribute("session_FNAME");
                String Email_id = (String) session.getAttribute("session_EMAIL_ID");

                if (Email_id == null) {
            %>



            <%         } else {
            %>

            <p class="values">
              
                <a href="Students.jsp"> <%=FirstNAME%> </a> <br/>
                  <a href="LogOut"> Logout </a>
            </p>


            <%
                }
            %>
            <div class="main">

            
                <div class="home_header">
                    <div class="upper_left">
                        <h1>(519)-253-3000</h1>
                        <h1>email@uwindsor.ca</h1>
                    </div> 
                <div class="logo">
                    <img src="css/images/image14.png" height="100%" width="100%">  
                </div>
                    <div class="upper_right">
                        <a href="AboutUs.jsp">About Us</a> |
                         <a href="ContactUs.jsp" >Contact Us</a> |
                          <a href="home.jsp" >Sign In</a> 
                              
                   
                    </div>
                </div>
               
                    <div class="nav" >
                     <ul>
    <li>
      <a href="home.jsp">Home</a>
    </li>
    <li>
      <a href="AboutUs.jsp">About</a>
    </li>
    <li>
      <a href="students.jsp">Registration</a>
    </li>
    <li>
        <a href="NewJob.jsp">Jobs</a>
    </li>
    <li>
      <a href="ContactUs.jsp">Contact</a>
    </li>
  </ul>
                    </div>
                
                <div class="body">
                     <img src="css/images/windsor banner.jpg"  class="image1">
                </div>
            <div class="content">
                <div class="left_side">
                    
                    <div class="regis_header">
                        <h1>LOGIN</h1>
                    </div>
                   <form name="myform" action="Userlogin" method="Post" onsubmit="return validateform()">
                <font size="4px"> Email_id:</font> <br>
                <input type="text" name="Email_Id" class="Sign_indesign" > 
                <font size="4px"> <br><br>Password: </font><br>
                <input type="password" name="Password1" class="Sign_indesign1"><br><br><br>
                <input type="submit" value="Login" class="button_design"><br><br> |
                <font size="4px" ><a href="StudentRegistration.jsp"><font color="black">Create New Account </a></font></font>
            </form>
                    </div>
               
                <div class="right_side">
                    <div class="galary">
                    <tr class="image_content">
                    <tr> <a href="http://www1.uwindsor.ca/bargainingunits/university-files-for-conciliation"><img src="css/images/image2.jpg" height="176px" width="287px"></a></li>&nbsp;&nbsp;&nbsp;&nbsp;
                    <tr><a href="http://www.uwindsor.ca/dailynews/2017-07-12/campers-hatch-plan-engineering-egg-drop"> <img src="css/images/galary4.jpg" height="176px" width="287px"></a></li>&nbsp;&nbsp;&nbsp;&nbsp;
            <tr><a href="http://placeofpromise.ca/" ><img src="css/images/galary3.jpg" height="176px" width="287px"></a></tr>
            <td> <a href="http://www.uwindsor.ca/dailynews/2017-06-23/math-project-streamline-companys-distribution-network"><img src="css/images/image4.jpg" height="176px" width="287px"></a></td>&nbsp;&nbsp;&nbsp;&nbsp;
            <td><a href="http://www1.uwindsor.ca/campusrec/forge-fitness-center-and-services"> <img src="css/images/galary5.jpg" height="176px" width="287px"></a></td>&nbsp;&nbsp;&nbsp;&nbsp;
            <td><a href="http://www1.uwindsor.ca/gss/"> <img src="css/images/galary6.jpg" height="176px" width="287px"></a></td>
                    </tr>
        
                </div>
                </div>
            </div>
  
            
      </div>
      <div id="footer">
		<div>
			<div class="first">
                            <h3><img src=""></h3>
				
				<div>
					<p>Telephone. : <span>12345678-90</span></p>
					<p>Fax : <span>23456789-01</span></p>
					<p>Email : <span>ask@ecothunder.com</span></p>
				</div>
			</div>
			<div>
				<h3>Get Social with us!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
				<div>
					<a href="http://facebook.com/freewebsitetemplates" class="facebook" target="_blank"></a>
					<a href="http://twitter.com/fwtemplates" class="twitter" target="_blank"></a>
					<a href="#" class="linked-in"></a>
				</div>
			</div>
			<div>
				<h3>Share your thoughts!</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
				<form action="#">
					<label for="subscribe"><input type="text" id="subscribe" maxlength="30" value="email address" /></label>
					<input class="submit" type="submit" value="" />
				</form>
				<p>Copyright &copy; 2011  Ecothunder Incorporated <br />LRP 727 6783 83839 All rights reserved</p>
			</div>
		</div>
      </div>
               
    </body>
</html>

         