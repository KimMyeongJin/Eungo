package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.eungo.dto.BoardVO;
import com.eungo.util.DBManager;

public class BoardDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public List<BoardVO> search(String search_text) {
		String SQL ="SELECT * FROM list WHERE ltitle LIKE ? OR lcategory LIKE ?";
		
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "%"+search_text+"%");
			pstmt.setString(2, "%"+search_text+"%");
			rs = pstmt.executeQuery();
			List<BoardVO> list = new ArrayList<>();
			
			while(rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLcomment(rs.getString("lcomment"));
				board.setLrule(rs.getString("lrule"));
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
}
