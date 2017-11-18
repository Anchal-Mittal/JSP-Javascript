<%@page import="java.sql.* "contentType="text/html" pageEncoding="UTF-8"%>
<%
try{
 String Tname= request.getParameter("Tname");
 String Temail= request.getParameter("Temail");
 String tpassword= request.getParameter("tpassword");
 String SEX= request.getParameter("SEX");
 String department= request.getParameter("department");
 String specialization= request.getParameter("specialization");
 int contact_no= Integer.parseInt(request.getParameter("contact_no"));
 int  Tid = Integer.parseInt(request.getParameter("Tid"));
 Class.forName("org.gjt.mm.mysql.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/ONLINE_EXAMINATION","root","");
 PreparedStatement ps=con.prepareStatement("Insert into teacher values(?,?,?,?,?,?,?,?)");
 ps.setInt(1,Tid);
 ps.setString(2,Temail);
 ps.setString(3,Tname);
 ps.setString(4,tpassword);
 ps.setString(5,department);
 ps.setString(6,specialization);
 ps.setInt(7,contact_no);
 ps.setString(8,SEX);
 int s= ps.executeUpdate();
 out.write(s);
}
catch(Exception e){
  e.printStackTrace();
 }
     
%>
