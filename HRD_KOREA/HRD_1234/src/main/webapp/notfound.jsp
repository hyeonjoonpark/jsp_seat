<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>notfound.jsp</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<h1>찾을 수 없습니다</h1>
	<input type="button" value="돌아가기" onclick="window.location='s-action.jsp'"/>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>