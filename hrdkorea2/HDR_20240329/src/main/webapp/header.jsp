<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
header {
	text-align: center;
	background-color: #0d39fd;
	padding-top: 10px
}
header > h1{
	padding:30px;
	color: white;
	font: bold;

}
a {
	text-decoration: none;


}



</style>

</head>
<body>

<header>
<h1>골프장 회원 관리 프로그램 </h1>

<nav>
<ul class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);">
  <li class="nav-item" role="presentation">
   <a href="index.jsp"><button class="nav-link active rounded-5" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">홈으로</button></a>
  </li>
  <li class="nav-item" role="presentation">
    <a href="teacher_list.jsp"><button class="nav-link rounded-5" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">강사조회</button></a>
  </li>
  <li class="nav-item" role="presentation">
   <a href="join.jsp"><button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">수강신청</button></a>
  </li>
  <li class="nav-item" role="presentation">
     <a href="member_ilst.jsp"><button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">회원정보 조회</button></a>
  </li>
  <li class="nav-item" role="presentation">
    <a href="sales.jsp"><button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">강사매출 현황</button></a>
  </li>
</ul></nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</header>
</body>

</html>