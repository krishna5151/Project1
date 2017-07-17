<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details Page</title>
</head>
<body>
<form action="./employeeservlet" method="post">

FIRSTNAME : <input type="text" name="fname" required>
LASTNAME : <input type="text" name="lname" required>
EMAIL : <input type="text" name="email" required>
MOBILE NO : <input type="text" name="mobno" required>
MARTIAL STATUS : <input type="text" name="martialstatus" required>
NATIONALITY : <input type="text" name="nationality" required>
ADDRESS : <input type="text" name="address" required>

<input type="submit" value="submit">
<input type="reset" value="cancel">

</form>
</body>
</html>