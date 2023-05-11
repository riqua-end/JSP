package com.kim.ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/helloS") //요청 URL
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//HttpServletRequest request,HttpServletResponse response 객체는 톰캣서버가 생성해서 전달해준다
		//request에는 클라이언트에서 요청한 데이터가 있음
		//response객체는 클라이언트로 보낼 객체로 서블릿에서 데이터를 넣어줌
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//클라이언트에게 응답할 페이지 정보를 셋팅한다.
		//out객체 생성 이전에 설정
		response.setContentType("text/html;charset=UTF-8");
		
		//PrintWriter객체 생성
		PrintWriter out  = response.getWriter();
		//클라이언트(브라우저)로 보낼 HTML문장을 출력 스트림 out객체에 println하면 클라이언트로 전달됨
		out.print("<html><body><h1>");
		out.print("Hello Servlet 헬로우");
		out.print("</h1></body></html>");
		out.close(); //사용후 자원 반납
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
