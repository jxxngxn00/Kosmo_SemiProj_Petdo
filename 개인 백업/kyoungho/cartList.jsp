<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String[] product = request.getParameterValues("list");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>장바구니</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/pay-css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/responsive.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/responsive.css"
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){
	//리스트페이지로 이동
	$("#btnList").click(function(){
		location.href="cart/cartList.do";
	});
});


</script>

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
						<!-- 로그아웃, 마이페이지, 장바구니, 관리자페이지(관리자일경우) 아이콘 -->
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>님
								환영합니다.</li>
							<li><a href="#" data-toggle="modal"
								data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></a></li>
							<li><a
								href="../myPage/account.do?user_id=${sessionScope.login }"><i
									class="fa fa-user"></i></a></li>
							<li><a href="cart.do"><i class="fa fa-shopping-cart"></i></a></li>
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
									href="../product/getCategoryList.do?category_code=10">장난감<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=10">소형견</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=12">소형-야외관리</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=11">대형견</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=13">대형-야외관리</a></li>
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
									href="../product/getCategoryList.do?category_code=16">리빙용품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=16">소형견</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=17">대형견</a></li>
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
								<li><a href="blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="blog/qna.do" style="color: #FF9933;">Q&A</a></li>
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
	</header>

	<section id="cart_items">
	</section>

	<div class="col-sm-12" style="margin: auto;">

		<div class="table-responsive cart_info" style="text-align: center;">
			<form id="submit" method = "post"  action="../pay/checkout.do">	
			<table class="table table-condensed"
				style="width: 50%; margin: auto;">
				<thead>
					<tr class="cart_menu">
						<th class="image">상품사진
						</th>
						<th class="description">상품이름
						</th>
						<th class="price">가격
						</th>
						<th class="quantity">수량
						</th>
						<th class="total">총가격
						</th>
						<th class="delete">취소
						</th>
						<th class="modify">수정
						</th>
					</tr>
				</thead>
				
				<tbody>
				
					<c:forEach var="cart" items="${cartList}" varStatus="i">
					<input type="hidden" name=cart_number" value="${cart.cart_number}" />
					<input type="hidden" name="product-count" value="${cart.product_count}"/>
					<input type="hidden" name= "product_price" readonly pattern="###,###,###" value="${cart.product_price}"/>
					<input type="hidden" name="product_count" value="${cart.product_number}" />
					<input type="hidden" name="product_name" value="${cart.product_name}" />
					<input type="hidden" readonly name="totalMoney" value="${cart.product_price*cart.product_count}" />
					<input type="hidden" name="user_id" value="${user_id}" />
			
							<tr>
							
								<td>사진이들어가는데 %식으로 써야함</td>
								<td>${cart.product_name}<input type="hidden" name= "product_number"  value="${cart.product_number}"/></td>
								<td><input type="text" name= "product_price" readonly pattern="###,###,###" value="${cart.product_price}"/></td>
								<td><input type="number" name="product_count" value="${cart.product_count}" /></td>
								<td><input type="text" readonly name="product_sum" value="${cart.product_price*cart.product_count}" /></td>
								<td><a href ="deleteCart.do?cart_number=${cart.cart_number}">삭제</a></td>		
								<td><button type="submit" id="btnUpdate">수정</button></td>				
						
							</tr>
					
					</c:forEach>
				</tbody>
					
			</table>
			</form>	
		</div>


		<div class="total_area" id="tableArea">
			<table class="type09" style="margin: auto;">
				<thead>
					<tr>
						<th scope="cols" colspan='2'>결제할 상품</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">상품 금액</th>
						<td><input type="text" readonly name="product_sum" value="${totalMoney}" /></td>
					</tr>
					<tr>
						<th scope="row">배송비</th>
						<td>0원</td>
					</tr>
					<tr>
						<th scope="row">결제 금액</th>
						<td>${totalMoney}</td>
					</tr>
				</tbody>
			</table>
			<a class="btn btn-default check_out" id="pay" href="../pay/checkout.do">결제하기</a>
		</div>
	</div>

	<div class="underline">
		<div class="container">
			<div class="row">
				<i class="fa fa-love"></i>
			</div>
		</div>
	</div>

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
				<!-- 버튼부분 -->
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




	<script src="<%=pjName%>/resources/js/pay_jquery.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
</body>
</html>