<%-- 

    Document   : userLogin
    Created on : 21-Jul-2017, 11:53:40 AM
    Author     : Monika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ADMIN STUDENT Registration Page</title>
        <link href="css/Students.css" rel="stylesheet" type="text/css"/>
        <script>



            function reg() {
                var name1 = document.register.StudentFirstName.value;
                var name2 = document.register.StudentMiddleName.value;
                var name3 = document.register.StudentLastName.value;
                var email1 = document.register.Email_id.value;
                var phone = document.register.Telephone.value;
                var gender = document.register.Gender.value;
                var Status = document.register.Status.value;
                var current_past = document.register.Current_past.value;
                if (name1 === null || name1 === "") {
                    alert("Please enter the First Name");
                    return false;


                }
                else if (name2 === null || name2 === "") {
                    alert("Please enter the Middle Name");

                    return false;
                }
                else if (name3=== null || name3 === ""){
                    alert("Please enter the Last Name")
                }
                else if (email1 === null || email1 === "")
                {
                    alert("Enter the Email");

                    return false;
                }

                if (!filter.test(email1))
                {
                    alert("Please Enter the valid email");

                    return false;
                }
                else if (password1 === null || password1 === "")
                {
                    alert("Enter the password");

                    return false;
                }
                else if (password1.length < 6)
                {
                    alert("Your Password must contain 6 digits");

                    return false;
                }
                else if (phone === "")
                {
                    alert("Please enter the valid mobile number");

                    return false;
                }
                else if (isNaN(phone))
                {
                    alert("The phone number contains illegal characters");
                    return false;
                }
                else if (phone.length < 10 || phone.length > 10)
                {
                    alert("Your Telephone Number must contain 10 digits ");

                    return false;
                }
                else if (gender === "")
                {
                    alert("Please select the gender");

                    return false;
                }
                else if (Status=== "select")
                {
                    alert("Please select the status of the student");
                    return false;
                }
                else if (current_past === "")
                {
                    alert("Please select the current_past");

                    return false;
                }
            }
        </script> 

    </head>
    <body>

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
                        <a href="AboutUs">About Us</a> |
                         <a href="ContactUs" >Contact Us</a> |
                          <a href="Home.jsp" >Sign In</a> 
                              
                   
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
                
            
            <div class="content">
                <div class="left_side">
                     <div class="form">
                    <div class="regis_header">
                        <h1>REGISTRATION FORM</h1>
                    </div>
                  <form name="register" action="Jobs.jsp"  method="post" onclick="return reg()" ><br>
                    
                    Student ID:<br> <input type="number" name="StudentID" class="regis_text"><br><br>
                    First Name:<br>  <input type="text" name="FirstName" class="regis_text"><br><br>
                    Last Name:<br>  <input type="text" name="LastName" class="regis_text"><br><br>
                    Gender:  <input type="radio" name="sex" value="male">
                    Male :<input type="radio" name="sex" value="female">Female <br><br>
                    Country:    <br>  <input type="text" name="Country" class="regis_text"><br><br>
                    Semester: <select name="Semester">
                        <option value="Winter">Winter</option>
                        <option value="Fall"> Fall </option>
                    </select><br> <br>
                    Year:<input type="number" name="Year"  ><br><br>
                    Email_id: <br>  <input type="text" name="Email_id" class="regis_text"><br><br>
                   
                                        <input  type="button" value="register" class="button_design" onclick="location='Home.jsp'" />
                </form>
                    
                    </div>
                    </div>
                    
               
                <div class="right_side">
                
          <img src="css/images/windsor banner.jpg"  class="image1">
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
  
            
    
      <div id="footer">
		<div>
			<div class="first">
				<h3><a href="index.html">Ecothunder</a></h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
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
              </div>   
    </body>
</html>
