<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<form action="login" method="post">
		<div class="form-group" style="padding-top:50px;">
		<div>
			 <input type="text" class="form-control" name="username" placeholder="User Name" required><br>
			 <input type="password" class="form-control" name="password" placeholder="Passwrod"><br>
		</div>	 
			<div style="padding-top:40px;">
			<input type="submit" class="btn btn-success btn-block" name="login" value="login">
			</div>
			
			<div style="padding:150px 50px 50px 150px;">
			<img src="image/loginimage.jpg" align="bottom" >
			</div>
		</div>
	</form>
	</div>
</body>
</html>