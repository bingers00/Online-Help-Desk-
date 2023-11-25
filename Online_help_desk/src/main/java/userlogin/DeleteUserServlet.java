package userlogin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		boolean isTrue;
		
		isTrue = UserLoginDBUtil.deleteUser(username);
		
		if (isTrue == true)  {
			RequestDispatcher dispatcher = request.getRequestDispatcher("usersignup.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<User> userDetails = UserLoginDBUtil.getUserDetails(username);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}
