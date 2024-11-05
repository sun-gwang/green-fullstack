package controller.user3;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.User3DTO;
import service.User3Service;

@WebServlet("/user3/list.do")
public class ListController extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	private User3Service service = User3Service.getInstance();
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<User3DTO> users = service.selectUser3s();
		
		req.setAttribute("users", users);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/user3/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
