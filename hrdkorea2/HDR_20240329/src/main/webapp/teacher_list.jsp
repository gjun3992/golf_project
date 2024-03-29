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
table {
	text-align: left;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<section>
<h2 >강사 목록조회</h2><br/>


<form>
	
	
<table class="table table-bordered border-primary" >

	<tr>
		<th>강사코드</th>
		<th>강사명</th>
		<th>강의명</th>
		<th>수강료</th>
		<th>강사 취득일</th>
	
	</tr>
	
<%
Connection conn= null;
Statement stmt=null;

try{
	conn =SQLException.getConnection();
	stmt=conn.createStatement();
	String sql ="SELECT * FROM TBL_TEACHER_20240329 ";
	ResultSet rs= stmt.executeQuery(sql);	
	
	
	
	 while(rs.next()){
	 String datestr =rs.getString("TEACHER_REEGIST_DATE");
	 String year =datestr.substring(0,4);
	 String month =datestr.substring(5,7);
	 String day =datestr.substring(9,10);
	 
	 String fdate= year+"년 "+ month+"월 "+ day+"일 ";
	 
		 
%>
	 
			 



	<tr>

		<td> <%=rs.getString("TEACHER_CODE") %></td>
		<td> <%=rs.getString("TEACHER_NAME") %></td>
		<td> <%=rs.getString("CLASS_NAME") %></td>
		<td> \<%=String.format("%,d", rs.getInt("CLASS_PRICE")) %></td>
		<td> <%=fdate%></td>

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