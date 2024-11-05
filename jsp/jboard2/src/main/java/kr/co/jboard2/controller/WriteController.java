package kr.co.jboard2.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.jboard2.dto.ArticleDTO;
import kr.co.jboard2.dto.FileDTO;
import kr.co.jboard2.service.ArticleService;
import kr.co.jboard2.service.FileService;

@WebServlet("/write.do")
public class WriteController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private ArticleService service = ArticleService.getInstance();
	private FileService fileService = FileService.getInstance();
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/write.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String regip = req.getRemoteAddr();
		
		// 파일 업로드
		ArticleDTO articleDTO = service.fileUpload(req);
		articleDTO.setRegip(regip);
	
		logger.debug(" "+ articleDTO);
		
		req.setAttribute("articles", articleDTO);
		
		// 글 등록
		int pk = service.insertArticle(articleDTO);
		
		// 파일 등록
		List<FileDTO> files = articleDTO.getFileDTOs();
		
		for(FileDTO fileDTO : files) {
			
			fileDTO.setAno(pk);
			fileService.insertFile(fileDTO);
		}
		
		resp.sendRedirect("/jboard2/list.do");
	}
	

}
