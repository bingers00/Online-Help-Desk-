<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>deleteuser</title>
</head>
<body>

	<%
		String username = request.getParameter ("username");
		String firstname = request.getParameter ("firstname");
		String telephone = request.getParameter ("telephone");
		String email = request.getParameter ("email");
		String gender = request.getParameter ("gender");
		String nic = request.getParameter ("nic");
		String address = request.getParameter ("address");
	%>
	
	<h1> Are you want to delete permenently your account?</h1>
	
	<form action="delete" method="post">
        User Name <input type="text" name="username" value="<%=username %>" readonly><br>
        Name <input type="text" name="firstname" value="<%=firstname %>" readonly><br>
        Contact No<input type="tel" name="telephone" value="<%=telephone%>" readonly><br>
        Email <input type="email" name="email" value="<%=email%>" readonly><br>
        Gender <input type="radio" name="gender" value="<%=gender%>" readonly> Male 
                <input type="radio" name="gender" value="<%=gender %>" readonly> Female <br>
        NIC <input type="text" name="nic" value="<%=nic %>" readonly><br>
        Address <input type="text" name="address" value="<%=address%>" readonly><br>
       
        <input type="submit" name="submit" value="Delete My Data"><br>
    </form>
	


</body>
</html>