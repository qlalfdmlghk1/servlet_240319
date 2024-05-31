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
		int length = Integer.valueOf(request.getParameter("length")); // 여러개 항목 받을 때
		String[] transformArr = request.getParameterValues("transform"); // 여러개 항목 받을 때
		// 인치: 길이 값을 2.54(으)로 나눕니다.
		// 야드: 길이 값을 91.44(으)로 나눕니다.
		// 피트: 길이 값을 30.48(으)로 나눕니다.
		// 미터: 길이 값을 100(으)로 나눕니다.		
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= length %>cm</h3>
		<hr>
		<h2>
			<%  // HTML 태그 안에 넣어도 됨. 
				if (transformArr != null) {
					for (String trans : transformArr) {
						if (trans.equals("inch")) {
							double inch = (double) length / 2.54;
							out.print(inch + "in<br>");	
						} else if (trans.equals("yard")) {
							double yard = (double) length / 91.44;
							out.print(yard + "yd<br>");
						} else if (trans.equals("feet")) {
							double feet = (double) length / 30.48;
							out.print(feet + "ft<br>");
						} else if (trans.equals("meter")) {
							double meter = (double) length / 100;
							out.print(meter + "m<br>");
						}
					}
				}
			%>		
		</h2>
	</div>
	
</body>
</html>