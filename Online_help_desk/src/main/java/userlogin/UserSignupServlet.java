package userlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserSignupServlet")
public class UserSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		
		isTrue = UserLoginDBUtil.inserstuser(username, firstname, lastname, telephone, email, gender, nic, address, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		 
		
	}

}
