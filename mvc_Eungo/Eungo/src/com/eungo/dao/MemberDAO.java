package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.eungo.dto.FacebookVO;
import com.eungo.dto.MemberVO;
import com.eungo.util.DBManager;

public class MemberDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberVO select_one(String email) {
		String SQL = "SELECT * FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			MemberVO member = new MemberVO();
			if (rs.next()) {
				member.setEmail(rs.getString("email"));
				member.setPhonenumber(rs.getString("phonenumber"));
				member.setGender(rs.getString("gender"));
				member.setBirthday(rs.getString("Birthday"));
				member.setProfile(rs.getString("profile"));
				member.setAddress(rs.getString("address"));
			}
			return member;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return null;
	}

	public String select_phonenumber(String email) {
		String SQL = "SELECT phonenumber FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		String phonenumber = null;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				phonenumber = rs.getString("phonenumber");
			}
			return phonenumber;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	// select_id
	public MemberVO select_email_seller(MemberVO member) {
		String SQL = "SELECT emailcheck, seller FROM member WHERE email = ? AND password= ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPassword());
			rs = pstmt.executeQuery();
			MemberVO check_member = new MemberVO();
			if (rs.next()) {
				check_member.setEmailcheck(rs.getBoolean("emailcheck"));
				check_member.setSeller(rs.getBoolean("seller"));
				return check_member;
			} else if (rs.next() == false) {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public int insert_naveremail(MemberVO member) {
		String SQL = "INSERT INTO member(email,emailcheck,password,salt,address,phonenumber,gender,birthday,seller,profile,del,date,del_date) VALUES(?,true,'naver','naver',null,null,?,?,false,null,1,now(),null)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getGender());
			pstmt.setString(3, member.getBirthday());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}

	public int insert_facebookemail(FacebookVO member) {
		String SQL = "INSERT INTO member VALUES(?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getUserEmail());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}

	public int update(MemberVO member) {
		String SQL = null;
		if (member.getPassword() != null) {
			SQL = "UPDATE member SET password =?, salt=?, phonenumber =?, profile=?, birthday=?, address=? WHERE email =?";

			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, member.getPassword());
				pstmt.setString(2, member.getSalt());
				pstmt.setString(3, member.getPhonenumber());
				pstmt.setString(4, member.getProfile());
				pstmt.setString(5, member.getBirthday());
				pstmt.setString(6, member.getAddress());
				pstmt.setString(7, member.getEmail());
				pstmt.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
			return -1;
		}else {
			SQL = "UPDATE member SET  phonenumber =?, profile=?, birthday=?, address=? WHERE email =?";

			Connection conn = DBManager.getConnection();
			try {
				pstmt = conn.prepareStatement(SQL);				
				pstmt.setString(1, member.getPhonenumber());
				pstmt.setString(2, member.getProfile());
				pstmt.setString(3, member.getBirthday());
				pstmt.setString(4, member.getAddress());
				pstmt.setString(5, member.getEmail());
				pstmt.executeUpdate();
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
			return -1;
		}
		

	}

	public int insert(MemberVO member) {
		String SQL = "INSERT INTO member(email,emailcheck,password,salt,address,phonenumber,gender,birthday,seller,profile,del,date,del_date) VALUES(?,false,?,?,null,?,?,?,false,null,1,now(),null)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());			
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getSalt());
			pstmt.setString(4, member.getPhonenumber());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getBirthday());			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}

	public MemberVO select_email(MemberVO member) {
		String SQL = "SELECT emailcheck FROM member WHERE email = ? AND password= ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPassword());
			rs = pstmt.executeQuery();
			MemberVO check_member = new MemberVO();
			if (rs.next()) {
				check_member.setEmailcheck(rs.getBoolean("emailcheck"));
				check_member.setSeller(rs.getBoolean("seller"));
			}
			return check_member;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public int select_emailcheck(String email) {
		String SQL = "SELECT emailcheck FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				boolean emailcheck = rs.getBoolean("emailcheck");
				if (emailcheck == true) {
					return 1;
				} else {
					return 2;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}

	public String select_salt(String email) {
		String SQL = "SELECT salt FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String salt = rs.getString("salt");
				return salt;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int select_del(String email) {
		String SQL = "SELECT del FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				int del = rs.getInt("del");
				return del;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return 0;
	}
	
	public int update_emailcheck(String email) {
		String SQL = "UPDATE member SET emailcheck = true WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}

	public int checkEmail(String email) {
		// System.out.println("email : " + email);
		String SQL = "SELECT email FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return 1;
			} else {
				return 2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int checkPassword(String password) {
		// System.out.println("email : " + email);
		String SQL = "SELECT email FROM member WHERE password = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, password);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int update_seller(String email) {
		String SQL = "UPDATE member SET seller = true WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	public boolean discriminate_seller(String email) {
		String SQL = "SELECT seller FROM member WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getBoolean("seller");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}
	
	public List<MemberVO> select_all(int pageNum){
		String SQL = "SELECT * FROM member WHERE email != 'admin@admin.com' ORDER BY email DESC LIMIT 20 OFFSET ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, (pageNum - 1) * 20);
			rs = pstmt.executeQuery();
			List<MemberVO> list = new ArrayList<>();
			while(rs.next()) {
				MemberVO member = new MemberVO();
				member.setMember_number(rs.getInt("member_number"));
				member.setEmail(rs.getString("email"));
				member.setEmailcheck(rs.getBoolean("emailcheck"));
				member.setPhonenumber(rs.getString("phonenumber"));
				member.setGender(rs.getString("gender"));
				member.setBirthday(rs.getString("Birthday"));
				member.setSeller(rs.getBoolean("seller"));
				member.setProfile(rs.getString("profile"));
				member.setAddress(rs.getString("address"));
				member.setDel(rs.getInt("del"));
				list.add(member);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int number_of_member() {
		String SQL = "SELECT count(*) FROM member WHERE email != 'admin@admin.com'";
		Connection conn = DBManager.getConnection();
		int totalNum = 0;
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalNum = rs.getInt("count(*)");
			}
			return totalNum;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	public int profile_delete(int member_number) {
		String SQL = "UPDATE member SET profile = null where member_number = ?";
		Connection conn = DBManager.getConnection();		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, member_number);
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	public String profile_name(int member_number) {
		String SQL = "SELECT profile FROM member where member_number = ?";
		Connection conn = DBManager.getConnection();		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, member_number);
			rs = pstmt.executeQuery();
			String pro_return = null;
			if(rs.next()) {
				String profile = rs.getString("profile");
				String split[] = profile.split("/");
				pro_return = split[4];
			}
			return pro_return;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt,rs);
		}
		return null;
	}
	
}
