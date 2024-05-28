package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		// response header
		response.setContentType("text/html");
		
		// request params
		String name = request.getParameter("name");
		String selfIntroduce = request.getParameter("selfIntroduce");		
		
		// 테이블 출력
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>회원 정보</title></head><body>");
		out.println(name + "님의 지원이 완료 되었습니다. <br><br>");
		out.println("<b>지원내용</b><br><br>" + selfIntroduce);
		out.print("</ul></body></html>");
	}
}
