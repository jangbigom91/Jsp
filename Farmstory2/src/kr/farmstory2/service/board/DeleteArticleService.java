package kr.farmstory2.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.farmstory2.controller.CommonService;
import kr.farmstory2.dao.BoardDAO;

public class DeleteArticleService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq   = req.getParameter("seq");
		String group = req.getParameter("group");
		String cate  = req.getParameter("cate");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteArticle(seq);
		
		req.setAttribute("seq", seq);
		
		return "redirect:/Farmstory2/board/list.do?group="+group+"&cate="+cate;
	}

}
