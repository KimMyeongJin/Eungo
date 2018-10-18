package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.eungo.dto.ReplyVO;
import com.eungo.util.DBManager;

public class ReplyDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;

	public int insert_Reply(ReplyVO reply) {
		String SQL = "INSERT INTO reply(reply_comment,star,lnumber,email,pur_number,re_date,del,del_date) VALUES(?,?,?,?,?,now(),false,null)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, reply.getReply_comment());
			pstmt.setInt(2, reply.getStar());
			pstmt.setInt(3, reply.getLnumber());
			pstmt.setString(4, reply.getEmail());
			pstmt.setInt(5, reply.getPur_number());
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

	public int insert_Answer(ReplyVO reply) {
		String SQL = "UPDATE reply SET reply_answer = ?, an_date = now() WHERE reply_number = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, reply.getReply_answer());
			pstmt.setInt(2, reply.getReply_number());
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

	public ReplyVO select_answer(int reply_number) {
		String SQL = "SELECT * FROM reply WHERE reply_number = ? AND del = false";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reply_number);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			ReplyVO reply = new ReplyVO();
			if (rs.next()) {
				reply.setReply_number(rs.getInt("reply_number"));
				reply.setReply_answer(rs.getString("reply_answer"));
				reply.setLnumber(rs.getInt("lnumber"));
				reply.setAn_date(rs.getString("an_date"));
			}
			return reply;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public List<ReplyVO> select_Reply(int lnumber) {
		String SQL = "SELECT * FROM reply WHERE lnumber = ? AND del = false ORDER BY reply_number DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			List<ReplyVO> re_list = new ArrayList<>();
			while (rs.next()) {
				ReplyVO reply = new ReplyVO();
				reply.setReply_number(rs.getInt("reply_number"));
				reply.setReply_comment(rs.getString("reply_comment"));
				reply.setReply_answer(rs.getString("reply_answer"));
				reply.setStar(rs.getInt("star"));
				reply.setLnumber(rs.getInt("lnumber"));
				reply.setEmail(rs.getString("email"));
				reply.setPur_number(rs.getInt("pur_number"));
				reply.setRe_date(rs.getString("re_date"));
				reply.setAn_date(rs.getString("an_date"));
				re_list.add(reply);
			}			
			return re_list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public ReplyVO select_Newest(String email, int lnumber) {
		String SQL = "SELECT * FROM reply WHERE email = ? AND lnumber = ? AND del = false ORDER BY reply_number DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, lnumber);
			rs = pstmt.executeQuery();
			ReplyVO reply = new ReplyVO();
			if (rs.next()) {
				reply.setReply_number(rs.getInt("reply_number"));
				reply.setReply_comment(rs.getString("reply_comment"));
				reply.setStar(rs.getInt("star"));
				reply.setLnumber(rs.getInt("lnumber"));
				reply.setEmail(rs.getString("email"));
				reply.setRe_date(rs.getString("re_date"));
			}
			return reply;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public int select_star(int lnumber) {
		String SQL = "SELECT star FROM reply WHERE lnumber = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			rs = pstmt.executeQuery();
			int star = 0;
			int reply_people = 0;
			while (rs.next()) {
				star = star + rs.getInt("star");
				reply_people++;
			}
			// double d = star/(double)reply_people; 소수점 1자리까지 표시할 때 사용
			return star / reply_people;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return 0;
	}

	public int reply_del(int reply_number) {
		String SQL = "UPDATE reply SET del = true, del_date = now() WHERE reply_number = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reply_number);
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

	public int answer_del(int reply_number) {
		String SQL = "UPDATE reply SET reply_answer = null, an_date = null WHERE reply_number = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, reply_number);
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

	public int reply_del_by_member(String email) {
		String SQL = "UPDATE reply SET del = true, del_date = now() WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
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

	public int reply_del_by_board(int lnumber) {
		String SQL = "UPDATE reply SET del = true, del_date = now() WHERE lnumber = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
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

}
