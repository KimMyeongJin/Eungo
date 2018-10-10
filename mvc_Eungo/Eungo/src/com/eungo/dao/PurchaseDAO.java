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
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);			
		}
		return -1;
	}
	
	public int insert(PurchaseVO purchase) {
		String SQL = "INSERT INTO purchase(lnumber, email, product_name, quantity, price, total_price, seller_email, date, reply_check) VALUES(?,?,?,?,?,?,?,now(),false)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, purchase.getLnumber());
			pstmt.setString(2, purchase.getEmail());
			pstmt.setString(3, purchase.getProduct_name());
			pstmt.setInt(4, purchase.getQuantity());
			pstmt.setString(5, purchase.getPrice());
			pstmt.setString(6, purchase.getTotal_price());
			pstmt.setString(7, purchase.getSeller_email());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return -1;
	}
	
	public PurchaseVO select(String email) {
		String SQL = "SELECT * FROM purchase WHERE email = ? ORDER BY pur_number DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				PurchaseVO purchase = new PurchaseVO();
				purchase.setPur_number(rs.getInt("pur_number"));
				purchase.setLnumber(rs.getInt("lnumber"));
				purchase.setEmail(rs.getString("email"));
				purchase.setProduct_name(rs.getString("product_name"));
				purchase.setQuantity(rs.getInt("quantity"));
				purchase.setPrice(rs.getString("price"));
				purchase.setTotal_price(rs.getString("total_price"));
				purchase.setSeller_email(rs.getString("seller_email"));
				purchase.setDate(rs.getString("date"));
				return purchase;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	
}
