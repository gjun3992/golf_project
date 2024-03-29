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
<body>
<jsp:include page="header.jsp"></jsp:include>


<section>
<h2 >회원 목록조회</h2><br/>

<form>
	
	
<table class="table table-bordered border-primary" >

	<tr>
		<th>수강월</th>
		<th>회원번호</th>
		<th>회원명</th>
		<th>강의명</th>
		<th>강의장소</th>
		<th>수강료</th>
		<th>등급</th>
	
	</tr>
	
<%
Connection conn= null;
Statement stmt=null;

try{
	conn =SQLException.getConnection();
	stmt=conn.createStatement();
	String sql ="SELECT clas.REGIST_MONTH, clas.C_NO, mem.C_NAME, tea.CLASS_NAME, "+
			"clas.CLASS_AREA, clas.tuition, mem.GRADE "+
			"FROM TBL_TEACHER_20240329 tea, TBL_MEMBER_20240329 mem, TBL_CLASS_20240329 clas "+ 
			"WHERE clas.TEACHER_CODE = tea.TEACHER_CODE "+
			 " AND clas.C_NO = mem.C_NO ";

	ResultSet rs= stmt.executeQuery(sql);	
	 while(rs.next()){
		 
		 String datestr =rs.getString("REGIST_MONTH");
		 String year =datestr.substring(0,4);
		 String month =datestr.substring(4,6);
 
		 String fdate= year+"년 "+ month+"월 ";
		 
		 %>



	<tr>

		<td> <%= fdate %></td>
		<td> <%= rs.getString("C_NO") %></td>
		<td> <%= rs.getString("C_NAME") %></td>
		<td> <%= rs.getString("CLASS_NAME") %></td>
		<td> <%= rs.getString("CLASS_AREA") %></td>
		<td> \<%= String.format("%,d", rs.getInt("tuition")) %></td>
		<td> <%= rs.getString("GRADE") %></td>

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

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>