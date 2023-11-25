<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new ticket</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
 <div class="container">
        <form action="put" method="POST" class="form-ticket">
            <h2>ADD NEW TICKET</h2><br>
            <div class="form-group">
                <input type="text" class="form-control" name="title" placeholder="Title" required>
            </div><br>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Email" required>
            </div><br>
            <div class="form-group">
                <select input type="text" class="form-control" name="department" placeholder="Department" required>
                    <option value="accounts">Accounts</option>
                    <option value="it">IT</option>
                    <option value="hr">HR</option>
                    <option value="marketing">Marketing</option>
                    </select>
            </div><br>
            <div class="form-group">
                <select input type="text" class="form-control" name="priority" placeholder="Priority" required>
                    <option value="low">Low</option>
                    <option value="medium">Medium</option>
                    <option value="high">High</option>
                    <option value="emergency">Emergency</option>
                    </select>
            </div><br>
            <div class="form-group">	
                <input type="text" class="form-control" name="problem" placeholder="Problem" required>
            </div><br>
           
            <div class="form-group">
                <input type="tel" class="form-control" name="phone" placeholder="Contact Number" required>
            </div><br>
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Customer User Name" required> 
            </div><br>
            
            
            <input type="submit" class="btn btn-success btn-block" name="submit" value="Submit">
        </form>
        </div>

</body>
</html>