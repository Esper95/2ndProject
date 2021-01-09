package conn.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.model.dataDAO;
import conn.model.dataDTO;

/**
 * Servlet implementation class DataMemory
 */
@WebServlet("/DataMemory")
public class DataMemory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String relation1 = request.getParameter("relation1");
		String relation2 = request.getParameter("relation2");
		String relation3 = request.getParameter("relation3");
		String relation4 = request.getParameter("relation4");
		String relation5 = request.getParameter("relation5");
		
		dataDAO dao = new dataDAO();
		String[] partner =dao.partner();
		/*
		 * int[] relation =new int[5]; relation[0] = Integer.parseInt(relation1);
		 * relation[1] = Integer.parseInt(relation2); relation[2] =
		 * Integer.parseInt(relation3); relation[3] = Integer.parseInt(relation4);
		 * relation[4] = Integer.parseInt(relation5);
		 */
		
		dataDTO score = null;
		int[] result = new int[partner.length];
		for (int i = 0; i < partner.length; i++) {
			score =dao.dataMemory(partner[i]);
			result[i] = Integer.parseInt(score.getMorning()) + Integer.parseInt(score.getNight()) + Integer.parseInt(score.getKikicount());
			System.out.println(result[i]);
		}
		
		response.sendRedirect("memory.jsp?one="+result[0]+"&two="+result[1]+"&three="+result[2]+"&four="+result[3]+"&five="+result[4]);
	}

}
