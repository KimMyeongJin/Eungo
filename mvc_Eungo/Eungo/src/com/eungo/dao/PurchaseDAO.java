package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.eungo.dto.BoardVO;
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
	
	public List<BoardVO> purchase_columns_in_list(String email, int pageNum) {
		String SQL = "SELECT li.email,li.ltitle,li.limage,li.good FROM list AS li JOIN (SELECT * FROM purchase where email = ?) AS pur ON pur.lnumber = li.lnumber ORDER BY date DESC LIMIT ? OFFSET ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, 9);
			pstmt.setInt(3, (pageNum - 1) * 9);
			rs = pstmt.executeQuery();

			List<BoardVO> list = new ArrayList<>();
			while (rs.next()) {
				BoardVO board = new BoardVO();				
				board.setEmail(rs.getString("email"));				
				board.setGood(rs.getInt("good"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLimage(rs.getString("limage"));				
				list.add(board);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public List<PurchaseVO> purchase_columns_in_purchase(String email,int pageNum) {
		String SQL = "SELECT pur.lnumber,pur.product_name,pur.quantity,pur.price,pur.total_price,pur.date FROM list AS li JOIN (SELECT * FROM purchase where email = ?) AS pur ON pur.lnumber = li.lnumber ORDER BY date DESC LIMIT ? OFFSET ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, 9);
			pstmt.setInt(3, (pageNum - 1) * 9);
			rs = pstmt.executeQuery();

			List<PurchaseVO> list = new ArrayList<>();
			while (rs.next()) {
				PurchaseVO pur = new PurchaseVO();
				pur.setLnumber(rs.getInt("lnumber"));								
				pur.setProduct_name(rs.getString("product_name"));
				pur.setQuantity(rs.getInt("quantity"));
				pur.setPrice(rs.getString("price"));
				pur.setTotal_price(String.format("%,d", Integer.parseInt(rs.getString("total_price"))));
				pur.setDate(rs.getString("date"));				
				list.add(pur);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int purchaseTotalCount(String email) {
		String SQL = "SELECT count(*) FROM purchase WHERE email = ?";
		Connection conn = DBManager.getConnection();
		int totalNum = 0;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
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
		return 0;
	}
}
