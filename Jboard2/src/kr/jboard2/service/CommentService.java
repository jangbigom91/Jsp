package kr.jboard2.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.jboard2.config.DBConfig;
import kr.jboard2.config.SQL;
import kr.jboard2.controller.CommonService;

public class CommentService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
			// 파리미터 수신
			String parent  = req.getParameter("parent");
			String comment = req.getParameter("comment");
			String uid 	   = req.getParameter("uid");
			String regip   = req.getRemoteAddr();

			// 1,2단계
			Connection conn = DBConfig.getConnection();
			
			// 3단계
			PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_COMMENT);
			psmt.setString(1, parent);
			psmt.setString(2, comment);
			psmt.setString(3, uid);
			psmt.setString(4, regip);
			
			// 4단계
			int result = psmt.executeUpdate();
			
			// 5단계
			// 6단계
			psmt.close();
			conn.close();
			
			JsonObject json = new JsonObject();
			json.addProperty("result", result);
		
			return "json:"+json.toString();
	}

}
