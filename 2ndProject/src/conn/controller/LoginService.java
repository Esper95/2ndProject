package conn.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.model.memberDAO;
import conn.model.memberDTO;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");

		memberDAO dao = new memberDAO();
		memberDTO dto = new memberDTO(id, pw);
		memberDTO user =dao.login(dto);
		
		if(user!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
		}
		System.out.println(user);
		response.sendRedirect("home.jsp");
	}

}
