package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.Script;
import com.google.gson.Gson;
import com.naverLogin.search.ApiMemberPro;
import com.naverLogin.search.Member;

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
			System.out.println("memberPro : " + memberPro);
			String resultcode = (String) obj.get("resultcode");
			String message = (String) obj.get("message");
			System.out.println("resultcode : " + resultcode);
			System.out.println("message : " + message);
			JSONObject data = (JSONObject) obj.get("response");

			System.out.println("data : " + data.toString());
			Gson g = new Gson();
			// g.toJson(memberPro); -> JSON으로 변환
			Member m = g.fromJson(data.toString(), Member.class);
			System.out.println(m.getBirthday());
			MemberDAO dao = new MemberDAO();
			MemberVO member = new MemberVO();
			String email = m.getEmail();
			member.setEmail(email);

			if (dao.checkEmail(email) != 1) {
				int result = dao.insert_naveremail(member);

				if (result == 1) {
					session = request.getSession();
					session.setAttribute("email", member.getEmail());
					Script.moving(response, "로그인 성공", url);
					System.out.println("네이버 로그인 성공");
				} else if (result == -1) {
					System.out.println("DB에러");
				}
			}else {
				session = request.getSession();
				session.setAttribute("email", member.getEmail());
				Script.moving(response, "로그인 성공", url);
				System.out.println("네이버 로그인 성공");
			}
			/*RequestDispatcher dis = request.getRequestDispatcher(url);
			dis.forward(request, response);*/
			System.out.println("네이버 로그인 DB연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("네이버 로그인  DB연결 실패");
		}

	}
}
