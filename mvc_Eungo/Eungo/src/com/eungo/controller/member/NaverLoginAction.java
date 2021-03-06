package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.ApiMemberPro;
import com.eungo.util.Script;
import com.google.gson.Gson;

public class NaverLoginAction implements Action {
	private static String naming = "MemberLoginAction : ";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		HttpSession session = request.getSession();
		String access_token = (String) session.getAttribute("access_token");
		String memberPro = ApiMemberPro.getApiMember(access_token);
		JSONParser p = new JSONParser();
		try {
			JSONObject obj = (JSONObject) p.parse(memberPro);
			String resultcode = (String) obj.get("resultcode");
			String message = (String) obj.get("message");
			JSONObject data = (JSONObject) obj.get("response");

			Gson g = new Gson();
			// g.toJson(memberPro); -> JSON으로 변환
			MemberVO member = g.fromJson(data.toString(), MemberVO.class);
			MemberDAO dao = new MemberDAO();
			String email = member.getEmail();
			boolean dis_seller = false;
			int del = dao.select_del(email);
			if (del == -1) {
				int result = dao.insert_naveremail(member);
				if (result == 1) {
					session = request.getSession();
					session.setAttribute("email", email);
					session.setAttribute("seller", dis_seller);
					Script.moving(response, "로그인 성공", url);
					System.out.println("네이버 로그인 성공");
				} else {
					Script.moving(response, "DB에러");
				}
			} else if (del == 2) {
				Script.moving(response, "삭제된 계정, 아직 사용 할 수 없습니다.");
			} else if (del == 1) {
				dis_seller = dao.discriminate_seller(email);
				session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("seller", dis_seller);
				Script.moving(response, "로그인 성공", url);
				System.out.println("네이버 로그인 성공");
			} else {
				Script.moving(response, "DB에러");
			}
			System.out.println("네이버 로그인 DB연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("네이버 로그인  DB연결 실패");
		}

	}
}
