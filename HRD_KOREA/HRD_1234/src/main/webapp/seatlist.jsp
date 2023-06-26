<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>seatlist.jsp</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
	<h1>좌석예약조회</h1>
	
	<form action="s-action.jsp" method="post">
		<table border=1>
			<tr>
				<td>사원번호를 입력하시오</td>
				<td><input type="text" name="empno" /></td>
			</tr>
			<tr>
				<td rowspan=2>
					<input type="submit" value="좌석에약조회"/>
					<input type="button" value="홈으로" onclick="window.location='index.jsp'"/>
				</td>
			</tr>
		</table>
	</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>