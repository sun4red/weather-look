<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>게시판 목록</title>

<meta content="" name="description">
<meta content="" name="keywords">

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- 에셋 ========================================= -->

<!-- Favicons -->
<!--   <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">


<!-- ========================================= 에셋 -->



<link href="css/mainpage.css" rel="stylesheet">


</head>




<body>

	<%@ include file="../include/header.jsp"%>
	<main id="main">


	<a href="dailyform">글쓰기</a>


<section>

			<!-- 3x3 썸네일 출력 ==============> -->

			<div class="maincard">
				<c:forEach var="r" items="${dailyList}" varStatus="i">
					<div class="card-body">
						<a href="dailycontent?post_id=${r.post_id}&page=${page}"
							class="maincardlink"> <img src="images/img_${i.index }.jpg">
							<div class="maincardinfo">
								<p>${r.title}</p>
								<span>${r.nick}</span>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
			<!-- <============== 3x3 썸네일 출력 -->





	<!-- 페이징 ==============> -->

			<div style="display: flex; justify-content: center;">
				<ul class="pagination">
					<c:if test="${startPage > 10}">
						<li class="page-item disabled"><a class="page-link"
							href="dailylist?page=${startpage - 10}" tabindex="-1"
							aria-disabled="true">&laquo;</a></li>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i == page }">
							<li class="page-item active" aria-current="page"><a
								class="page-link" href="">${i}</a></li>
						</c:if>
						<c:if test="${i != page }">
							<li class="page-item"><a class="page-link"
								href="dailylist?page=${i}">${i}</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${endPage < pageCount}">
						<li class="page-item"><a class="page-link"
							href="dailylist?page=${startPage + 10}">&raquo;</a></li>
					</c:if>
				</ul>
			</div>

			<!--  <============== 페이징 -->

		</section>


	<!-- 에셋 ========================================= -->

	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

	<!-- ========================================= 에셋 -->

</body>
</html>