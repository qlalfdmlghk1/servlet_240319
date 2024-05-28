package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")  // 모든 경로에 대해
public class CharacterEncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// 필터를 통과할 때 인코딩 설정 (앞으로는 각 클래스에서 따로 설정할 필요 없음)
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
	}

}
