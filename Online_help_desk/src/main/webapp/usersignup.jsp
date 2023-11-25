<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="ISO-8859-1">
    <title>User Register Page</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
        <form action="insert" method="POST" class="form-signup">
            <h2>Register</h2><br>
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="User Name" required>
            </div><br>
            <div class="form-group">
                <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
            </div><br>
            <div class="form-group">
                <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
            </div><br>
            <div class="form-group">
                <input type="tel" class="form-control" name="telephone" placeholder="Contact Number" required>
            </div><br>
            <div class="form-group">	
                <input type="email" class="form-control" name="email" placeholder="Email" required>
            </div><br>
            <div class="form-group">
                <h6>Gender :</h6>
                <input type="radio" name="gender" value="Male" checked> Male
                <input type="radio" name="gender" value="Female" checked> Female
            </div><br>
            <div class="form-group">
                <input type="text" class="form-control" name="nic" placeholder="NIC" required>
            </div><br>
            <div class="form-group">
                <input type="text" class="form-control" name="address" placeholder="Address" required> 
            </div><br>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div><br>
            <div class="form-group">
                <input type="password" class="form-control" name="cnfr_password" placeholder="Confirm Password" required>
            </div><br>
            <div class="form-group">
                <label>
                    <input type="checkbox" name="" required>
                    I accept the <a href="#">Terms of Use</a> & <a href="#">Privacy Policy</a>
                </label>
            </div><br>
            <input type="submit" class="btn btn-success btn-block" name="submit" value="Submit">
        </form>
        </div>
    </body>
    </html>
