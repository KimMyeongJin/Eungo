package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.eungo.dto.PurchaseVO;
import com.eungo.util.DBManager;


public class PurchaseDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public PurchaseVO who_purchase(String email,int lnumber){
		String SQL = "SELECT pur_number,email,date FROM purchase WHERE lnumber = ? AND email = ? AND reply_check = false ORDER BY date DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();
			PurchaseVO pur = new PurchaseVO();
			if(rs.next()) {				
				pur.setPur_number(rs.getInt("pur_number"));
				pur.setEmail(rs.getString("email"));
				pur.setDate(rs.getString("date"));				
			}
			return pur;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int reply_check(int pur_lnumber) {
		String SQL = "UPDATE purchase SET reply_check = true WHERE pur_number = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, pur_lnumber);
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
