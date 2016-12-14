<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 旁邊拉來的 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">





<title>歡迎光臨</title>



</head>
<%@include file="navbar.jspf"%>

<body>



	<!-- Page Content -->
	<div class="container theme-showcase" role="main">

		<!-- Page Header -->
		<!-- <div class="jumbotron"> -->
		<div class="col-lg-5">

			<h1 class="page-header">
				<strong>商品列表</strong>
			</h1>


		</div>

		<div class="row"></div>
		<div class="row"></div>
		<div class="row">
			<div class="row">
				<!---->

				<c:forEach items="${productList}" var="product">
					<div class="col-md-4 portfolio-item" style="top: 30px;">
						<a href="#"> <img class="img-responsive"
							src="${m}${product.product_id}.jpg"
							style="width: 300px; height: 300px" alt="替代文字王4ni">
						</a>
						<h3>
							<a href="inf?id=${product.product_id}">${product.name}</a>
						</h3>
						<p>欣佑推薦${product.product_id}號</p>
						<a class="btn btn-default" href="add?id=${product.product_id}">當然是加入啊</a>
					</div>
				</c:forEach>

			</div>

			<hr>

			<hr>


			<footer>
				<div class="row">
					<div class="col-lg-12">
						<p>Copyright &copy; Your Future Website 3018 我要當魔鬼終結者</p>
					</div>
				</div>

			</footer>

		</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</body>

</html>
