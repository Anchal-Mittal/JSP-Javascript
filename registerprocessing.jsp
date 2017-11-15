
<%@page import="java.sql.* "contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%--<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
%>
--%>
<%
try {
String Sname= request.getParameter("Sname");
String Fname= request.getParameter("Fname");
String Email= request.getParameter("Email");
String Password= request.getParameter("Password");
String SEX= request.getParameter("SEX");
String Dept= request.getParameter("Dept");
String Contact_No= (request.getParameter("Contact_No"));
String Roll_No = request.getParameter("Roll_No");
String  semester = request.getParameter("semester");
Class.forName("org.gjt.mm.mysql.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
PreparedStatement ps = con.prepareStatement("Insert into student  values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,Password);
ps.setString(2,Dept);
ps.setString(3,Email);
ps.setString(4,Roll_No);
ps.setString(5,Sname);
ps.setString(6,Fname);
ps.setString(7,SEX);
ps.setString(8,semester);
ps.setString(9,Contact_No);
int s=ps.executeUpdate();
 if(s!=0)
{
response.sendRedirect("registerstu.jsp");
}
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
        
%>