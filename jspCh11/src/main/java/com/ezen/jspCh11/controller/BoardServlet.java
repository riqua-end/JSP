package com.ezen.jspCh11.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.jspCh11.command.Action;

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		//command 파라메터에 비지니스로직을 구분하는 파라메터 값
		//즉 게시판 목록을 처리할시는 BoardServlet?command=board_list
		System.out.println("BoardServlet에서 요청을 받음을 확인 : " + command);
		//받은 파라메터 command값에 따른 비지니스처리로직을 선택하는 클래스 ActionFactory
		ActionFactory af = ActionFactory.getInstance();
		
		//비지니스로직별 클래스 객체를 얻어오는 작업
		//action은 command(비지니스로직처리)패키지의 인터페이스
		//Action인터페이스를 구현한 각각의 클래스가 각 업무 처리 클래스 
		Action action = af.getAction(command); //command처리용 객체를 반환
		
		if(action != null) {
			action.execute(request,response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //post로된 form입력 한글값 깨짐 방지
		doGet(request, response);
	}

}
