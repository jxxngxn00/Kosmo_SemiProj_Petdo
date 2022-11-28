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
<title>PetDo : 마이페이지 - 주문정보</title>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
<link href="<%=pjName%>/resources/blog-css/custom.css" rel="stylesheet">

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
							<li><a href="account.do?user_id=${sessionScope.login }"><i
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
								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="../blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;">Q&A</a></li>
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
				<div class="col-sm-12">
					<br /> <br /> <br />
					<h2 class="title text-center"
						style="margin-bottom: 80px; font-size: 45px; font-family: 'Noto Sans KR', sans-serif;">Order
						List</h2>

				</div>
			</div>
			<div class="row" style="margin: 0px auto;">

				<div class="col-sm-8" style="text-align: center;">
					<form action="return.do">
						<table id="detailTbl">
							<tr>
								<th scope="row">주문번호</th>
								<td><input name="" type="text"
									value="${userOrder.order_number }" readonly /></td>
							</tr>
							<tr>
								<th scope="row">상품명</th>
								<td><input name="" type="text"
									value="${userOrder.product_name }" readonly /></td>
							</tr>
							<tr>
								<th scope="row">주문날짜</th>
								<td><input name="" type="text"
									value="${userOrder.order_date }" readonly /></td>
							</tr>
							<tr>
								<th scope="row">배송상태</th>
								<td><input name="" type="text"
									value="${userOrder.order_detail_status }" readonly /></td>
							</tr>
							<tr>
								<th scope="row">구매자</th>
								<td><input name="" type="text"
									value="${userOrder.user_name }" readonly /></td>
							</tr>
							<tr>
								<th scope="row">결제금액</th>
								<td><input name="" type="text"
									value="${userOrder.product_price }" readonly /></td>
							</tr>
						</table>
						<input type="submit" value="환불/교환" id="submitBtn" />
					</form>
				</div>

				<div class="col-sm-4" style="margin-top: -150px;">
					<div class="contact-info">
						<p class="title text-center" id="fonttitle"
							style="text-transform: capitalize; font-family: 'Noto Sans KR', sans-serif;">Order
							Info</p>
					</div>
					<h3
						style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">나의
						정보</h3>
					<ul>
						<li style="margin-left: -38px;"><a
							href="account.do?user_id=${sessionScope.login}"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">회원
								정보 조회</a><br /> <br />
								<a href="accoutModify.do?user_id=${sessionScope.login}"
						style="font-family: 'Noto Sans KR', sans-serif;" >회원 정보 수정</a><br />
							<br /> <a href="#" data-toggle="modal"
							data-target="#logoutModalCenter"
							style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a><br />
							<br /> <br /></li>

					</ul>
					<div class="subtitle">
						<h3
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">주문
							정보</h3>
					</div>
					<ul>
						<li style="margin-left: -38px;"><a
							href="mOrder.do?user_id=${userInfo.user_id }"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">주문
								내역</a><br /> <br /> <a href="../pay/cart.do"
							style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">장바구니</a><br />
						</li>
					</ul>

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
	
	<!-- password check Modal -->
	<div class="modal fade" id="passwordModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Petdo - 비밀번호 확인</h2>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 10px;">
					비밀번호를 한번 더 입력해주세요. <br/>
					<input type="password" id="pwdInput" placeholder="비밀번호" style="width:100%"/>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" style="border-radius: 10px;">취소</button>
					<button class="btn btn-primary" type="button" id="pwdChk"
						data-dismiss="modal" style="border-radius: 10px; margin-top:0px;">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /password check Modal -->
	
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
	<!-- font awesome CDN -->
	<script src="https://kit.fontawesome.com/3364ed6976.js"
		crossorigin="anonymous"></script>
</body>
</html>