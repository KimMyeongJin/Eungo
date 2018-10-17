package com.eungo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.eungo.dto.BoardVO;
import com.eungo.util.DBManager;
import com.eungo.util.Youtube;

public class BoardDAO {
	private PreparedStatement pstmt;
	private ResultSet rs;

	public int lnumberSelect(String email) {
		String SQL = "SELECT lnumber FROM list WHERE email = ? AND del = false ORDER BY lnumber DESC";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt("lnumber");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return -1;
	}

	public int boardInsert(BoardVO board) {
		String SQL = "INSERT INTO list(email,lphone_number,ltitle,lcontent,standard_price,lcategory,limage,limage2,limage3,limage4,youtube,cancel_rule,lsellcount,lviewcount,ldate,good,del,del_date) values(?,?,?,?,?,?,?,?,?,?,?,?,0,0,now(),0,false,null)";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, board.getEmail());
			pstmt.setString(2, board.getLphone_number());
			pstmt.setString(3, board.getLtitle());
			pstmt.setString(4, board.getLcontent());
			pstmt.setString(5, board.getStandard_price());
			pstmt.setString(6, board.getLcategory());
			pstmt.setString(7, board.getLimage());
			pstmt.setString(8, board.getLimage2());
			pstmt.setString(9, board.getLimage3());
			pstmt.setString(10, board.getLimage4());
			pstmt.setString(11, board.getYoutube());
			pstmt.setString(12, board.getCancel_rule());
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return 0;
	}
	
	public int good_insert(int good,int lnumber) {
		String SQL = "UPDATE list SET good = ? WHERE lnumber = ? AND del = false";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, good);
			pstmt.setInt(2, lnumber);			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return 0;
	}

	public int boardModify(BoardVO board) {
		String SQL = "UPDATE list SET lphone_number = ?, ltitle = ?, lcontent = ?, standard_price = ?, lcategory = ?, limage = ?, limage2 = ?,limage3 = ?,limage4 = ?, youtube = ?,cancel_rule = ? WHERE lnumber = ? AND del = false";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, board.getLphone_number());
			pstmt.setString(2, board.getLtitle());
			pstmt.setString(3, board.getLcontent());
			pstmt.setString(4, board.getStandard_price());
			pstmt.setString(5, board.getLcategory());
			pstmt.setString(6, board.getLimage());
			pstmt.setString(7, board.getLimage2());
			pstmt.setString(8, board.getLimage3());
			pstmt.setString(9, board.getLimage4());
			pstmt.setString(10, board.getYoutube());
			pstmt.setString(11, board.getCancel_rule());
			pstmt.setInt(12, board.getLnumber());
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
		String SQL = "SELECT * FROM list WHERE del = false ORDER BY lnumber DESC LIMIT ? OFFSET ?";
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
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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

	public List<BoardVO> my_services_Paging(String email, int per_page, int pageNum) {
		String SQL = "SELECT * FROM list WHERE email = ? AND del = false ORDER BY lnumber DESC LIMIT ? OFFSET ?";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.setInt(2, per_page);
			pstmt.setInt(3, (pageNum - 1) * per_page);
			rs = pstmt.executeQuery();

			List<BoardVO> list = new ArrayList<>();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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

	public List<BoardVO> new_seven() {
		String SQL = "SELECT * FROM list WHERE del = false ORDER BY lnumber DESC LIMIT 7 OFFSET 0";
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
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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

	public List<BoardVO> top_three() {
		String SQL = "SELECT li.lnumber,li.email,li.good,li.ltitle,li.limage,pur.total FROM list AS li LEFT JOIN (SELECT sum(total_price) AS 'total',lnumber FROM purchase GROUP BY lnumber) AS pur ON pur.lnumber = li.lnumber WHERE del = false ORDER BY total DESC LIMIT 3 OFFSET 0";
		Connection conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<BoardVO> list = new ArrayList<>();
			while (rs.next()) {
				BoardVO board = new BoardVO();
				board.setLnumber(rs.getInt("lnumber"));
				board.setEmail(rs.getString("email"));
				board.setGood(rs.getInt("good"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLimage(rs.getString("limage"));
				board.setLprice(String.format("%,d", Integer.parseInt(rs.getString("total"))));
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
		String SQL = "SELECT count(*) FROM list WHERE del = false";
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
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return 0;
	}

	public int my_servcies_count(String email) {
		String SQL = "SELECT count(*) FROM list WHERE email = ? AND del = false";
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

	public int smartSearchCount(String search_text, String search_category) {
		String SQL = "";
		if (search_text.equals("") || search_text == null) {
			SQL = "SELECT count(*) FROM list WHERE lcategory = ? AND ltitle LIKE ? AND lcontent like ? AND del = false ORDER BY lnumber DESC";
		} else {
			SQL = "SELECT count(*) FROM list WHERE lcategory = ? AND ltitle LIKE ? OR lcontent like ? AND del = false ORDER BY lnumber DESC";
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
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return 0;
	}

	public int searchCount(String search_text) {
		String SQL = "SELECT count(*) FROM list WHERE lcategory like ? OR ltitle LIKE ? OR lcontent like ? AND del = false ORDER BY lnumber DESC";
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
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return 0;
	}

	public List<BoardVO> getSelectAll() {
		String SQL = "SELECT * FROM list WHERE del = false ORDER BY lnumber DESC";
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
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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
		String SQL = "SELECT * FROM list WHERE lnumber = ? AND del = false";
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
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));				
				if (!rs.getString("youtube").equals("")) {
					board.setYoutube(rs.getString("youtube").split("=")[1]);
				} else {
					board.setYoutube("");
				}
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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

		String SQL = "SELECT * FROM list WHERE ltitle LIKE ? OR lcategory LIKE ? OR lcontent LIKE ? AND del = false ORDER bY lnumber DESC  LIMIT ? OFFSET ?";

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
				board.setLphone_number(rs.getString("lphone_number"));
				board.setEmail(rs.getString("email"));
				board.setLnumber(rs.getInt("lnumber"));
				board.setLtitle(rs.getString("ltitle"));
				board.setLcontent(rs.getString("lcontent"));
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));				
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
			SQL = "SELECT * FROM list WHERE lcategory = ? AND ltitle LIKE ? AND lcontent like ? AND del = false ORDER BY lnumber DESC  LIMIT ? OFFSET ?";
		} else {
			SQL = "SELECT * FROM list WHERE lcategory = ? AND ltitle LIKE ? OR lcontent like ? AND del = false ORDER BY lnumber DESC  LIMIT ? OFFSET ?";
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
				board.setStandard_price(rs.getString("standard_price"));
				board.setLcategory(rs.getString("lcategory"));
				board.setLimage(rs.getString("limage"));
				board.setLimage2(rs.getString("limage2"));
				board.setLimage3(rs.getString("limage3"));
				board.setLimage4(rs.getString("limage4"));
				board.setYoutube(rs.getString("youtube"));
				board.setCancel_rule(rs.getString("cancel_rule"));
				board.setLsellcount(rs.getInt("lsellcount"));
				board.setLviewcount(rs.getInt("lviewcount"));
				board.setLdate(rs.getString("ldate"));
				board.setGood(rs.getInt("good"));
				board.setLphone_number(rs.getString("lphone_number"));
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

	public int board_delete(int lnumber) {
		String SQL = "UPDATE list SET del = true WHERE lnumber = ? ";
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
