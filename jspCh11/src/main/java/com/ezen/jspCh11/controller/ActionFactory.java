package com.ezen.jspCh11.controller;

import com.ezen.jspCh11.command.Action;
import com.ezen.jspCh11.command.BoardListAction;
import com.ezen.jspCh11.command.BoardViewAction;
import com.ezen.jspCh11.command.BoardWriteAction;
import com.ezen.jspCh11.command.BoardWriteFormAction;

public class ActionFactory {
	
	//private이므로 ActionFactory객체를 외부에서 접근 못함
	private static ActionFactory instance = new ActionFactory();
	
	//생성자를 외부 클래스에서 사용 못함
	private ActionFactory() {
		super();
	}
	
	//외부에서 ActionFactory객체 instance를 얻을 수 있는 메서드
	public static ActionFactory getInstance() {
		return instance;
	}
	
	//요청한 command별로 실행할 업무처리 패키지 command의 클래스중 파라메터로 받은 command에 일치하는 객체 반환
	//Action은 command의 인터페이스이고 모든 command처리 클래스는 Action을 구현 처리
	public Action getAction(String command) {
		
		//command는 클라이언트에서 요청하는 command 파라메터 값
		
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		//리스트 처리
		if (command.equals("board_list")) {
			action = new BoardListAction();
		}
		//command="board_write_form" , command가 board_write_form와 같다면
		//action에 BoardWriteFormAction 빈 객체를 생성해서 대입
		else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		}
		else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		}
		else if (command.equals("board_view")) {
			action = new BoardViewAction();
		}
		return action;
	}
}
