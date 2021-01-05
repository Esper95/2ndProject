package conn.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.model.memberDAO;
import conn.model.memberDTO;

/**
 * Servlet implementation class JoinService
 */
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub\
		request.setCharacterEncoding("utf-8");
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		String name =request.getParameter("name");
		String phone =request.getParameter("phone");
		String email =request.getParameter("email");
		
		memberDAO dao = new memberDAO();
		memberDTO dto = new memberDTO(id, pw, name, phone, email);
		int cnt =dao.join(dto);
		
		if(cnt>0) {
			response.sendRedirect("login.jsp");
		}
	
	}

}
