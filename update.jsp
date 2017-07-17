<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.Connection"%>
      <%@ page import="java.sql.DriverManager"%>
       <%@ page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update page</title>
</head>
<body>
<form  action="./update1.jsp" method="post">
<table border="1">



<tr>
	<th>EID</th>
	<th>FISTNAME</th>
	<th>LASTNAME</th>
	<th>EMAIL</th>
	<th>MOBILENO</th>
	<th>MARTIAL STAUS</th>
	<th>NATIONALITY</th>
	<th>ADDRESS</th>
</tr>
<%
int eid=Integer.parseInt(request.getParameter("eid"));

try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
String sql = "select * from testemployee where eid= ' "+ eid +" ' ";
Statement st =con.createStatement();
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%> 
<tr>
	<td><input type="text" name="eid" value="<%=rs.getInt("eid")%>"></td>
	<td><input type="text" name="fname" value="<%=rs.getString("fname")%>"></td>
	<td><input type="text" name="lname" value="<%=rs.getString("lname")%>"></td>
	<td><input type="text" name="email" value="<%=rs.getString("email")%>"></td>
	<td><input type="text" name="mobno" value="<%=rs.getInt("mobno")%>"></td>
	<td><input type="text" name="martialstatus" value="<%=rs.getString("martialstatus")%>"></td>
	<td><input type="text" name="nationality" value="<%=rs.getString("nationality")%>"></td>
	<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
	
</tr>
<tr>
	
	<td><input type="submit" class="btn btn-btn-success" name="Submit" value="Update"></td>
	
</tr>
 
<%
}
}
catch(Exception e){
	e.printStackTrace();
}
%>


</table>
</form>

</body>
</html>