<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
	    { 
	        put("id", 1000);
	        put("title", "아몬드"); 
	        put("author", "손원평"); 
	        put("publisher", "창비");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1001);
	        put("title", "사피엔스"); 
	        put("author", "유발 하라리"); 
	        put("publisher", "김영사");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1002);
	        put("title", "코스모스"); 
	        put("author", "칼 세이건"); 
	        put("publisher", "사이언스북");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1003);
	        put("title", "나미야 잡화점의 기적"); 
	        put("author", "히가시노 게이고"); 
	        put("publisher", "현대문학");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
	    } 
	};
	list.add(map);
%>

<%
	// 보여줄 책 정보 뽑아내기
	int id = Integer.valueOf(request.getParameter("id"));
	Map<String, Object> target = null;
	
	for (Map<String, Object> book : list) {
		if ((int) book.get("id") == id) {
			target = book;
			break;
		}
	}
%>
	<div class="container pb-5">
		<div class="d-flex">
			<div>
				<img src="<%= target.get("image") %>">
			</div>
			<div>
				<div class="display-1 font-weight-bold"><%= target.get("title") %></div>
				<div class="display-3 text-info"><%= target.get("author") %></div>
				<div class="display-4 text-secondary"><%= target.get("publisher") %></div>
			</div>
		</div>
	</div>


	
	<!-- 내 풀이 -->
	<div class="container">
		<div class="d-flex"> 
		<% 
			for (int i = 0; i < list.size(); i++) {	
				if (list.get(i).get("id").equals(Integer.valueOf(request.getParameter("id")))){
		%>
					<div>
						<img src="<%= list.get(i).get("image") %>">
					</div>
					<div>
						<h1><%= list.get(i).get("title") %> </h1>
						<h2 class="text-info"><%= list.get(i).get("author") %><h2>
						<h3 class="text-secondary"><%= list.get(i).get("publisher") %></h3>
					</div>
		<%
				}
			}
		%>
		 
		</div>
		
	</div>
</body>
</html>