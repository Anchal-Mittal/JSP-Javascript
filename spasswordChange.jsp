
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
  request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
 <jsp:forward page="login.jsp"></jsp:forward>
<%
 }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <script>   
        function fun1(){
        a1=document.getElementById("oldPassword");
        a2=document.getElementById("Password");
        a3=document.getElementById("cpass");
        a4=true; 
        a5=document.getElementById("Email");
        email=a5.value;
        at=email.indexOf("@");
        dot=email.lastIndexOf(".");
        if(email.length<10 || at<4 || dot<7 || email.length-dot<3 || dot-at<3) {
                    alert("Invalid Email");
                    a5.focus();
                    a11=true;
                    return false;
                }
                
        if(a1.value ===" ")      {
          alert("Plz fill the Previous Password ")
          a1.focus();
          a4 = true;
          return false;
          }
        if(a2.value ===" ")      {
           alert("Plz fill the New Password ")
           a2.focus();
           a4 = true;
           return false;
         }
        if(a3.value ===" ")      {
          alert("Plz fill the Confirm Password ")
          a4= true;
          a3.focus();
          return false;
         }
        if(a3.value!==a2.value || a2.value.length<8)   {
           alert("Both password must be same and min. 8 characters.");
           a4=true;        
           a2. focus();
           return false;
         }   
       if(a4=== true) {
           document.getElementById("password").action='studentPasswordUpdate.jsp';
          }
                        
}
</script> 
    </head>
        <form method ="get" id='password'>
<style>
  body {
    background-color:#C0C0C0;
  }
</style>
    <img src="imag2.jpg"  height ="250"  width="1400">
 
<table align ="center">
    <tr><td>Email </td><td><input type="text" name ="Email" id="Email"></td></tr>
    <tr><td>Previous Password</td><td><input type ="password" id ="oldPassword" name="oldPassword"></td></tr>
    <tr><td>New Password</td><td><input type ="password" id ="Password" name="Password"></td></tr>
    <tr><td>Confirm Password</td><td><input type ="Password" id ="cpass" name='cpass'></td></tr>
    <tr><td><input type ="submit" id ="b1" value="submit" onClick='return fun1()'></td></tr>
</table>
    </form>
   <img src="imag1.jpg"  height ="300"  width="1400">
   
    </body>
</html>
