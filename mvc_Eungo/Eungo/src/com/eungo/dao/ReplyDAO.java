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
		String SQL = "INSERT INTO reply(reply_comment,star,lnumber,email,re_date,del) VALUES(?,?,?,?,?,now(),1)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, reply.getReply_comment());
			pstmt.setInt(2, reply.getStar());
			pstmt.setInt(3, reply.getLnumber());
			pstmt.setString(4, reply.getEmail());
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
	
	public List<ReplyVO> select_Reply(int lnumber){
		String SQL = "SELECT * FROM reply WHERE lnumber = ? ORDER BY reply_number DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			pstmt.executeQuery();
			rs = pstmt.executeQuery();
			List<ReplyVO> re_list = new ArrayList<>();
			while(rs.next()) {				
				if(rs.getInt("del")==1) {
				ReplyVO reply = new ReplyVO();
				reply.setReply_number(rs.getInt("reply_number"));
				reply.setReply_comment(rs.getString("reply_comment"));
				reply.setReply_answer(rs.getString("reply_answer"));
				reply.setLnumber(rs.getInt("lnumber"));
				reply.setEmail(rs.getString("email"));
				reply.setRe_date(rs.getString("re_date"));
				reply.setAn_date(rs.getString("an_date"));				
				re_list.add(reply);
				}
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
	
	public int reply_del(int lnumber) {
		String SQL = "UPDATE reply SET del = 0 WHERE reply_number = ?";
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
