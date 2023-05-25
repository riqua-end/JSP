package com.ezen.jspCh11.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.jspCh11.dao.BoardDAO;
import com.ezen.jspCh11.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "board/boardView.jsp"; //조회화면
		String num = request.getParameter("num"); //formㅔㅇ서 오는 값은 문자열
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateReadCount(num); //조회수 처리 메서드
		BoardVO bVo = bDao.selectOneBoardByNum(num); //조회대상 데이터 처리
		request.setAttribute("board", bVo); //이동 jsp에서 사용할수있도록 속성 추가
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
