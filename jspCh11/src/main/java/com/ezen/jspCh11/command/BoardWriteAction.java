package com.ezen.jspCh11.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.jspCh11.dao.BoardDAO;
import com.ezen.jspCh11.dto.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//form에서 입력받은 데이터를 저장
		BoardVO bVo = new BoardVO(); //form의 입력 값을 수용할 빈 클래스
		bVo.setName(request.getParameter("name")); //form의 name="name"의 입력값
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo); //bDao의 게시글 등록 메서드 호출
		new BoardListAction().execute(request, response); //게시판리스트처리
	}

}
