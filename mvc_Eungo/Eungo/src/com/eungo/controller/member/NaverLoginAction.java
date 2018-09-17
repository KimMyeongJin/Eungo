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

public class NaverLoginAction implements Action{
	private static String naming = "MemberLoginAction : ";
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="index.jsp";
		
		
			HttpSession session = request.getSession();
			String access_token = (String) session.getAttribute("access_token");
			String memberPro = ApiMemberPro.getApiMember(access_token);
			JSONParser p = new JSONParser();
				try {
					JSONObject obj = (JSONObject)p.parse(memberPro);
					System.out.println("memberPro : "+memberPro);
					String resultcode = (String)obj.get("resultcode");
					String message = (String)obj.get("message");
					System.out.println("resultcode : "+resultcode);
					System.out.println("message : "+message);
					JSONObject data = (JSONObject)obj.get("response");
					
					System.out.println("data : "+data.toString());
					Gson g = new Gson();
					//g.toJson(memberPro); -> JSON으로 변환	
					Member m = g.fromJson(data.toString(), Member.class);
					System.out.println(m.getBirthday());
					MemberDAO dao = new MemberDAO();
					MemberVO member = new MemberVO();
					String email = null;			
					member.setEmail(m.getEmail());
					
					int result = dao.insert_naveremail(member);

					if(result == 1){
						session = request.getSession();
						session.setAttribute("naver_email", member.getEmail());
						Script.moving(response, "로그인 성공", url);
						System.out.println("네이버 로그인 성공");
					}else if(result == 2){
						session = request.getSession();
						session.setAttribute("naver_email", member.getEmail());
						Script.moving(response, "미인증 회원입니다. 글쓰기가 제한됩니다.", url);
						System.out.println("네이버 로그인 실패");
					}
				
					if(result == 1) {
						HttpSession session1 = request.getSession();
						session1.setAttribute("email", member.getEmail());
						Script.moving(response, "구글 인증 페이지", url);
					}else if(result == -1) {
						Script.moving(response, "DB에러");
					}
					
					RequestDispatcher dis = request.getRequestDispatcher(url);
					dis.forward(request, response);
					System.out.println("네이버 로그인 DB연결 성공");
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("네이버 로그인  DB연결 실패");
				}
				
				
				
	
		
			}
	}
		
		

	
		

	

