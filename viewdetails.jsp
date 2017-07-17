<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details Page</title>
</head>
<script type="text/javascript">

function updateRecord(eid) {
	var a=document.form;
	a.method="post"
	a.action='update.jsp?eid='+eid;
	a.submit();
}
function deleteRecord(eid){
	var a=document.form;
	a.method="post";
	a.action='delete.jsp?eid='+eid;
	a.submit();
}
</script>
<body>
<form method="post" name="form">
	<table border="1">

		<tr>
			<th>EID</th>
			<th>FIRSTNAME</th>
			<th>LASTNAME</th>
			<th>EMAIL</th>
			<th>MOBILENO</th>
			<th>MARTIAL STAUS</th>
			<th>NATIONALITY</th>
			<th>ADDRESS</th>
		</tr>

		<%
		
			try {
				;
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/knowledgeq", "root", "root");
				String sql = "select * from testemployee";
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
		%>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			<td><%=rs.getString(8)%></td>
			<td><input type="button" class="btn btn-success" name="update" value="Update" onclick="updateRecord(<%=rs.getInt(1)%>);"></td>
			<td><input type="button" class="btn btn-danger" name="delete" value="Delete" onclick="deleteRecord(<%=rs.getInt(1)%>);"></td>
		</tr>

		<%
			}
		%>
		<%
			} catch (Exception e) {
				out.println(e.getMessage());
			}
		%>
	</table>
	</form>
</body>
</html>