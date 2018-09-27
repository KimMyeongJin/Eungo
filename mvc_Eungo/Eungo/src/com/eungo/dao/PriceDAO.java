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
			pstmt.setString(2, price.getStandard_price());
			pstmt.setString(3, price.getStandard_title());
			pstmt.setString(4, price.getStandard_content());
			pstmt.setInt(5, price.getStandard_modify());
			pstmt.setString(6, price.getStandard_time());
			pstmt.setString(7, price.getDeluxe_price());
			pstmt.setString(8, price.getDeluxe_title());
			pstmt.setString(9, price.getDeluxe_content());
			pstmt.setInt(10, price.getDeluxe_modify());
			pstmt.setString(11, price.getDeluxe_time());
			pstmt.setString(12, price.getPremium_price());
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
	public PriceVO selectOne(int lnumber) {
		String SQL = "SELECT * FROM price WHERE lnumber = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			rs = pstmt.executeQuery();
			PriceVO price = new PriceVO();
			if(rs.next()) {
				price.setStandard_price(rs.getString("standard_price"));
				price.setStandard_title(rs.getString("standard_title"));
				price.setStandard_content(rs.getString("standard_content"));
				price.setStandard_modify(rs.getInt("standard_modify"));
				price.setStandard_time(rs.getString("standard_time"));
				price.setDeluxe_price(rs.getString("deluxe_price"));
				price.setDeluxe_title(rs.getString("deluxe_title"));
				price.setDeluxe_content(rs.getString("deluxe_content"));
				price.setDeluxe_modify(rs.getInt("deluxe_modify"));
				price.setDeluxe_time(rs.getString("deluxe_time"));
				price.setPremium_price(rs.getString("premium_price"));
				price.setPremium_title(rs.getString("premium_title"));
				price.setPremium_content(rs.getString("premium_content"));
				price.setPremium_modify(rs.getInt("premium_modify"));
				price.setPremium_time(rs.getString("premium_time"));
			}
			return price;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
}
