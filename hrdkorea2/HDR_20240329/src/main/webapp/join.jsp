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
table .button_{
	text-align: center;

}
select{
	width: 25%;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<section>
<h2 >수강신청</h2><br/>

<form  method="post" 
<%-- action="action.jsp" --%>
name="frm"
onsubmit="return check(this);">


<table class="table table-bordered border-primary" >
	<tr>
		<th>수강월</th>
		<td>
			<input type="text" name="regist_month"/> 2023년 4월 =>202404
		</td>
	</tr>
	<tr>
		<th>회원명</th>
		<td>
			<select class="form-select" aria-label="Default select example" name="c_name" onchange="fn_change1()">
			  <option selected value="회원명">회원명</option>
			  <option value="10001">홍갈동</option>
			  <option value="10002">장발장</option>
			  <option value="10003">임꺽정</option>
			  <option value="20001">성춘향</option>
			  <option value="20002">이몽룡</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>회원번호</th>
		<td>
			<input type="text"  name="c_no" /> ex)10001
		</td>
	</tr>
	<tr>
		<th>강의장소</th>
		<td>
			<input type="radio" checked  name="calss_area"/>서울본점 
			<input type="radio" />성남분점 
			<input type="radio" />대전분점 
			<input type="radio" />부산분점 
			<input type="radio" />대구분점 
		</td>
	</tr>
	<tr>
		<th>강의명</th>
		<td>
			<select class="form-select" aria-label="Default select example" name="teacher_code" onchange="fn_change2()">
			  <option selected value="강의신청">강의신청</option>
			  <option value="100000">초급반</option>
			  <option value="200000">중급반</option>
			  <option value="300000">고급반</option>
			  <option value="400000">심화반</option>
			</select>
		</td>
	</tr>
	<tr>
		<th>수강료</th>
		<td>
			<input type="text" name="tuition" value=""/> 원
		</td>
	</tr>
	<tr>
		<td colspan="2" class="button_">
			<button type="submit" class="btn btn-primary">수강신청</button>
			<button type="reset" class="btn btn-primary">다시쓰기</button>
		</td>
		
	</tr>




	
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
function check(form) {
	 if (form.regist_month.value ==="") {
	        alert("수강월을 입력하시오");
	        form.regist_month.focus();
	        return false;
	    }
	 if (form.c_name.value ==="회원명") {
	        alert("회원명을 선택하시오");
	        form.c_name.focus();
	        return false;
	    }
	 if (form.c_no.value ==="") {
	        alert("회원번호를 입력하시오");
	        form.mem_num.focus();
	        return false;
	    }
	
	 if (form.teacher_code.value =="강의신청") {
	        alert("강의명을 선택하시오");
	        form.teacher_code.focus();
	        return false;
	    }
	 if (form.tuition.value ==="") {
	        alert("수강료를 입력하시오");
	        form.tuition.focus();
	        return false;
	    }
	    
	    
	    alert("수강신청이 안료되었습니다.");
	    return true;
	}

function fn_change1() {
    var fn = document.frm;
    
    fn.tuition.value = "";
    
    fn.teacher_code.options[0].selected = true;
    fn.c_no.value = fn.c_name.value;
}
function fn_change2() {
    console.log("fn_change2() function called."); // Check if the function is called
    var fn = document.frm;
    var price = parseInt(fn.teacher_code.value) * 1000 ; 
    var c_no = parseInt(fn.c_no.value); 
    
    if (c_no >= 20000) {
        price *= 0.5; 
    }
    
    fn.tuition.value = price;
}
</script>

</body>
</html>