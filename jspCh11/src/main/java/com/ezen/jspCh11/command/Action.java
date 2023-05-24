package com.ezen.jspCh11.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	//추상 메서드 하나로 처리
	public void execute(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException;
}
