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
<title>PetDo : QnA - 상세보기</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/blog-css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/animate.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/responsive.css"
	rel="stylesheet">
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
	<!--header-->
	<header id="header">
		<!--header-->

		<div class="container">
			<div class="header-middle">
				<!--header-middle-->
				<a href="../main.do"><img
					src="<%=pjName%>/resources/images/home/logo.png" width="12%"
					height="auto" " id="petlogo" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<!-- 로그아웃, 마이페이지, 장바구니, 관리자페이지(관리자일경우) 아이콘 -->
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>님
								환영합니다.</li>
							<li><a href="#" data-toggle="modal"
								data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></a></li>
							<li><a
								href="../myPage/account.do?user_id=${sessionScope.login }"><i
									class="fa fa-user"></i></a></li>
							<li><a href="../cart/cartList.do"><i
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
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=14">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=14">목욕</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=15">미용</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=9">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=9">배변용품</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=8">위생용품</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=5">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=5">간식</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=6">사료</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=7">영양제</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=1">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=1">프리미엄</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=2">아우터</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=3">상의</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=4">악세사리</a></li>
									</ul></li>
								<li><a href="notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="검색" /> <a
								href="product/searchpage.do"
								style="margin-left: 140px; margin-top: -2px; position: absolute;"><i
								class="fa-sharp fa-solid fa-magnifying-glass"
								style="color: black;"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
					</div>
	</header>


	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian">
							<!--category-productsr-->

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="faq.do">FAQ</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="qna.do">QnA</a>
									</h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a href="notice.do">공지사항</a>
									</h4>
								</div>
							</div>
						</div>
						<!--/category-productsr-->

						<div class="shipping text-center">
							<!--shipping-->
							<img src="<%=pjName%>/resources/images/home/shipping.jpg" alt="" />
						</div>
						<!--/shipping-->
					</div>
				</div>
				<div class="col-sm-8">
					<div class="blog-post-area">
						<div class="single-blog-post">
							<h3>${qna.qna_title }</h3>
							<div class="post-meta">
								<ul>
									<li><i class="fa fa-user"></i> ${qna.qna_writer }</li>
									<li><i class="fa fa-clock-o"></i> ${qna.qTime }</li>
									<li><i class="fa fa-calendar"></i> ${qna.qDate }</li>
								</ul>
								<br />
								<div>${qna.qna_content}</div>
							</div>
						</div>
						<!--/blog-post-area-->


						<div id="comment" class="media commnets">
							<a class="pull-left" href="#" style="width:100px;"> <img class="media-object" 
								style="width:100%; margin-left:10px;"
								src="<%=pjName%>/resources/images/blog/paw.png" alt="">
							</a>
							<div class="media-body">
								<c:if test="${qna.answer_title ne null}">
									<h4 class="media-heading">PetDo 운영자</h4>
									<p>${qna.answer_content }</p>
								</c:if>
								<c:if test="${qna.answer_title eq null}">
									<h4 class="media-heading">아직 답변이 달리지 않았습니다.</h4>
								</c:if>
							</div>
						</div>
						<!--Comments-->

						<div class="response-area">
							<h2>RESPONSES</h2>
							<ul class="media-list"  id="replyList">
								
							</ul>
						</div>
						<!--/Response-area-->
						<div class="replay-box">
							<div class="row">
									<input type="hidden" name="replyer"
										value="${sessionScope.login}" /> 
									<input type="hidden"
										name="bno" value="${qna.qna_seq}" />
									<div class="col-sm-12">
										<div class="text-area">
											<div class="blank-arrow">
												<label>Leave comment</label>
											</div>
											<span>*</span>
											<textarea name="reply" rows="11"></textarea>
											<button class="btn btn-primary" id="submitBtn">comment</button>
										</div>
									</div>
							</div>
						</div>
						<!--/Repaly Box-->
					</div>
				</div>
			</div>
	</section>
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
					<a class="btn btn-primary" href="../logOut.do"
						style="border-radius: 10px; margin-top: 0px">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
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
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script src="<%=pjName%>/resources/js/reply.js"></script>

</body>
</html>