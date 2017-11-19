
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script>
    
         function fun1(){
       
            a1=document.getElementById("questions");
            a2=document.getElementById("op1");
            a3=document.getElementById("op2");
            a4=document.getElementById("op3");
            a5=document.getElementById("op4");
            a6=document.getElementById("ans");
            a7=true;
            if(a1.value==="")       {
                    a1.focus();
                    a7=false;
                    return a1;
                }
                 if(a2.value==="")  {
                    alert("add the options 1!!!");
                    a2.focus();
                    a7=false;
                    return a2;
                }
                 if(a3.value==="") {
                    alert("add the options 2!!!");
                    a3.focus();
                    a7=false;
                    return a3;
                }
                 if(a4.value==="")   {
                    alert("add the options 3 !!!");
                    a4.focus();
                    a7=false;
                    return a4;
                }
                 if(a5.value==="")  {
                    alert("add the options 4!!!");
                    a5.focus();
                    a7=false;
                    return a5;
                }
                 if(a6.value==="")   {
                    alert("add the answer !!!");
                    a6.focus();
                    a7=false;
                    return a6;
                }
                if(a7===true){
                document.getElementById("question").action='addquestionsubmit.jsp';
                }
       }
      </script>  
    </head>
  
    <%
         Class.forName("org.gjt.mm.mysql.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
    
    %>


<form method ="post"  id="question">
<style>
  body {
    background-color:#C0C0C0;
   }
 </style> 
<table align ="center">
              
  <%    
         PreparedStatement stmt1;
         ResultSet rs1;
         stmt1=con.prepareStatement("Select * from subject");
         rs1=stmt1.executeQuery();
         int countt =0;   
                    while(rs1.next()){
                       countt++;
                        
     %>        
            <tr>
                <td>Subject Name:</td><td><div id="d1"></div></td><td><%=rs1.getString(2) %></td><td></td>
            </tr>
      
            <tr>
                <td>Total Questions:</td><td><div id="d2"></div></td><td><%=countt%></td><td></td>
            </tr>
            
            <tr>
                <td>Marks:</td><td><div id="d3"></div></td><td><%=rs1.getString(9)%></td><td></td>
            </tr>
            
            <tr>
                <td>Duration:</td><td><div id="d4"></div></td><td><%=rs1.getString(4)%></td><td></td>
            </tr>
            
             <tr>
                <td>Start Time:</td><td><div id="d5"></div></td><td><%=rs1.getString(5)%></td><td></td>
            </tr>
            
            <tr>
                <td>End Time:</td><td><div id="d6"></div></td><td><%=rs1.getString(6)%></td><td></td>
            </tr>
           
      </table> 
  <%   ++countt;
   }%>
       
    <hr>
        <table align="center">
            <tr>
                <td>Question:</td><td><textarea  id="questions" name ="questions"  style="width:500px"></textarea></questions"  styletd><td></td>
            </tr>
    
            <tr>
                <td>Option 1:</td><td><input type="text"  name="op1" style="width:500px" id="op1"></td><td></td>
            </tr>
            
            <tr>
                <td>Option 2:</td><td><input type="text" name="op2" style="width:500px" id="op2"></td><td></td>
            </tr>
            
            <tr>
                <td>Option 3:</td><td><input type="text"  style="width:500px" name="op3"  id="op3"></td><td></td>
            </tr>
            <tr>
                <td>Option 4:</td><td><input type="text"  style="width:500px" name="op4" id="op4"></td><td></td>
            </tr>
           
           <tr>
               <td>Answer:</td><td><input type ="text" style="width:500px" id="ans" name="ans"></td>
           </tr>
           
            <tr>
                <td></td><td><input type="submit" name="Save" value="Save"  onClick='return  fun1()' > </td><td></td>
            </tr>
        
     </table>
     <hr>
     <div id="questions"></div>
     <hr>
        
        </form>
    </body>
</html>
 
