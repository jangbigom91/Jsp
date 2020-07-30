package kr.farmstory2.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.farmstory2.controller.CommonService;
import kr.farmstory2.dao.BoardDAO;

/*
public class ModifyArticleService implements CommonService {
	
	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		
		String group 	= req.getParameter("group");
		String cate 	= req.getParameter("cate");
		String title 	= req.getParameter("title");
		String content 	= req.getParameter("content");
		String seq 		= req.getParameter("seq");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.modifyArticle(title, content, seq);
		
		req.setAttribute("title", title);
		req.setAttribute("content", content);
		req.setAttribute("seq", seq);
		
		return "redirect:/Farmstory2/board/view.do?group="+group+"&cate="+cate;
		
	}

}
*/