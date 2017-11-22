
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <script>   
function fun1(){
a4=true; 
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
      
           
     if(a4=== true)
     {
     document.getElementById("result").action='ResultProcessing.jsp';
     }
               
                
           
}
</script> 
 </head>
    
    
<form method ="post" id='result'>
 
<style>
    
body {
    background-color:#C0C0C0;
    text-align: centre;
}  
</style>

<img src="imag2.jpg"  height ="250"  width="1400">
 
<table align ="center">
    <tr>
        <td>Email </td><td><input type="text" name ="Email" id="Email"></td>
    </tr>
    
    <tr>
        <td><input type ="submit" id ="b1" value="submit" onClick='return fun1()'></td>
    </tr>
</table>
 <img src="imag1.jpg"  height ="300"  width="1400">
     
    </form>
            
    </body>
</html>
