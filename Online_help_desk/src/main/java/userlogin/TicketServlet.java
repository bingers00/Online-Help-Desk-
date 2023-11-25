package userlogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketServlet")
public class TicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String email = request.getParameter("email");
		String department = request.getParameter("department");
		String priority = request.getParameter("priority");
		String problem = request.getParameter("problem");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		
		boolean isTrue;
		
		isTrue = UserLoginDBUtil.inserstticket(title, email, department, priority, problem, phone, name);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		 
		
	}

		
		
		
	}


