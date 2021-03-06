package com.eungo.controller.member;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eungo.action.Action;
import com.eungo.dao.MemberDAO;
import com.eungo.dao.SellerDAO;
import com.eungo.dto.MemberVO;
import com.eungo.dto.SellerVO;
import com.eungo.util.SHA256;
import com.eungo.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberUpdateProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		MemberVO member = new MemberVO();
		MemberDAO dao = new MemberDAO();
		SellerVO seller = new SellerVO();
		SellerDAO sdao = new SellerDAO();
		// String savePath =
		// request.getServletContext().getRealPath("/images/profile/"); aws등록시 사용
		String savePath = request.getServletContext().getRealPath("/images/profile/"); // 집에서 path
		
		int sizeLimit = 1024 * 1024 * 15;

		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8",
				new DefaultFileRenamePolicy());

		String email = multi.getParameter("email");
		String salt = dao.select_salt(email);
		String new_password = multi.getParameter("mod_password");
		
		if (!new_password.equals("")) {
			new_password = SHA256.getEncrypt(new_password, salt);
		} else {
			new_password = null;
		}
		
		String phonenumber = multi.getParameter("phonenumber");
		String birthday = multi.getParameter("birthday");
		String address = multi.getParameter("roadFullAddr");
		String seller_intro = multi.getParameter("seller_intro");
		
		seller.setEmail(email);
		seller.setSeller_intro(seller_intro);
		Enumeration<?> files = multi.getFileNames();
		String file1 = (String) files.nextElement();
		String profile = null;
		if (multi.getFilesystemName(file1)!=null) {
			profile = "/Eungo/images/profile/" + multi.getFilesystemName(file1);
		}else {
			profile = dao.select_one(email).getProfile();
		}
		
		member.setEmail(email);
		if (new_password != null) {
			member.setPassword(new_password);
			member.setSalt(salt);
		}
		member.setPhonenumber(phonenumber);
		member.setProfile(profile);
		member.setBirthday(birthday);
		member.setAddress(address);
		int seller_result = sdao.seller_intro_update(seller);
		int result = dao.update(member);
		if (result == 1&&seller_result == 1) {
			Script.moving(response, "회원정보 수정 완료", url);
		} else {
			Script.moving(response, "DB 에러");
		}
	}
}
