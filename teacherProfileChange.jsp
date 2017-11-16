
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%-- 
    Document   : p2.jsp
    Created on : Aug 18, 2017, 10:06:22 AM
    Author     : Anchal
%>
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");


<jsp:forward page="login.jsp"></jsp:forward>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    
    <script>
 
    function f1()
            {
                a1=document.getElementById("Tname");
                a2=document.getElementById("tpassword");
                a3=document.getElementById("t3");
                a4=document.getElementById("contact_no");
                 
               
                a6=document.getElementById("department");
                a7=document.getElementById("Tid");
                a8=document.getElementById("specialization");
                a9=document.getElementById("SEX");
                a10=true;
                
                if(a1.value==="")
                {
                    alert("Fill Your Name!!!");
                    a1.focus();
                    a10=false;
                }
                
                a5=document.getElementById("Temail");
                email=a5.value;
                at=email.indexOf("@");
                dot=email.lastIndexOf(".");
                if(email.length<10 || at<4 || dot<7 || email.length-dot<3 || dot-at<3)
                {
                    alert("Invalid Email");
                    a5.focus();
                    a10= false;
                }
                

                if(a2.value!==a3.value || a2.value.length<8)
                {
                    alert("Both password must be same and min. 8 characters.");
                    a3.focus();
                    a10= false;
                }
   
                  if(a9.value==="")
                {
                    alert("Select Your Gender!!!");
                    a9.focus();
                    a10=false;
                }
   
               if(a6.value==="")
                {
                    alert("Choose A Department!!!");
                    a6.focus();
                    a10=false;
                }   
              
             if(a4.value.length!==10)
                {
                    alert("Invalid Mobile Number!!!");
                    a4.focus();
                    a10=false;
                }
                else
                {
                    for(i=0;i<10;i++)
                    {
                        s=a4.value.substring(i,i+1);
                        if(s<'0' || s>'9')
                        {
                            alert("Non Digit Mobile Number!!");
                            a10=false;
                        }
                    }
                }
               
                 if(a7.value==="")
                {
                    alert("Fill Your Teacher_id!!!");
                    a7.focus();
                    a10= false;
                }
               
                 if(a8.value==="")
                {
                    alert("Fill Your Specialization!!!");
                    a8.focus();
                    a10= false;
                }
                
               
                 if(a10=== true)
         {
         document.getElementById("form1").action='registerProcessingTeacher.jsp';
         }
            }
            </script>
            
    </head>
    <img src="imag2.jpg"  height ="250"  width="1400">
    
    <form method="post" action="" id="form1">
       
    
            <style>
body {
    background-color:#C0C0C0;
}
</style>
        
        <table align="center">
            <tr>
                <td>Name:</td><td><input type="text" id='Tname' name='Tname'></td>                
           
            </tr>
                         
            <tr>
                <td>Email id:</td><td><input type='text' id='Temail'   name='Temail'></td>                
            
                <td>Password:</td><td><input type='password' id='tpassword' name='tpassword'></td>                
            <td>Confirm Password:</td><td><input type='password' id ='t3' name='t3'></td>                
              </tr>
              <tr><td>Sex:</td><td><select id = 'SEX' name="SEX">
				<option>Select </option>
					<option>Male</option>
					<option>Female</option>
                                                                                            	<option>Others</option>
					</select>
				</td>
             
            <td>Department:</td><td><select id ='department' name="department">
					<option>Select </option>
					<option>M.Sc</option>
					<option>MCA</option>
                                                                                            	
					</select>
					</td></tr>
                 
             
                                                                                          	            
          
        <tr>
          
                <td>Contact No:</td><td><input type='text' id='contact_no' name='contact_no'></td>     
                
               <td>Tid:</td><td><input type='text' id='Tid' name='Tid'></td>     
                
            </tr>
            <tr><td>Specialization :</td><td><input type ='text' id='specialization' name ='specialization'></td></tr>
           
                <td></td><td></td><td><input type="submit"  VALUE="submit"  onclick='return f1()'></td>
            </tr>
 
        </table>
      <img src="imag1.jpg"  height ="300"  width="1400">
        </body>
    </form>

</html>
