<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Page</title>
</head>
<body>

<%
int eid=Integer.parseInt(request.getParameter("eid"));

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq","root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("delete from testemployee where eid =" + eid +" ");
	response.sendRedirect("viewdetails.jsp");
}catch(Exception e){
	e.printStackTrace();
}

%>


</body>
</html>