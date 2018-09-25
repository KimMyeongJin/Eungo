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
		String SQL = "INSERT INTO price(lnumber,standard_price,standard_title,standard_content,standard_modify,standard_time,deluxe_price,deluxe_title,deluxe_content,deluxe_modify,deluxe_time,premium_price,premium_title,premium_content,premium_modify,premium_time) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, price.getLnumber());
			pstmt.setInt(2, price.getStandard_price());
			pstmt.setString(3, price.getStandard_title());
			pstmt.setString(4, price.getStandard_content());
			pstmt.setInt(5, price.getStandard_modify());
			pstmt.setString(6, price.getStandard_time());
			pstmt.setInt(7, price.getDeluxe_price());
			pstmt.setString(8, price.getDeluxe_title());
			pstmt.setString(9, price.getDeluxe_content());
			pstmt.setInt(10, price.getDeluxe_modify());
			pstmt.setString(11, price.getDeluxe_time());
			pstmt.setInt(12, price.getPremium_price());
			pstmt.setString(13, price.getPremium_title());
			pstmt.setString(14, price.getPremium_content());
			pstmt.setInt(15, price.getPremium_modify());
			pstmt.setString(16, price.getPremium_time());
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
