package com.ezen.jspCh11.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ezen.jspCh11.dto.BoardVO;
import com.ezen.jspCh11.util.DBManager;

public class BoardDAO {
	
	private static BoardDAO instance = new BoardDAO();
	
	private BoardDAO() {
		super();
	}
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardVO> selectAllBoards() {
		
		String sql = "select * from board order by num desc";
		//나중에 작성한 게시글이 먼저 나오도록 작성
		List<BoardVO> list = new ArrayList<BoardVO>();
		//테이블 반환 resultSet의 각 행으 ㄹBoardVO객체로 변환하여 저장하는 list
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate")); //db의 date형은 Timestamp
				list.add(bVo); //list에 bVo객체를 추가하기
			}
		}
		catch (Exception e ) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(conn,stmt,rs);
		}
		
		return list;
	}
}
