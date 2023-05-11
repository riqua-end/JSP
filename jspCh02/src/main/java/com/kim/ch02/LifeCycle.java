package com.kim.ch02;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycle
 */
@WebServlet("/LifeCycle")
public class LifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//인스턴스형 멤버 변수
	int initCount = 1;
	int doGetCount = 1;
	int destroyCount = 1;
	int constructCnt = 1;
	
    public LifeCycle() {
        super();
        //한번 생성되면 메모리에 저장되어 다른 요청시에도 사용
        System.out.println("서블릿객체 생성 : " + constructCnt++);
    }

	public void init(ServletConfig config) throws ServletException {
		//맨처음 한번만 호출
		//파라메터는 ServletConfig config객체
		System.out.println("init 메소드는 첫 요청만 호출됨 : " + initCount++);
	}

	public void destroy() {
		//server stop시 한번 호출 (아래 server 선택-톰캣서버 우클릭-stop해야 보임)
		System.out.println("destroy 메소드는 톰캣이 종료될 때만 호출됨 : " + destroyCount++);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청시 마다 호출
		System.out.println("doGet 메소드가 요청때마다 호출됨 : " + doGetCount++);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
