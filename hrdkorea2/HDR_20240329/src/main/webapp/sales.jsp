<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="DBPKG.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
section {
    padding-top:100px;
    padding-left: 40px;
	padding-right: 40px;
	text-align: center;
	
} 

 h2 {
	
}
form {
	top: 50px;
}

</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>


<section>
<h2 >강사매출 현황</h2><br/>

<form>
	
	
<table class="table table-bordered border-primary" >

	<tr>
		<th>강사코드</th>
		<th>강사명</th>
		<th>강의명</th>
		<th>매출</th>

	
	</tr>
	
<%
Connection conn= null;
Statement stmt=null;

try{
	conn =SQLException.getConnection();
	stmt=conn.createStatement();
	String sql ="SELECT tea.TEACHER_CODE, tea.TEACHER_NAME, tea.CLASS_NAME, "+
	        "SUM(clas.TUITION) AS TOTAL_TUITION "+
	        "FROM TBL_TEACHER_20240329 tea,TBL_CLASS_20240329 clas  "+
	        "WHERE clas.TEACHER_CODE = tea.TEACHER_CODE "+
	        "GROUP BY  tea.TEACHER_CODE, tea.TEACHER_NAME,tea.CLASS_NAME ";

	ResultSet rs= stmt.executeQuery(sql);	
	
	
	
	 while(rs.next()){

%>

	<tr>

		<td> <%=rs.getString("TEACHER_CODE") %></td>
		<td> <%=rs.getString("TEACHER_NAME") %></td>
		<td> <%=rs.getString("CLASS_NAME") %></td>
		<td> \<%=String.format("%,d", rs.getInt("TOTAL_TUITION")) %></td>

	</tr>
<%
	 }
}catch (Exception e){
		e.printStackTrace();
	}

%>	
	
</table>
</form>
</section>


</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>