package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.eungo.dto.PriceVO;
import com.eungo.util.DBManager;

public class PriceDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insert(PriceVO price) {
		//String SQL = "INSERT INTO price(lnumber,standard_price,standard_title,stand) values(?,?,?,?,?,?,?,?,?,?,0,0,now(),0)";
		Connection conn = DBManager.getConnection();
		try {
			//pstmt = conn.prepareStatement(SQL);
			/*pstmt.setString(1, board.getEmail());
			pstmt.setString(2, board.getLphone_number());
			pstmt.setString(3, board.getLtitle());
			pstmt.setString(4, board.getLcontent());
			pstmt.setString(5, board.getLimage());
			pstmt.setString(6, board.getLimage2());
			pstmt.setString(7, board.getLimage3());
			pstmt.setString(8, board.getLimage4());
			pstmt.setString(9, board.getYoutube());
			pstmt.setString(10, board.getLcategory());*/
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
