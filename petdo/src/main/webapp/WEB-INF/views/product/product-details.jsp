<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.dao.ProductDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>${getProduct.product_name}</title>
<%
	String pjName = "/petdo";
%>
<link href="<%=pjName%>/resources/mCss/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/prettyPhoto.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/price-range.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/mCss/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="../images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
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
							<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>???
								???????????????.</li>
							<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
							<li><a
								href="../myPage/account.do?user_id=${sessionScope.login  }"><i
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
		<!--/header_top : ????????? / ???????????? ??? 4??? ????????? : header-->


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
								<li class="dropdown"><a href="../main.do">???</a></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=14">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=14">??????</a></li>
										<li><a href="getCategoryList.do?category_code=15">??????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=9">??????/??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=9">????????????</a></li>
										<li><a href="getCategoryList.do?category_code=8">????????????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=5">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=5">??????</a></li>
										<li><a href="getCategoryList.do?category_code=6">??????</a></li>
										<li><a href="getCategoryList.do?category_code=7">?????????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=1">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=1">????????????</a></li>
										<li><a href="getCategoryList.do?category_code=2">?????????</a></li>
										<li><a href="getCategoryList.do?category_code=3">??????</a></li>
										<li><a href="getCategoryList.do?category_code=4">????????????</a></li>
									</ul></li>
								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="../blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<!-- ????????? -->
							<div class="search_box pull-right">
								<form action="searchItems.do" id="searchFrm">
									<input type="text" placeholder="??????" name="keyword"/> 
									<a id="searchBtn" style="margin-left: 140px; margin-top: 9px; position: absolute;">
									<i class="fa fa-search" aria-hidden="true"></i></a>
								</form>
							</div>
							<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
						<!-- /????????? -->
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
					id="product_number" style="font-weight: bold">
				<input type="hidden" value="${getProduct.product_stock}" id="product1_stock"/>	
			</div>
			<div class="row" style="float: left; text-align: center; width: 35%;">
				<img alt="productPhoto"
					src="<%=pjName%>/resources/images/shop/${getProduct.stored_file_name}"
					width="150%" style="float: center;" name="stored_file_name">
			</div>

			<div class="row productInfo" style="width: 40%; float: right;">
				<div class="form-group" style="text-align: left;">
					<h3 class="page-header">
						<span>${getProduct.product_name}</span><br>
					</h3>
				</div>
				<div class="form-group" style="text-align: left;">
					<label>?????? : </label><span>&nbsp; <fmt:formatNumber 
							 name="product_price" value="${getProduct.product_price}"
							type="number" /></span><span>&nbsp;${getProduct.product_price}???</span>
					<input type="hidden" value="${getProduct.product_price}" id="price">
				</div>
				<div class="form-group" style="text-align: left;">
					<label>????????? : </label><span>&nbsp;2500???</span>
					<p>?????????????????? ????????? 5000??? / 3?????? ?????? ????????? ????????????</p>
				</div>
				<div class="form-horizontal" style="text-align: left;">
					<label>???????????? : </label> <select name="product_count"
						class="form-control" id="select_count">

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
					<input type="hidden"  id="count" name="product_count">
					
					<div class="row" style="margin-top: 20px; margin-left: 50px;">
						<div class="selected_option"
							style="text-align: right; margin-top: 230px;"></div>
						<div class="orderbtn" style="text-align: center;">
							<a href="../cart/cartList.do">
								<button id="submit" class="btn btn-fault cart" style="width: 200px">????????????</button></a>
						</div>
					</div>
				</form>
			</div>
		</div>


		<hr />
		<div class="container">
			<div class="row nav" style="margin-left: 380px; font-size: 16px; font-weight:bold; margin-top: -5px; font-family: Noto Sans KR; letter-spacing: 6px;">
				<nav id="middle_nav">
				<ul class="nav nav-tabs nav-justified" style="list-style-type: none; float: left;">
					<a href="#product-info"><li id="about" style="list-style-type: none; float: left;">????????????</li></a>
					<a href="#product-review"><li id="review" style="list-style-type: none; float: left; margin-left: 260px">??????</li></a>
				</ul>
				</nav>
			</div>

			<hr style="width: 100%;"/>

			<img src="<%=pjName%>/resources/images/banner55.jpg" width="100%"
				height="auto" style="margin-top: 20px; margin-bottom: 30px;" alt="" />



			<div id="product-info" class="row about_product"
				style="text-align: center;">
				<img
					src='<%=pjName%>/resources/images/product-details/${getProduct.stored_main_file_name}'
					width=60%; height=auto;>
			</div>


			<div class="view-reviews" style="text-align: center; margin: 80px 0;">
				<h1 class="page-header"
					style="margin-bottom: 50px; font-weight: bold">??????</h1>
				<!-- ?????? ?????? -->
				<div style="margin:auto;">
					<c:forEach items="${orderReview}" var="vo">
							<div class="form-group">
								<input name="product_number" type="hidden"
									value="${vo.product_number}" /> <label for="username"
									style="float: left; margin-top: 5px;"> ?????? <span
									class="require"></span>
								</label> <input type="text" class="form-control" id="username"
									value="${vo.review_writer}" readonly
									style="width: 14%; margin-left: 50px;">
							</div>
							<div style=" height:300px; vertical-align:center;">
								<div style="float:left; width:25%; margin-bottom: 30px; padding-left: 50px;">
									<img
										src="<%=pjName %>/resources/images/review/${vo.review_realname}"
										style="float: left; height:214px; width:auto;">
								</div>
								<div class="form-group" style="margin-left:10px; float:left; width:70%;">
									<textarea class="form-control" rows="10" id="reviewTxt" readonly
										style="word-break: break-all; width: 100%; height:100%;">${vo.review_content}</textarea>
								</div>
							</div>
					</c:forEach>
				</div>
			</div>




			<hr />
			<div class="product-page-content" id="review">
				<div class="row reviews" style="text-align: center; margin: 80px 0;">
					<h1 class="page-header"
						style="margin-bottom: 50px; font-weight: bold">?????? ??????</h1>
					<!-- ?????? ?????? -->

					<div class="product-page-content" id="review">
						<div class="tab-content" style="width: 100%;">
							<div class="tab-pane fade in active">

								<form id="reviewRegister" action="reviewRegister.do"
									class="reviews-form" method="post"
									enctype="multipart/form-data" style="">
									<div class="form-group">
										<input name="product_number" type="hidden"
											value="${getProduct.product_number}" /> <label
											for="review_writer" style="float: left; margin-top: 5px;">
											?????? <span class="require"></span>
										</label> <input type="text" class="form-control" name="review_writer"
											value=<%=session.getAttribute("login")%> readonly
											style="width: 14%; margin-left: 50px;">
									</div>
									<div>
										<input type="file" name="file" />
									</div>
									<div class="form-group" style="margin-top: 20px;">
										<textarea class="form-control" rows="8" id="reviewTxt"
											name="review_content"
											style="word-break: break-all; width: 100%;"></textarea>
									</div>
									<div class="padding-top-20">
										<button type="submit" id="review_btn"
											class="btn btn-primary reviewBtn" style="float: right">????????????</button>
										<br /> <br /> <br />
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
								<p>(???)??????</p>
								<p>?????? ????????? ???????????????2??? 101 3??? 302???</p>
								<p>??????????????? ????????? ?????????</p>
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



	<script src="<%=pjName%>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName%>/resources/js/main.js"></script>
	<script type="text/javascript">
      $(function() {
      	//?????? ?????? jQuery
  		$('#searchBtn').click(function(){
  				
  		//?????? input??? ?????? ?????????
  		let keyword = $('#searchFrm input[name="keyword"]').val();
  				
  		//null???????????? ????????? ?????? ????????? ??????, ?????? ?????? ???????????? ??????
  		if(keyword==null || keyword==' '){
  				alert('???????????? ??????????????????.');
  			} else {
  				$('#searchFrm').attr('action','searchItems.do?keyword='+keyword);
  				$('#searchFrm').submit();	
  			}//end of if
  		})//end of click
      })
   </script>

</body>
</html>