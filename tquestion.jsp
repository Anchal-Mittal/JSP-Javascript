
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
%>         
 <%
         
           String scode=(String)session.getAttribute("scode");   
           Class.forName("org.gjt.mm.mysql.Driver");

           Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
 
%>

<html>

<style>
    
body {
    background-color:#C0C0C0;
    text-align: centre;
}  
</style>

<form method ="get" action ="checkingAnswer.jsp">
            <table align ="center">
              
  <%    
         PreparedStatement stmt1;
        
         ResultSet rs1;
         stmt1=con.prepareStatement("Select * from subject where scode =?");
           stmt1.setString(1,scode);
         rs1=stmt1.executeQuery();
         int countt =0;   
                    while(rs1.next())
                    {
                        
                        
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
  <%++countt;
                    }%>
                    <hr>
                    <table align="center">        
    <%
     
         PreparedStatement stmt;
        
         ResultSet rs;
        stmt=con.prepareStatement("Select * from question where scode=?");
         stmt.setString(1,scode);
        
        rs=stmt.executeQuery();
        int i=1;   
                    while(rs.next())
                    {
                        
                        
                       
                        String s1=rs.getString(2);
                        String s2=rs.getString(3);
                        String s3=rs.getString(4);
                        String s4=rs.getString(5);
                        String s5=rs.getString(6);
                       
                                                                               

      
%>        

                
             
            <tr>
                <td style="text-align: center;">Question</td><td><%=i   %>:<%=s1%> </td>
            </tr>
            <tr>
                <td>Option 1:</td><td><input type="radio"  value="<%=1%>" name="radio1 <%=i%> "/><%=s2%></td>
            </tr>
            <tr>
                <td>Option 2:</td><td><input type="radio"  value="<%=2%>" name="radio1 <%=i%> "/><%=s3%></td><td></td>
            </tr>
            <tr>
                <td>Option 3:</td><td><input type="radio"  value="<%=3 %>" name="radio1 <%=i%> "/><%=s4%></td><td></td>
            </tr>
            <tr> 
                <td>Option 4:</td><td><input type="radio"  value="<%=4%>" name="radio1 <%=i%> "/><%=s5%></td><td></td>
            </tr>
            <tr><td><br></td></tr>           
    <% i++; }   %>   
    
            
             <tr>
                 <td><input type="submit" name="b1" value="submit"></td><td><a href="logout.jsp">Logout</a></td>
              </tr>
    
       <div id="question"></div>
    <hr>
        </table>
        
        </form>
    </body>
</html>

