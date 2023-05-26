package com.ezen.jspCh11.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.jspCh11.dao.BoardDAO;
import com.ezen.jspCh11.dto.BoardVO;

public class BoardCheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = null;
		String num = request.getParameter("num"); //boardCheckPass.jsp 비밀번호확인 입력창에서 온 파라메터
		String pass = request.getParameter("pass");
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		//게시글 상세보기시 만든 메서드로 num을
		
		if (bVo.getPass().equals(pass)) { //성공
			url = "board/checkSuccess.jsp"; //상세내용인데 수정 가능 form형식 jsp
		} else { //실패
			url = "board/boardCheckPass.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
