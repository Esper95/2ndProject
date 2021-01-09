package conn.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conn.model.dataDAO;
import conn.model.dataDTO;

/**
 * Servlet implementation class DataSave
 */
@WebServlet("/DataSave")
public class DataSave extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String partner =request.getParameter("partner");
		dataDAO dao = new dataDAO();
		
		//data DAO 持失
		dataDTO kakaodata = (dataDTO) session.getAttribute("kakaodata");
		kakaodata.setPartner(partner);
		int data =dao.kakaodata(kakaodata);
		//emotion DAO 持失
		dataDTO emotion = (dataDTO) session.getAttribute("emotion");
		emotion.setPartner(partner);
		int emo = dao.emotion(emotion);
		//keyword DAO 持失
		dataDTO keyword = (dataDTO) session.getAttribute("keyword");
		keyword.setPartner(partner);
		dao.keyword(keyword);
		int word = dao.keyword(keyword);
		
		if(data != 0){
			response.sendRedirect("dictionary.jsp");
		}
		
		
	}

}
