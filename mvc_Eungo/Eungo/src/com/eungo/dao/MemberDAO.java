package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


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
			if(rs.next()) {				
				member.setEmail(rs.getString("email"));
				member.setPhonenumber(rs.getString("phonenumber"));	
				member.setGender(rs.getString("gender"));
				member.setBirthday(rs.getString("Birthday"));
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
			if(rs.next()) {
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
			}else if(rs.next()==false) {
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
		String SQL = "INSERT INTO member VALUES(?,true,'naver','naver',null,?,?,false,null)";
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
	
	public int insert_facebookemail(MemberVO member) {
		String SQL = "INSERT INTO member VALUES(?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());
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
		String SQL = "UPDATE member SET email =?,password =?,phonenumber =?";
		
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getPhonenumber());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int insert(MemberVO member) {
		String SQL = "INSERT INTO member VALUES(?,false,?,?,?,?,?,false,null)";
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
		//System.out.println("email : " + email);
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

}
