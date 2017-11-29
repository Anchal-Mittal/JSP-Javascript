
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
        function myfun()
             { 
               a1=document.getElementById("email");
              
                a2=document.getElementById("scode");

                a3=true;        
                email=a1.value;
                at=email.indexOf("@");
                dot=email.lastIndexOf(".");
                if(email.length<10 || at<4 || dot<7 || email.length-dot<3 || dot-at<3)
                {
                    alert("Invalid Email");
                    a1.focus();
                    a3=false;
                    return a1;
                }
                
                if(a2.value =="")
                 {        
                   window.alert("Plzz enter the subject code ");
                    a2.focus();
                    a3= false;
                    return a2;
                }
               if(a3=== true)
                {
                    document.getElementById("form1").action='subjectAssignmentProcessing.jsp';
                   }
    
}
  </script>   
       
     </head>
   
                <img src="imag2.jpg"  height ="250"  width="1400">
 
              <form method="post" id="form1" >
            
 <style>
body {
    background-color:#C0C0C0;
}
</style>
        
            <table align =center>

            <tr>
                <td>Enter Mail Id:</td><td><input type='text' id='email' name='email'></td>                
         
            </tr>
           
             <tr>
                <td>Enter Subject Code:</td><td><input type='text'  id='scode' name='scode'></td>                
         
            </tr>
              
            <tr><td><input type="submit" name="b1" onClick =  'return myfun()'    value="Submit"></td>
            </tr>
                </table>

                            <img src="imag1.jpg"  height ="300"  width="1400">
              </form>
                            </body>
</html>
