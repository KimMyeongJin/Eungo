package com.eungo.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dto.MemberVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class MemberUpdateProcAction implements Action{ 
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="index.jsp";
		
		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		String savePath = request.getServletContext().getRealPath("/image");
		int sizeLimit = 1024*1024*15;
		
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		String filename = multi.getFilesystemName("filename");
		String email = multi.getParameter("email");		
		String salt = dao.select_salt(email);
		String password = SHA256.getEncrypt(multi.getParameter("password"),salt);
		String phonenumber = multi.getParameter("phonenumber");
		String birthday = multi.getParameter("birthday");
		
		 
       
		member.setEmail(email);
		member.setPassword(password);
		member.setPhonenumber(phonenumber);
		member.setFilename(filename);
		member.setBirthday(birthday);
		int result = dao.update(member);
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("password", member.getPassword());
			Script.moving(response, "회원정보 수정 완료", url);		
		}else if(result == -1) {
			
			Script.moving(response, "DB 에러");
		}
	}
}
