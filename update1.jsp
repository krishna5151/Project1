<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update1 Page</title>
</head>
<body>


<%
 int eid=Integer.parseInt(request.getParameter("eid"));

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
int mobno=Integer.parseInt(request.getParameter("mobno"));
String martialstatus=request.getParameter("martialstatus");
String nationality=request.getParameter("nationality");
String address=request.getParameter("address");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
	Statement st=con.createStatement();
	st.executeUpdate("update testemployee set fname='"+ fname +"',lname='"+ lname +"',email= '"+ email +"',mobno='"+ mobno +"',martialstatus='" + martialstatus +"',nationality= '"+ nationality +"',address='"+ address +"'where eid ='" + eid +"' ");
	response.sendRedirect("viewdetails.jsp");
}catch(Exception e){
	e.printStackTrace();
}






%>

</body>
</html>