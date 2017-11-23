

<%@page import="java.sql.* "contentType="text/html" pageEncoding="UTF-8"%>
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
      
    </head>
     <%
         String Email=request.getParameter("Email");
         Class.forName("org.gjt.mm.mysql.Driver");

         Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
    
         PreparedStatement stmt;
        
         ResultSet rs;
        stmt=con.prepareStatement("Select * from student where Email=?");
        stmt.setString(1,Email);
        rs=stmt.executeQuery();
        
        while(rs.next()){
        String s1=  rs.getString(5); 
        String s2=rs.getString(4);
        String s3=rs.getString(6);
        String s4=rs.getString(9);
     %>

        <form method ="get" id="form1">
            <style>
    
body {
    background-color:#C0C0C0;
    text-align: centre;
}  
</style>
            <table align ="center">
              
            <tr>
                <td>Name:</td><td><div id="d1"></div></td><td><%=s1%></td><td></td>
            </tr>
            <tr>
                <td>Roll_NO:</td><td><div id="d2"></div></td><td><%=s2%></td><td></td>
            </tr>
            <tr>
                <td>Father Name:</td><td><div id="d3"></div></td><td><%=s3%></td><td></td>
            </tr>
            <tr>
                <td>Contact_No:</td><td><div id="d4"></div></td><td><%=s4%></td><td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
 
            </table> 
    <%}%>
    
    <%
         PreparedStatement stmt1;
        
        ResultSet rs1;
        stmt1=con.prepareStatement("Select * from  result where  Email=?");
        stmt1.setString(1,Email);
              
        rs1=stmt1.executeQuery();
        int totalob=0;
        int totalmax=0;
        int i=0;
        while(rs1.next()){
        totalob= totalob+ rs1.getInt(3);
        totalmax= totalmax+ rs1.getInt(4);
         i++; 
        String ss1=  rs1.getString(2); 
        
        int ss3=rs1.getInt(3);
        int ss4=rs1.getInt(4);
        %>
      
<hr>
        <table align="center">
               <td>Subject Code:</td><td><div id="d1"></div></td><td><%=ss1%></td><td></td>
            </tr>
            
            <tr>
                <td>Maximum Marks:</td><td><div id="d3"></div></td><td><%=ss3%></td><td></td>
            </tr>
            <tr>
                <td>Obtain Marks:</td><td><div id="d4"></div></td><td><%=ss4%></td><td></td>
            </tr>
      <%  
                        }
                     if(i!=0){
          %>
           <% }
        
        %>
        <hr>
        <div id="result"></div>
        <hr>
        </table>
        <table align ="center">
        <hr>
        <div id="result1"></div>
        <hr>
          <tr>
                <td>Total Marks Obtained:</td><td><div id="d1"></div></td><td><%=totalob%></td><td></td>
                 <td>Total Marks :</td><td><div id="d2"></div></td><td><%=totalmax%></td><td></td>
            </tr>
            
        </table>
        
       
        
        </form>
    </body>
</html>

