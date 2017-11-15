
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    <script>
 
    function f1()
            {
                a1=document.getElementById("Sname");
                a2=document.getElementById("Password");
                a3=document.getElementById("t3");
                a4=document.getElementById("Contact_No");
                a6=document.getElementById("Dept");
                a7=document.getElementById("Roll_No");
                a8=document.getElementById("Fname");
                a9=document.getElementById("SEX");
                a10=document.getElementById("semester");
                a11=false;
                if(a1.value=="")
                {
                    alert("Fill Your Name!!!");
                    a1.focus();
                    a11=true;
                    return false;
                }
                 if(a8.value=="")
                {
                    alert("Fill Your Father Name!!!");
                    a8.focus();
                    a11 =true;
                    return false
                }
                
                a5=document.getElementById("Email");
                email=a5.value;
                at=email.indexOf("@");
                dot=email.lastIndexOf(".");
                if(email.length<10 || at<4 || dot<7 || email.length-dot<3 || dot-at<3)
                {
                    alert("Invalid Email");
                    a5.focus();
                    a11=true;
                    return false;
                }
                

                if(a2.value!=a3.value || a2.value.length<8)
                {
                    alert("Both password must be same and min. 8 characters.");
                    a3.focus();
                    a11=true;
                    return false;
                }
   
                  if(a9.value=="")
                {
                    alert("Select Your Gender!!!");
                    a9.focus();
                    a11=true;
                    return false;
                }
   
               if(a6.value=="")
                {
                    alert("Choose A Department!!!");
                    a6.focus();
                    a11 =true;
                    return false;
                }   
                
                if(a10.value=="")
                {
                    alert("Choose A Semester!!!");
                    a10.focus();
                    a11 =true;
                    return false;
                } 
             if(a4.value.length!=10)
                {
                    alert("Invalid Mobile Number!!!");
                    a4.focus();
                    a11=true;
                    return false;
                }
                else
                {
                    for(i=0;i<10;i++)
                    {
                        s=a4.value.substring(i,i+1);
                        if(s<'0' || s>'9')
                        {
                            alert("Non Digit Mobile Number!!");
                            a11=true;
                            return false;
                        }
                    }
                }
               
                 if(a7.value=="")
                {
                    alert("Fill Your Roll_No!!!");
                    a7.focus();
                    a11=true;
                    return false;
                }
                if(a11=== false)
         {
         document.getElementById("myform").action='registerprocessing.jsp';
         } 
                
      }
            </script>
            
    </head>
    <img src="imag2.jpg"  height ="250"  width="1400">  
    <form method="get" id ="myform">
       
    
            <style>
body {
    background-color:#C0C0C0;
}
</style>
        
        <table align="center">
            <tr>
                <td>Name:</td><td><input type="text" id='Sname' name='Sname'></td>                
           
                <td>Father's_Name:</td><td><input type="text" id='Fname' name="Fname"></td>                
          
             
            </tr>
                         
            <tr>
                <td>Email id:</td><td><input type='text'  id='Email' name='Email'></td>                
            
                <td>Password:</td><td><input type='password' id ='Password' name='Password'></td>                
            <td>Confirm Password:</td><td><input type='password' id ='t3' name='t3'></td>                
              </tr>
              <tr><td>Sex:</td><td><select name="SEX" id ='SEX'>
				<option>Select</option>
					<option>Male</option>
					<option>Female</option>
                                                                                            	<option>Others</option>
					</select>
					</td>
             
            <td>Department:</td><td><select name="Dept" id ='Dept'>
					<option>Select </option>
					<option>M.Sc</option>
					<option>MCA</option>
                                                                                            	
					</select>
					</td></tr>
                 
             
                     
            <td>Semester:</td><td><select name="semester" id ='semester'>
					<option>Select </option>
					<option>I</option>
					<option>II</option>
                                                                                            	<option>III</option>
					<option>IV</option>
                                                                                            	<option>V</option>
					<option>VI</option>
                                                                                            	
					</select>
					</td></tr>
                 
               
          
        <tr>
               <td>Contact No:</td><td><input type='text' id='Contact_No' name='Contact_No'></td>     
               <td>Roll No:</td><td><input type='text' id='Roll_No' name='Roll_No'></td>     
                
            </tr>
           
                <td></td><td></td><td><input type="submit"  VALUE="submit"  onclick='return f1()'></td>
            </tr>
 
        </table>
      <img src="imag1.jpg"  height ="300"  width="1400">
    </form>
      </body>
      </html>
