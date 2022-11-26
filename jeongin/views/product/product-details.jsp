<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.dao.ProductDAO"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>상품</title>
<% String pjName="/petdo"; %>
<link href="<%=pjName %>/resources/mCss/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/price-range.css"
	rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="../images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<header id="header">
		<!--header-->

		<div class="container">
			<div class="header-middle">
				<!--header-middle-->
				<a href="../main.do"><img
					src="<%=pjName%>/resources/images/home/logo.png" width="12%"
					height="auto" id="petlogo" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>님
								환영합니다.</li>
							<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
							<li><a
								href="../myPage/account.do?user_id=${sessionScope.login  }"><i
									class="fa fa-user"></i></a></li>
							<li><a href="../pay/cart.do"><i
									class="fa fa-shopping-cart"></i></a></li>
							<c:if test="${'admin' eq sessionScope.login }">
								<li><a href="../admin.do"><i class="fa fa-cogs"
										aria-hidden="true"></i></a></li>
							</c:if>
						</ul>

					</div>
				</div>
			</div>
		</div>
		<!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->


		<div class="header_middle"></div>
		<div class="header-bottom">
			<!--header-bottom-->

			<div class="container">
				<div class="row">
					<div id="sm-9" class="col-sm-9">

						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<div class="mainmenu pull-left ">
							<ul class="nav navbar-nav collapse navbar-collapse"
								style="font-size: 0;">

								<li class="dropdown"><a href="../product/care-shop.do">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/care1-shop.do">목욕</a></li>
										<li><a href="../product/care2-shop.do">미용</a></li>
									</ul></li>
								<li class="dropdown"><a href="../product/toilet-shop.do">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/toilet1-shop.do">배변용품</a></li>
										<li><a href="../product/toilet2-shop.do">위생용품</a></li>
									</ul></li>
								<li><a href="../product/toy-shop.do">장난감</a></li>

								<li class="dropdown"><a href="../product/food-shop.do">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="../product/food1-shop.do">간식</a></li>
										<li><a href="../product/food2-shop.do">사료</a></li>
										<li><a href="../product/food3-shop.do">영양제</a></li>
									</ul></li>
								<li><a href="../product/living-shop.do">리빙용품</a></li>
								<li class="dropdown"><a href="../product/closet-shop.do">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="../product/closet1-shop.do">프리미엄</a></li>
										<li><a href="../product/closet2-shop.do">아우터</a></li>
										<li><a href="../product/closet3-shop.do">상의</a></li>
										<li><a href="../product/closet4-shop.do">악세사리</a></li>
									</ul></li>
								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="../blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="검색" /> <a
								href="../product/searchpage.do"
								style="margin-left: 140px; margin-top: 9px; position: absolute;"><i
								class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->

	</header>
	<!--/header-->

	<section>
		<div class="container" style="width: 70%">

			<div class="row">
				<h1 class="page-header"
					style="text-align: center; margin-bottom: 50px;">${productInfo.productName}</h1>
				<input type="hidden" value="${getProduct.product_number}"
					id="productId">
			</div>
			<div class="row" style="float: left; text-align: center; width: 35%;">
				<img alt="productPhoto"
					src="/resources/upload/${getProduct.stored_file_name}" width="150%"">
			</div>

			<div class="row productInfo" style="width: 40%; float: right;">
				<div class="form-group" style="text-align: center;">
					<h3 class="page-header">
						<span>${getProduct.product_name}</span><br>
						<small>${productInfo.productInfo}</small>
					</h3>
				</div>
				<div class="form-group" style="text-align: left;">
					<label>가격 : </label><span>&nbsp;<fmt:formatNumber
							value="${getProduct.product_price}" type="number" /></span><span>&nbsp;원</span>
					<input type="hidden" value="${getProduct.product_price}" id="price">
				</div>
				<div class="form-group" style="text-align: left;">
					<label>적립금 : </label><span><fmt:parseNumber var="test"
							value="${getProduct.product_price / 100}" integerOnly="true" />
						${test}&nbsp;원</span>
				</div>
				<div class="form-horizontal" style="text-align: left;">
					<label>구매수량 : </label> <select name= "product_count" class="form-control"
						id="select_count">

						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<hr>
				<form action="../cart/insert.do" id="cart-form">
				<input type="hidden" name= "product_number" value="${getProduct.product_number}" />
				<div class="row"
					style="margin-top: 20px; margin-left: -130px; margin-top: 120px;">
					<div class="selected_option" style="text-align: right;"></div>
					<div style="text-align: center;">
						<a href="../pay/checkout.do"><button class="btn btn-default">주문하기</button></a>
						<a href="../cart/cartList.do"><button id= "submit" class="btn btn-fefault cart"
								style="width: 200px">장바구니</button></a>
					</div>
				</div>
				</form>
				<hr>
			</div>
		</div>


		<div class="container">
			<div class="row nav">
				<nav id="middle_nav">
					<ul class="nav nav-tabs nav-justified">
						<li id="about">상품상세</li>
						<li id="review">리뷰</li>
						<li id="qna">상품문의</li>
					</ul>
				</nav>
			</div>

			<div class="row" style="margin: 50px 0;">
				<h1 class="jumbotron">
					<div class="container">
						<h1>Hello world</h1>
						<small>This is product page.</small>
					</div>
				</h1>
			</div>

			<div class="row about_product" style="text-align: center;">
				<h1 class="page-header">상품 상세</h1>

			</div>
			<div class="row reviews" style="text-align: center; margin: 80px 0;">
				<h1 class="page-header" style="margin-bottom: 50px;">Review</h1>
				<c:forEach begin="1" end="5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Panel title</h3>
						</div>
						<div class="panel-body">Panel content</div>
					</div>
				</c:forEach>
			</div>

			<div class="row qnas" style="text-align: center; height: 700px;">
				<h1 class="page-header">상품 Q&A</h1>
				/* Q&A 테이블 */
			</div>
		</div>
		</div>


		<div class="underline">
			<div class="container">
				<div class="row">
					<i class="fa fa-love"></i>
				</div>
			</div>
		</div>
		</div>
		</div>
	</section>


	<footer id="footer">
		<!--Footer-->
		<div class="footer-widget">
			<div class="container">
				<div class="row" style="padding: 3%;">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="contact-info">
							<h2 class="title text-center">Contact Info</h2>
							<address>
								<p>(주)펫두</p>
								<p>서울 금천구 가산디지털2로 101 3층 302호</p>
								<p>서울특별시 금천구 가산동</p>
								<p>Mobile: +82 10 1234 5678</p>
								<p>Fax: 1234-5678</p>
								<p>Email:petdo@shopper.com</p>
							</address>

						</div>
					</div>
				</div>
			</div>
		</div>

		</div>
		</div>
	</footer>
	<!--/Footer-->



	<script src="<%=pjName %>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>