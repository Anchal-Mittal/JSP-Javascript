<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
  <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <script>
        
function myfun()

{
               a1=document.getElementById("uname");
               a2=document.getElementById("pass");
               a3=true;        
                if(a1.value =="")
                {
                   window.alert("Fill Your Email!!!");
                    a1.focus();
                    a3= false;
                }
                if(a2.value =="")
                {
                   window.alert("Plzz enter your password");
                    a2.focus();
                    a3= false;
                }
         if(a3=== true)
         {
         document.getElementById("form1").action='checkmail.jsp';
         }
    
}
  </script>   
    <img src="imag2.jpg"  height ="250"  width="1400">
 
    <form method="get" id="form1" >
            
<style>
body {
    background-color:#C0C0C0;
}
</style>
        

        <table align="center">
       
            <tr>
                <td>Enter Mail Id:</td><td><input type='text' id='uname' name='uname'></td>                
         
            </tr>
            <tr>
                <td>Password:</td><td><input type='password' id='pass' name='pass'></td>                
         
            </tr>
            
            <tr><td><input type="submit" name="b1" onClick =  'return myfun()'    value="Submit"></td>
            </tr>
   <tr>
       
       <td><a href ="registerstu.jsp">Student Register</td>                
         
            </tr>
       </table>
       
<img src="imag1.jpg"  height ="300"  width="1400">
      </body>
      </html>
