<%-- 
    Document   : jobs
    Created on : 8-Aug-2017, 12:31:59 PM
    Author     : Monika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobs</title>
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

        <div class="jobs">

            <div class="home_header">
                

            </div>
            <div class="studentregis">
                 REGISTRATION NOW
            </div>
            <div class="logo">

            </div>


            <div class="registration_fields">

                <form name="register" action="userRegister"  method="post" onsubmit="return reg()" ><br>
                    Student ID:<br> <input type="number" name="StudentID" class="regis_text"><br><br>
                    First Name:<br>  <input type="text" name="FirstName" class="regis_text"><br><br>
                    Middle Name:<br> <input  type="text" name="MiddleName" class="regis_text"><br><br>
                    Last Name:<br>  <input type="text" name="LastName" class="regis_text"><br><br>
                    Email_id: <br>  <input type="text" name="Email_id" class="regis_text"><br><br>
                    TelePhone:    <br>  <input type="text" name="TelePhone" class="regis_text"><br><br>
                    Gender:  <input type="radio" name="sex" value="male">
                    Male :<input type="radio" name="sex" value="female">Female <br><br>
                    Status:<select  name="Status" class="status" >
                        <option value="International">International</option>
                        <option value="Permanent">Permanent</option>
                        <option value="Citizen">Citizen</option>
                    </select><br><br>
                    
                    Current_past: <input type="radio" name="Current_past" value="Current Student">Current Student
                    <input type="radio" name="Current_Past" value="Past Student"> Past Student<br><br>
                    Semester: <select type="Semester" class="Semester">
                        <option value="Winter">Winter</option>
                        <option value="Fall"> Fall </option>
                    </select><br> <br>
                    Year:<input type="number" name="Year" class="regis_text" ><br><br>
                    <input  type="submit" value="register" class="button_register" />
                </form>


            </div>
    </body>
</html>
