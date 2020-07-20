package kr.jboard2.service.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.jboard2.config.DBConfig;
import kr.jboard2.config.SQL;
import kr.jboard2.controller.CommonService;

public class CheckEmailService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String email = req.getParameter("email");
		
		// 1,2단계
		Connection conn = DBConfig.getConnection();
		
		// 3단계
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_EMAIL);
		psmt.setString(1, email);
		
		// 4단계
		ResultSet rs = psmt.executeQuery();
		
		// 5단계
		int result = 0;
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		// 6단계
		rs.close();
		psmt.close();
		conn.close();
		
		// gson 라이브러리를 활용한 json 문자열 포맷 생성
		JsonObject json = new JsonObject();
		json.addProperty("result", result); // 아이디가 있으면 {'result':1}, 아이디가 없으면 {'result':0}
		
		return "json:"+json.toString();
	}

}
