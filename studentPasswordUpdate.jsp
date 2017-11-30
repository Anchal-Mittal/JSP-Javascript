
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
<%
try {
String Email= request.getParameter("Email");
String Password= request.getParameter("Password");

Class.forName("org.gjt.mm.mysql.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
PreparedStatement ps=con.prepareStatement("Update student set  Password =? where  Email= ?");

ps.setString(1,Password);
ps.setString(2,Email);
int s=ps.executeUpdate();
if(s!=0){
      
response.sendRedirect("welcome.jsp");
}
out.write(s);
con.close();
}
catch(Exception e)
{
e.printStackTrace();
//System.out.print(e);
}
        
%>