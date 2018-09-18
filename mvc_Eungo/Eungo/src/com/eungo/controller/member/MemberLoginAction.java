package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;

public class MemberLoginAction implements Action {
	private static String naming = "MemberLoginAction : ";

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";
		String email_url = "member?cmd=emailSend";

		MemberDAO dao = new MemberDAO();
		MemberVO member = new MemberVO();
		MemberVO check_member = new MemberVO(); // seller 값과 emailcheck 값을 받아오기위한

		String email = request.getParameter("email");
		// String password = request.getParameter("password");
		String salt = dao.select_salt(email);
		dao.select_one(email);
		if (salt == null) {
			Script.moving(response, "아이디가 존재하지 않습니다.");
		} else if (salt.equals("naver")) {
			Script.moving(response, "네이버로 로그인 해주세요");
		} else {
			String password = SHA256.getEncrypt(request.getParameter("password"), salt);
			member.setEmail(email);
			member.setPassword(password);
			// 로그인 페이지에서 받아온값 비교하기 위해 세팅완료

			/*
			 * //쿠키저장 if(request.getParameter("email") != null){ Cookie cookie = new
			 * Cookie("cookieID",member.getEmail()); cookie.setMaxAge(6000);
			 * response.addCookie(cookie); }else{ Cookie cookie = new
			 * Cookie("cookieID",null); cookie.setMaxAge(0); response.addCookie(cookie); }
			 */

			System.out.println(member.getEmail());
			System.out.println(member.getPassword());
			check_member = dao.select_email_seller(member);
			if (check_member != null) {
				System.out.println(check_member.isEmailcheck());
				System.out.println(check_member.getEmail());
				if (check_member.isEmailcheck() == true) {

					Cookie cookie = new Cookie("cookieID", member.getEmail());
					cookie.setMaxAge(6000);
					response.addCookie(cookie);

					HttpSession session = request.getSession();
					session.setAttribute("email", member.getEmail());
					session.setAttribute("seller", check_member.isSeller());
					Script.moving(response, "로그인 성공", url);
				} else if (check_member.isEmailcheck() == false) {
					HttpSession session = request.getSession();
					session.setAttribute("email", member.getEmail());
					session.setAttribute("seller", check_member.isSeller());
					Script.moving(response, "미인증 회원입니다. 이메일인증을 해주세요.", email_url);
				}
			} else if(check_member == null){
				Script.moving(response, "이메일 혹은 비밀번호를 확인하세요.");
			}
		}

	}
}
