package com.eungo.controller.member;

import com.eungo.dao.MemberDAO;
import com.eungo.dto.FacebookVO;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.types.User;



public class FacebookLoginAction {
	//String url = "index.jsp";
	public FacebookVO getProfileInfo(String a) {

		FacebookVO member = new FacebookVO();
		FacebookClient facebookClient = new DefaultFacebookClient(a, Version.VERSION_2_6);
		User user = facebookClient.fetchObject("me", User.class);

		System.out.println("User name: " + user.getName());
		System.out.println("User bithday: " + user.getBirthday());
		System.out.println("User id: " + user.getId());
		System.out.println("User email: " + user.getEmail());
		
		member.setUserName(user.getName());
		member.setUserId(user.getId()); 
		member.setUserEmail(user.getEmail());
		
		
		
		//if(user.getId() != null) {
		MemberDAO dao = new MemberDAO();
			if (dao.checkEmail(member.getUserId()) != 1) {
				int result = dao.insert_facebookemail(member);
	
				if(result == 1) {
					
					System.out.println("페이스북 로그인 성공");
				}else if(result == -1) {
					System.out.println("DB 아이디 중복 에러");
				}
				
			}
			
		
		return member;
		
		
	}
	
	


	
	
}

