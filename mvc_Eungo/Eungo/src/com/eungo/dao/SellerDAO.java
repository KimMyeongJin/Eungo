package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.eungo.dto.SellerVO;
import com.eungo.util.DBManager;

public class SellerDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insert(SellerVO seller) {
		String SQL = "INSERT INTO seller(email, bank_code_std, account_num, account_holder_info, income, seller_intro) VALUES(?,?,?,?,?,?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, seller.getEmail());
			pstmt.setInt(2, seller.getBank_code_std());
			pstmt.setLong(3, seller.getAccount_num());
			pstmt.setInt(4, seller.getAccount_holder_info());
			pstmt.setInt(5, 0);
			pstmt.setString(6, seller.getSeller_intro());			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return -1;
	}
	
	public String seller_intro(String email) {
		String SQL = "SELECT seller_intro FROM seller WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString("seller_intro");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int select_income(String email) {
		String SQL = "SELECT income FROM seller WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("income");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt,rs);
		}		
		return -1;
	}
	
	public int update_income(SellerVO seller) {
		String SQL = "UPDATE seller SET income = ? WHERE email = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, seller.getIncome());			
				pstmt.setString(2, seller.getEmail());			
				pstmt.executeUpdate();
				return 1;		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}		
		return -1;// update 에러
	}
}
