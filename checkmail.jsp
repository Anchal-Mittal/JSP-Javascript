

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%--
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="login.jsp"></jsp:forward>
--%>

<%

try{
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
    PreparedStatement stmt=con.prepareStatement("Select * from student where Email=? and Password=?");
   stmt.setString(1,request.getParameter("uname"));
   stmt.setString(2,request.getParameter("pass"));
   ResultSet rs=   stmt.executeQuery();
   int count =0;
   while(rs.next())
   {
       out.print(rs.getString(1));
       out.print(rs.getString(3));
       count ++;
   }
   if(count!=0){
         session.setAttribute("islogin", "islogin");
         
         session.setAttribute("Email", request.getParameter("uname"));
     }
    %>
      
    <jsp:forward page="welcome.jsp"></jsp:forward>
     
   
  <%

   if(count==0)
   {
        
    PreparedStatement stmt1=con.prepareStatement("Select * from teacher where Temail=? and tpassword =?");
    stmt1.setString(1,request.getParameter("uname"));
    stmt1.setString(2,request.getParameter("pass"));
    ResultSet rs1=stmt1.executeQuery();
     while(rs1.next())
    {
       out.print(rs1.getString(2));
       out.print(rs1.getString(4));
       count ++;
   }
     if(count!=0){
         session.setAttribute("islogin", "islogin");
         
         session.setAttribute("Email", request.getParameter("uname"));
     }
     response.sendRedirect("teacherWelcome.jsp");
   }
  
    con.close();
}
catch(Exception e)
{ 
e.printStackTrace();
}
       
 %>    
   
    
   