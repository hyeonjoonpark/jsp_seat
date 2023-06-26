<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section>
		<h1>부서별근무일수집계</h1>
		
		<table border="1">
			<tr>
				<td>사원번호</td>
				<td>이름</td>
				<td>부서명</td>
				<td>근무일수</td>
			</tr>
				<% 
					try {
						Class.forName("oracle.jdbc.OracleDriver");
						Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
						String sql = "select te.empno, te.empname, te.deptcode, tr.resvdate " +
									"from tbl_emp_202108 te, tbl_resv_202108 tr " +
									"where te.empno = tr.empno";
						PreparedStatement pstmt = conn.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
				%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
			</tr>
				<%
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
		</table>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>