<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update profile</title>
</head>
<body>

	<%
		String username = request.getParameter ("username");
		String firstname = request.getParameter ("firstname");
		String telephone = request.getParameter ("telephone");
		String email = request.getParameter ("email");
		String address = request.getParameter ("address");
	%>
	
    <form action="update" method="post">
        User Name <input type="text" name="username" value="<%=username %>" readonly><br>
        Name <input type="text" name="firstname" value="<%=firstname %>"><br>
        Contact No<input type="tel" name="telephone" value="<%=telephone%>"><br>
        Email <input type="email" name="email" value="<%=email%>"><br>
        Address <input type="text" name="address" value="<%=address%>"><br>
       
        <input type="submit" name="submit" value="Update My Data"><br>
    </form>

</body>
</html>