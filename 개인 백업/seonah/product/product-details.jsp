<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.dao.ProductDAO"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Product Details | E-Shopper</title>
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
								<li class="dropdown"><a href="../main.do">홈</a></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=14">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=14">목욕</a></li>
										<li><a href="product/getCategoryList.do?category_code=15">미용</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=9">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=9">배변용품</a></li>
										<li><a href="product/getCategoryList.do?category_code=8">위생용품</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=5">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=5">간식</a></li>
										<li><a href="product/getCategoryList.do?category_code=6">사료</a></li>
										<li><a href="product/getCategoryList.do?category_code=7">영양제</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=1">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=1">프리미엄</a></li>
										<li><a href="product/getCategoryList.do?category_code=2">아우터</a></li>
										<li><a href="product/getCategoryList.do?category_code=3">상의</a></li>
										<li><a href="product/getCategoryList.do?category_code=4">악세사리</a></li>
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
		<!--/header-bottom-->

	</header>
	<!--/header-->

	<section>
		<div class="container" style="width: 70%">
			
			<div class="row">
				<h1 class="page-header"
					style="text-align: center; margin-bottom: 50px;">${productInfo.productName}</h1>
				<input type="hidden" value="${getProduct.product_name}"
					id="product_number" style="font-weight: bold;">
			</div>
			<div class="row" style="float: left; text-align: center; width: 35%;">
				<img alt="productPhoto"
					src="<%=pjName%>/resources/images/shop/${getProduct.stored_file_name}" width="150%" style="float: center;" name="stored_file_name">
			</div>

			<div class="row productInfo" style="width: 40%; float: right;">
				<div class="form-group" style="text-align: left;">
					<h3 class="page-header">
						<span style="font-size: 32px;  font-family: Noto Sans KR">${getProduct.product_name}</span><br>
					</h3>
				</div>
				<div class="form-group" style="text-align: left;">
					<label style="font-family: Noto Sans KR">가격 : </label><span>&nbsp;
					<fmt:formatNumber name= "product_price" value="${getProduct.product_price}" type="number" style="font-family: Noto Sans KR"/></span><span>&nbsp;${getProduct.product_price}원</span>
					<input type="hidden" value="${getProduct.product_price}" id="price" style="font-family: Noto Sans KR">
				</div>
				<div class="form-group" style="text-align: left;">
					<label style="font-family: Noto Sans KR">배송비 : </label><span>&nbsp;2500원</span>
					<p style="font-family: Noto Sans KR">도서산간지역 배송비 5000원 / 3만원 이상 결제시 무료배송</p>
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
            	<input type="hidden" name="product_name" value="${getProduct.product_name}"/>
            	<input type="hidden" name="user_id" value="${user_id}"/>
            	<input type="hidden" name="product_price" value="${getProduct.product_price}"/>
				<input type="hidden"  value= '${getProduct.stored_file_name}'  name="stored_file_name">
																					 

				<div class="row"
					style="margin-top: 20px; margin-left: 50px;">
					<div class="selected_option" style="text-align: right; margin-top: 230px;"></div>
					<div class="orderbtn" style="text-align: center; ">
						<a href="../pay/checkout.do"><button class="btn btn-fefault cart">주문하기</button></a>
						<a href="../cart/cartList.do"><button id= "submit" class="btn btn-fault cart"
								style="width: 200px">장바구니</button></a>
					</div>
				</div>
				</form>
			</div>
		</div>


								
	<div class="container">
	<hr/>
		<div class="row nav" style="margin-left: 380px; font-size: 16px; font-weight:bold; margin-top: -5px; font-family: Noto Sans KR; letter-spacing: 6px;">
			<nav id="middle_nav">
				<ul class="nav nav-tabs nav-justified" style="list-style-type: none; float: left;">
					<a href="#product-info"><li id="about" style="list-style-type: none; float: left;">상품상세</li></a>
					<a href="#product-review"><li id="review" style="list-style-type: none; float: left; margin-left: 260px">리뷰</li></a>
				</ul>
			</nav>
		</div>
		
			<hr style="width: 100%;"/>
		
		<img src="<%=pjName%>/resources/images/banner55.jpg" width="100%" height="auto" style="margin-top: 20px; margin-bottom: 30px;" alt="" />
				
			
		
		<div id="product-info" class="row about_product" style="text-align: center;">
			<img src='<%=pjName%>/resources/images/product-details/${getProduct.stored_main_file_name}' width=80%; height=auto; name="stored_main_file_name">
		</div>
		
		
		<div class="view-reviews" style="text-align: center; margin: 80px 0;">
			<h1 class="page-header" style="margin-bottom: 50px;  font-weight: bold; font-family: Noto Sans KR;">리뷰</h1>
			<!-- 리뷰 조회 -->
			<c:forEach items="${orderReview}" var="vo">
				<div class="form-group">
				<input name="product_number" type="hidden" value="${vo.product_number}"/>
							<label for="username" style="float: left; margin-top: 5px;">
								이름
								<span class="require"></span>
							</label>
							<input type="text" class="form-control" id="username" value="${vo.review_writer}" readonly style="width:14%; margin-left: 50px;">
						</div>
						<div>
							<img src="<%=pjName %>/resources/images/review/${vo.review_realname}" width="25%" height="auto" style="float: left; margin-bottom: 15px"></a>
						</div>
						<div class="form-group" style="margin-top: 20px;">
							<textarea class="form-control" rows="8" id="reviewTxt" readonly style="word-break:break-all;width:100%; margin-bottom: 30px; ">${vo.review_content}</textarea>
							
				</c:forEach>
				</div>
		
		
		
		
		<hr/>
		<div class="product-page-content" id="review" >
		<div class="row reviews" style="text-align: center; margin: 80px 0;">
			<h1 class="page-header" style="margin-bottom: 50px; font-weight: bold; font-family: Noto Sans KR;">리뷰 작성</h1>
			<!-- 리뷰 작성 -->
	
		<div class="product-page-content" id="review" >
			 <div class="tab-content" style="width:100%;">
				<div class="tab-pane fade in active">
				
					<form id="reviewRegister" action="reviewRegister.do" class="reviews-form"  method="post" enctype="multipart/form-data" style="">
						<div class="form-group">
						<input name="product_number" type="hidden" value="${getProduct.product_number}"/>
							<label for="review_writer" style="float: left; margin-top: 5px; ">
								이름
								<span class="require"></span>
							</label>
							<input type="text" class="form-control" name="review_writer" value=<%=session.getAttribute("login")%> readonly style="width:14%; margin-left: 50px;">
						</div>
						 <div>
                           <input type="file" name="file"/>
                         </div>
						<div class="form-group" style="margin-top: 20px;">
							<textarea class="form-control" rows="8" id="reviewTxt" name="review_content" style="word-break:break-all;width:100%;"></textarea>
						</div>
						<div class="padding-top-20">
							<button type="submit" id="review_btn" class="btn btn-primary reviewBtn" style="float: right">작성하기</button>
							<br/>
							<br/>
							<br/>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		</div>

		
					
				</div>
			</div> 
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
	 <script type="text/javascript">
      $(function() {
         $("button#review_btn").click(function() { //QnA 새글 등록 실행
            $("form#reviewRegister").submit();
         })
      })
   </script>
   
</body>
</html>