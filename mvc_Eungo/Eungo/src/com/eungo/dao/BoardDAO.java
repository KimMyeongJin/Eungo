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

	public int boardInsert(BoardVO board) {
		String SQL = "INSERT INTO list(email,ltitle,lcontent,limage,limage2,limage3,limage4,youtube,lcategory,lprice,lsellcount,lviewcount,ldate,good,lphone_number) values(?,?,?,?,?,?,?,?,?,?,0,0,now(),0,?)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, board.getEmail());
			pstmt.setString(2, board.getLtitle());
			pstmt.setString(3, board.getLcontent());
			pstmt.setString(4, board.getLimage());
			pstmt.setString(5, board.getLimage2());
			pstmt.setString(6, board.getLimage3());
			pstmt.setString(7, board.getLimage4());
			pstmt.setString(8, board.getYoutube());
			pstmt.setString(9, board.getLcategory());
			pstmt.setInt(10, board.getLprice());
			pstmt.setInt(11, board.getLnumber());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return 0;
	}

	// 페이지 넘길 때마다 9개씩 가져오게하는 쿼리
	public List<BoardVO> boardPaging(int per_page, int pageNum) {
		String SQL = "SELECT * FROM list ORDER BY lnumber DESC LIMIT ? OFFSET ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, per_page);
			pstmt.setInt(2, (pageNum - 1) * per_page);
			rs = pstmt.executeQuery();

			List<BoardVO> list = new ArrayList<>();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getInt("lphone_number"));
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

	public int boardTotalCount() {
		String SQL = "SELECT count(*) FROM list";
		Connection conn = DBManager.getConnection();
		int totalNum = 0;
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalNum = rs.getInt("count(*)");
			}
			return totalNum;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}

	public int smartSearchCount(String search_text, String search_category) {
		String SQL = "";
		if (search_text.equals("") || search_text == null) {
			SQL = "SELECT count(*) FROM list WHERE lcategory = ? AND ltitle LIKE ? AND lcontent like ? ORDER BY lnumber DESC";
		} else {
			SQL = "SELECT count(*) FROM list WHERE lcategory = ? AND ltitle LIKE ? OR lcontent like ? ORDER BY lnumber DESC";
		}
		Connection conn = DBManager.getConnection();
		int totalNum = 0;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, search_category);
			pstmt.setString(2, "%" + search_text + "%");
			pstmt.setString(3, "%" + search_text + "%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalNum = rs.getInt("count(*)");
			}
			return totalNum;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}

	public int searchCount(String search_text) {
		String SQL = "SELECT count(*) FROM list WHERE lcategory like ? OR ltitle LIKE ? OR lcontent like ? ORDER BY lnumber DESC";
		Connection conn = DBManager.getConnection();
		int totalNum = 0;
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "%" + search_text + "%");
			pstmt.setString(2, "%" + search_text + "%");
			pstmt.setString(3, "%" + search_text + "%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalNum = rs.getInt("count(*)");
			}
			return totalNum;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return 0;
	}

	public List<BoardVO> getSelectAll() {
		String SQL = "SELECT * FROM list ORDER BY lnumber DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			List<BoardVO> list = new ArrayList<>();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getInt("lphone_number"));
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

	public BoardVO getSelectOne(int lnumber) {
		String SQL = "SELECT * FROM list WHERE lnumber = ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, lnumber);
			rs = pstmt.executeQuery();
			BoardVO board = new BoardVO();
			if (rs.next()) {
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
			}
			return board;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public List<BoardVO> search(String search_text, int per_page, int pageNum) {

		String SQL = "SELECT * FROM list WHERE ltitle LIKE ? OR lcategory LIKE ? OR lcontent LIKE ? ORDER bY lnumber DESC  LIMIT ? OFFSET ?";

		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "%" + search_text + "%");
			pstmt.setString(2, "%" + search_text + "%");
			pstmt.setString(3, "%" + search_text + "%");
			pstmt.setInt(4, per_page);
			pstmt.setInt(5, (pageNum - 1) * per_page);
			rs = pstmt.executeQuery();
			List<BoardVO> list = new ArrayList<>();

			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getInt("lphone_number"));
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

	public List<BoardVO> smart_search(String search_text, String search_category, int per_page, int pageNum) {
		String SQL = "";
		if (search_text.equals("") || search_text == null) {
			SQL = "SELECT * FROM list WHERE lcategory = ? AND ltitle LIKE ? AND lcontent like ? ORDER BY lnumber DESC  LIMIT ? OFFSET ?";
		} else {
			SQL = "SELECT * FROM list WHERE lcategory = ? AND ltitle LIKE ? OR lcontent like ? ORDER BY lnumber DESC  LIMIT ? OFFSET ?";
		}
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, search_category);
			pstmt.setString(2, "%" + search_text + "%");
			pstmt.setString(3, "%" + search_text + "%");
			pstmt.setInt(4, per_page);
			pstmt.setInt(5, (pageNum - 1) * per_page);
			rs = pstmt.executeQuery();
			List<BoardVO> list = new ArrayList<>();

			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLprice(rs.getInt("lprice"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getInt("lphone_number"));
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
