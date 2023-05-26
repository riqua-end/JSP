package com.ezen.jspCh11.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
	
	//insertBoard 게시글 등록 처리
	public void insertBoard(BoardVO bVo) {
		
		String sql = "insert into board(num,name,email,pass,title,content)"
				+ "values(board_seq.nextval, ?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null; //PreparedStatement는 Statement를 상속한 하위클래스
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.executeUpdate(); //insert,delete,update는 executeUpdate로 처리
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt); //다형성으로 하위 클래스인 PreparedStatement를 파라메터로 사용
		}
	}
	
	//updateReadCount 조회 횟수 업데이트
	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			//원래는 pstmt.setInt(1,Integer
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//조회대상 ResultSet를 매핑되는 BoardVO객체로 변환하여 리턴
	public BoardVO selectOneBoardByNum(String num) {
		String sql = "select * from board where num = ?";
		BoardVO bVo = null;		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setPass(rs.getString("pass"));
				bVo.setEmail(rs.getString("email"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				bVo.setReadcount(rs.getInt("readcount"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally { 
			DBManager.close(conn, pstmt);
		}
		return bVo;
	}
	
	//updateBoard
	public void updateBoard(BoardVO bVo) {
		String sql = "update board set name=?,email=?,pass=?,title=?,content=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.setInt(6, bVo.getNum()); //db테이블에서는 number
			pstmt.executeUpdate(); //리턴값은 update성공한 레코드수
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	//deleteBoard
	
	public void deleteBoard(String num) {
		String sql = "delete board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
