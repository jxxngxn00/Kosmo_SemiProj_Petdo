<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/prettyPhoto.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/price-range.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon"
	href="<%=pjName%>/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />


</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->

		<div class="container">
			<div class="header-middle">
				<!--header-middle-->
				<a href="main.do"><img
					src="<%=pjName%>/resources/images/home/logo.png" width="12%"
					height="auto" " id="petlogo" style="margin-top: 10px;" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;">${sessionScope.login}님
								환영합니다.</li>
							<li><a href="#" data-toggle="modal" data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></i></a></li>
							<li><a href="myPage/account.do?user_id=${sessionScope.login }"><i class="fa fa-user"></i></a></li>
							<li><a href="pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
							<c:if test="${'admin' eq sessionScope.login }">
								<li><a href="admin.do"><i class="fa fa-cogs"
										aria-hidden="true"></i></a></li>
							</c:if>
						</ul>

					</div>
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

								<li class="dropdown"><a href="product/getProductList.do">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/care1-shop.do">목욕</a></li>
										<li><a href="product/care2-shop.do">미용</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/toilet-shop.do">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/toilet1-shop.do">배변용품</a></li>
										<li><a href="product/toilet2-shop.do">위생용품</a></li>
									</ul></li>
								<li><a href="product/toy-shop.do">장난감</a></li>

								<li class="dropdown"><a href="product/food-shop.do">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="product/food1-shop.do">간식</a></li>
										<li><a href="product/food2-shop.do">사료</a></li>
										<li><a href="product/food3-shop.do">영양제</a></li>
									</ul></li>
								<li><a href="product/living-shop.do">리빙용품</a></li>
								<li class="dropdown"><a href="product/closet-shop.do">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/closet1-shop.do">프리미엄</a></li>
										<li><a href="product/closet2-shop.do">아우터</a></li>
										<li><a href="product/closet3-shop.do">상의</a></li>
										<li><a href="product/closet4-shop.do">악세사리</a></li>
									</ul></li>
								<li><a href="blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="검색" /> <a
								href="product/searchpage.do"
								style="margin-left: 140px; margin-top: 9px; position: absolute;"><i
								class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
					</div>
	</header>



	<section id="slider">
		<!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
						</ol>

						<div class="carousel-inner">
							<div class="item active">

								<div class="col-sm-6 slider1">
									<img src="<%=pjName%>/resources/images/home/main_01.png"
										class="girl img-responsive" alt="" />

								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<img src="<%=pjName%>/resources/images/home/main_002.png"
										class="girl img-responsive" alt="" />
								</div>
							</div>

							<div class="item">
								<div class="col-sm-6">
									<img src="<%=pjName%>/resources/images/home/main_03.jpg"
										class="girl img-responsive" alt="" />
								</div>
							</div>

						</div>

						<a href="#slider-carousel" class="left control-carousel hidden-xs"
							data-slide="prev"> <i class="fa fa-angle-left"></i>
						</a> <a href="#slider-carousel"
							class="right control-carousel hidden-xs" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--/slider-->


	<hr />
	<!-- 실시간 best 목록 나열 -->
	<div id="top" class="col-sm-9 padding-right">
		<div class="features_items" style="margin-left: -30px;">
			<!--features_items-->
			<div class="prd_more">
				<a href="shop.html" id="view">전체보기 &nbsp+</a>
			</div>
			<h2 class="title text-center" style="font-size: 45px; text-align: left;">STORE BEST</h2>


			<div class="col-sm-4" id="col-sm-4">
				<div class="productinfo text-center">
					<div class="product-image-wrapper">
						<div class="single-products">
							<img src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
								alt="" />
							<p>
								<a href="product/product-details.do">테디 블라썸 져지</a>
							</p>
							<strong class="product_price"> <span
								style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
							</strong> <strong class="sale_price"> <span
								style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
							</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
								id="new" width="2px" height="auto" alt="" /> <img
								src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
								width="2px" height="auto" alt="" />
						</div>
					</div>
				</div>
			</div>


			<div class="col-sm-4" id="col-sm-4">
				<div class="productinfo text-center">
					<div class="product-image-wrapper">
						<div class="single-products">
							<img src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
								alt="" />
							<p>테디 블라썸 져지</p>
							<strong class="product_price"> <span
								style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
							</strong> <strong class="sale_price"> <span
								style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
							</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
								id="new" width="2px" height="auto" alt="" /> <img
								src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
								width="2px" height="auto" alt="" />
						</div>
					</div>
				</div>
			</div>



			<div class="col-sm-4" id="col-sm-4">
				<div class="productinfo text-center">
					<div class="product-image-wrapper">
						<div class="single-products">
							<img src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
								alt="" />
							<p>테디 블라썸 져지</p>
							<strong class="product_price"> <span
								style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
							</strong> <strong class="sale_price"> <span
								style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
							</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
								id="new" width="2px" height="auto" alt="" /> <img
								src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
								width="2px" height="auto" alt="" />
						</div>
					</div>
				</div>
			</div>
		</div>

	<hr/>

		<div class="category-tab">
		
	<img src="<%=pjName%>/resources/images/home/subbanner5.png" width="100%" height="auto" style="margin-bottom: 35px; margin-top: -12px"  alt="" />
	

			<div class="tab-content">
				<div class="tab-pane fade active in" id="tshirt">
					<h2 class="text-category" style="margin-top: -5px; font-size: 45px">NEW PRODUCT</h2><br/><br/>
					
					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
								
									<img src="<%=pjName%>/resources/images/home/gallery2.jpg"
										alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=pjName%>/resources/images/home/gallery2.jpg"
										alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=pjName%>/resources/images/home/gallery3.jpg"
										alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=pjName%>/resources/images/home/gallery4.jpg"
										alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
								</div>
							</div>
						</div>
					</div>


					<div class="col-sm-3">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="<%=pjName%>/resources/images/home/gallery4.jpg"
										alt="" />
									<h2>$56</h2>
									<p>Easy Polo Black Edition</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=pjName%>/resources/images/home/gallery3.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=pjName%>/resources/images/home/gallery2.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
								<img src="<%=pjName%>/resources/images/home/gallery2.jpg" alt="" />
								<h2>$56</h2>
								<p>Easy Polo Black Edition</p>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>

	</div>
	<!--/category-tab-->

	<a href="care-shop.html"><img
		src="<%=pjName%>/resources/images/home/subbanner2.png" width="100%"
		height="auto" alt="" /></a>
	<div class="col-sm-9">
		<!--recommended_items-->
		<div class="recommended_items">
			<br />
			<h2 class="title text-center"
				style="margin-top: 20px; text-align: left; font-size: 45px">CARE ITEM</h2>

			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="left recommended-item-control"
					href="#recommended-item-carousel"
					style="margin-left: -1820px; margin-top: 7%; border-radius: 50%;"
					data-slide="prev"> <i class="fa fa-angle-left"
					style="border-radius: 50%;"></i>
				</a> <a class="right recommended-item-control"
					href="#recommended-item-carousel" style="margin-top: 7%"
					data-slide="next"> <i class="fa fa-angle-right"
					style="border-radius: 50%;"></i>
				</a>
			</div>
		</div>
		<!--/recommended_items-->

	</div>
	<a href="food-shop.html"><img
		src="<%=pjName%>/resources/images/home/subbanner3.png" width="100%"
		height="auto" alt="" /></a>

	<div class="col-sm-9">
		<!--recommended_items-->
		<div class="recommended_items">
			<br />
			<h2 class="title text-center"
				style="margin-top: 20px;  text-align: left; font-size: 45px">FOOD ITEM</h2>

			<div id="recommended-item-carousel" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="item active" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" style="margin-left: 12%;">
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4" id="col-sm-4">
							<div class="productinfo text-center">
								<div class="product-image-wrapper">
									<div class="single-products">
										<img
											src="<%=pjName%>/resources/images/home/20_테디 블라썸 져지_2.jpg"
											alt="" />
										<p>테디 블라썸 져지</p>
										<strong class="product_price"> <span
											style="font-size: 16px; color: #000000;">42,000원
												&nbsp;</span>
										</strong> <strong class="sale_price"> <span
											style="font-size: 16px; color: #afafaf; text-decoration-line: line-through;">38,000원</span>
										</strong><br /> <img src="<%=pjName%>/resources/images/home/BEST.JPG"
											id="new" width="2px" height="auto" alt="" /> <img
											src="<%=pjName%>/resources/images/home/NEW.JPG" id="new"
											width="2px" height="auto" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="left recommended-item-control"
					href="#recommended-item-carousel"
					style="margin-left: -1820px; margin-top: 7%; border-radius: 50%;"
					data-slide="prev"> <i class="fa fa-angle-left"
					style="border-radius: 50%;"></i>
				</a> <a class="right recommended-item-control"
					href="#recommended-item-carousel" style="margin-top: 7%"
					data-slide="next"> <i class="fa fa-angle-right"
					style="border-radius: 50%;"></i>
				</a>
			</div>
		</div>
	<!--/recommended_items-->


	<!-- logout Modal -->
	<div class="modal fade" id="logoutModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Petdo - 로그아웃</h2>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 50px;">로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" style="border-radius: 10px;">취소</button>
					<a class="btn btn-primary" href="logOut.do"
						style="border-radius: 10px; margin-top: 0px">로그아웃</a>
				</div>
			</div>
		</div>
	</div>	
		
		<hr/>
		<br/>
		<video muted autoplay loop>
      			<source src="<%=pjName%>/resources/images/페스룸.mp4" type="video/mp4">
    	</video>
    		
	
	<!-- /logout Modal -->

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

	</footer>
	<!--/Footer-->



	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
</body>
</html>