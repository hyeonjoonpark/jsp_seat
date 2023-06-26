<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>s-action.jsp</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section  style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
<%
	request.setCharacterEncoding("UTF-8");
	String empno = request.getParameter("empno");
	try {
		Integer i;
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		
		String sql = "select te.empno, empname, resvdate, ts.seatno, office, callno " +
					"from tbl_emp_202108 te, tbl_seat_202108 ts, tbl_resv_202108 tr " +
					"where tr.seatno = ts.seatno and te.empno = tr.empno and te.empno = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, empno);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			%>
			<h1>사원번호: <%=rs.getString("empno") %> 님의 좌석예약조회</h1>
		<table border="1">
		<tr>
			<td>사원번호</td>
			<td>이름</td>
			<td>근무일자</td>
			<td>좌석번호</td>
			<td>좌석위치</td>
			<td>내선번호</td>
		</tr>
		<%
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
		</tr>
		</table>
		<%
			}
		} else {
			%>
			<jsp:forward page="notfound.jsp"></jsp:forward>
			<%
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>