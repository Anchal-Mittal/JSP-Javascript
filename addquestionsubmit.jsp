
<%@page import="java.sql.* "contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");

%>
<jsp:forward page="login.jsp"></jsp:forward>

<%
}
try {
String scode=(String)session.getAttribute("scode");    
String questions= request.getParameter("questions");
String op1= request.getParameter("op1");
String op2= request.getParameter("op2");
String op3= request.getParameter("op3");
String op4= request.getParameter("op4");
String ans= request.getParameter("ans");
Class.forName("org.gjt.mm.mysql.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
PreparedStatement ps = con.prepareStatement("Insert into question  values(?,?,?,?,?,?,?)");
ps.setString(1,scode);
ps.setString(2, questions);
ps.setString(3,op1);
ps.setString(4,op2);
ps.setString(5,op3);
ps.setString(6,op4);
ps.setString(7, ans);

int s=ps.executeUpdate();
 if(s!=0)
{
response.sendRedirect("addquestion.jsp");
}
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
        
%>