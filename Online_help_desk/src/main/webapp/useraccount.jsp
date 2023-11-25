<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="styles/useraccount.css">
            <title>User Account</title>
        </head>

        <body>
            <div class="container">
                <c:forEach var="user" items="${userDetails}">
                
                <c:set var="username" value="${user.username}"/>
                <c:set var="firstname" value="${user.firstname}"/>
                <c:set var="telephone" value="${user.telephone}"/>
                <c:set var="email" value="${user.email}"/>
                <c:set var="address" value="${user.address}"/>
                
                
                    <div class="row">
                        <div class="col-md-6">
                            <div class="profile-links">
                                <img src="image/User.jpg" alt="">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Logout</a></li>
                            </div>
                        </div>
                        <div class="col-md-6">

                            <div class="mt-custum">
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Username
                                        </div>
                                        <div class="col-4">
                                            ${user.username}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Name
                                        </div>
                                        <div class="col-4">
                                            ${user.firstname}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Contact No
                                        </div>
                                        <div class="col-4">
                                            ${user.telephone}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Email
                                        </div>
                                        <div class="col-4">
                                            ${user.email}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Gender
                                        </div>
                                        <div class="col-4">
                                            ${user.gender}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            NIC
                                        </div>
                                        <div class="col-4">
                                            ${user.nic}
                                        </div>
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="row">
                                        <div class="col-8">
                                            Address
                                        </div>
                                        <div class="col-4">
                                            ${user.address}
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

						 </div>
                    </div>
                </c:forEach>
                
                <c:url value="updateuser.jsp" var="userupdate">
                	<c:param name="username" value="${username}"/>
                	<c:param name="firstname" value="${firstname}"/>
                	<c:param name="telephone" value="${telephone}"/>
                	<c:param name="email" value="${email}"/>
                	<c:param name="address" value="${address}"/>
                	
                </c:url>
                <a href="${userupdate}">
                <input type="button" name="update" value="Update My Data">
                </a>
                <br>
                
                <c:url value="deleteuser.jsp" var="userdelete">
                	<c:param name="username" value="${username}"/>
                	<c:param name="firstname" value="${firstname}"/>
                	<c:param name="telephone" value="${telephone}"/>
                	<c:param name="email" value="${email}"/>
                	<c:param name="gender" value="${gender}"/>
                	<c:param name="nic" value="${nic}"/>
                	<c:param name="address" value="${address}"/>
                	
                </c:url>
                <a href="${userdelete}">
                <input type="button" name="delete" value="Delete My Account">
                </a>
                
                
                
            </div>
            <!--      ${user.uid}
        
        ${user.lastname}
        ${user.telephone}
        
        ${user.gender}
        ${user.nic}
        ${user.address}
        ${user.password} 
        <c:forEach var="tkt" items="${ticketDetails}">
                            <h3 class="mt-5">history records</h3>
                            <div class="btn">
                               	 ${tkt.tid}
                               	 ${tkt.title}
                                 ${tkt.email}
                                 ${tkt.department}
                                 ${tkt.priority}
                                 ${tkt.problem}
                                 ${tkt.phone}
                                 ${tkt.username}
                                 
                               
                               
                            </div>
                            </c:forEach > -->



        </body>

        </html>