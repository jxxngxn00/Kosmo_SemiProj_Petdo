<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.domain.PagingVO"%>
<%@page import="com.javaclass.service.ProductServiceImpl"%>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var listForm = $("#listForm");
		$(".pagination_button a").on("click", function(e) {
			e.preventDefault();
			listForm.find("input[name='pageNum']").val($(this).attr("href"));
			listForm.submit();
		});
	});
</script>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<%
	String pjName = "/petdo";
%>
<%
	ProductVO vo = new ProductVO();
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
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
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
					height="auto" id="petlogo" alt="" /></a>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav" id="headerbar">
							<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>???
								???????????????.</li>
							<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></a></li>
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
								<li class="dropdown"><a
									href="../main.do">???</a></li>
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
						<div class="search_box pull-right">
							<input type="text" placeholder="??????" /> <a
								href="../searchpage.do"
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
	<!--/header-bottom-->


	<section>


		<img src="<%=pjName%>/resources/images/home/subbanner_1.png"
			id='subbaner' width="100%" height="auto" alt="" />

		<div class="ec-base-tab typeMenu">
			<hr />
			<ul class="menuCategory menu clearfix" style="font-size: 16px; margin-top:10px; font-weight:bold; font-family: Noto Sans KR; letter-spacing: 6px;">
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=14" class="button">??????</a></li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=9" class="button">??????/??????</a></li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=5" class="button">??????</a></li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=1" class="button">??????</a></li>

			</ul>
			
		</div>
		<hr style="height: 30px" />

		<div class="col-sm-9 padding-right" style="margin: auto;">

			<div class="features_items" style="margin: auto; text-align: center;">
				<!--features_items-->


				<!--<article class="cont-select">
							 <div><button class="btn-select row" style="float:right; width:100px;">?????????</button></div> 
								<ul class="list-member">
									<li><button type="button">?????????</button></li>
									<li><button type="button">????????????</button></li>
									<li><button type="button">????????????</button></li>
								</ul>
							</article>-->
				<br /> <br />
				<div style="margin: auto;">
						<c:forEach items="${categoryList}" var="vo">
							????<c:if test="${vo.product_stock > 0}">
						<div id="row" style="float: left;"
							style="border-style:none; display:flex; flex-wrap:wrap;">
							<form action="product-detail?product-number=${vo.product_number}" id="listForm"
								method="post"
								style="margin-bottom: 10px; margin-left: 10px; class =form-inline; border-style: none;">
								<div style="margin-left: 120px">
									<input name="product_number" type="hidden"
										value="${vo.product_number}" />
									<input name="product_stock" type="hidden"
										value="${vo.product_stock}" />	
									<table style="margin-left: 10px;">
										<tr>
											<td colspan="2" align="center">
												<a href="product-details.do?product_number=${vo.product_number}"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300'></a>	
											</td>
										</tr>
										<tr>
											<td align="center" valign="middle"><input
												name="product_name" type="text" value="${vo.product_name}"
												readonly style="border-style: none; width: 100%; text-align: center; margin-bottom: 1px; margin-top: 3px; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
										<tr>

											<td align="center"><input name="product_price"
												type="text" value="${vo.product_price}" readonly
												style="border-style: none; text-align: center; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
									</table>
								</div>
							</form>
						</div>
						</c:if>
							<c:if test="${vo.product_stock <= 0}">
							<div id="row" style="float: left;"
							style="border-style:none; display:flex; flex-wrap:wrap;">
							<form action="product-detail?product-number=${vo.product_number}" id="listForm1"
								method="post"
								style="margin-bottom: 10px; margin-left: 10px; class =form-inline; border-style: none;">
								<div style="margin-left: 120px">
									<input name="product_number" type="hidden"
										value="${vo.product_number}" />
									<table style="margin-left: 10px;">
										<tr>
											<td colspan="2" align="center">
												<a href="#"><img src='<%=pjName%>/resources/images/shop/${vo.stored_file_name}' width='300' height='300' id='soldOutproduct'></a>	
											</td>
										</tr>
										<tr>
											<td align="center" valign="middle"><input
												name="product_name" type="text" value="${vo.product_name}"
												readonly style="border-style: none; width: 100%; text-align: center; margin-bottom: 1px; margin-top: 3px; font-family: 'Noto Sans KR', 'sans-serif'"  /></td>
										</tr>
										<tr>
											<td align="center">
												<span style="color: red; font-weight: bold;">sold out</span>
												</td>
										</tr>
										
									</table>
								</div>
							</form>
						</div>
						</c:if>
					</c:forEach>
				</div>

			</div>
		</div>






	</section>

	<footer id="footer">
		<!--Footer-->
		<div style="">
			<ul class="pagination">
				<c:if test="${pagingVO.prev}">
					<li><a
						href="getProductList=${pagingVO.startPage-1}&amount=${pagingVO.amount}">Previous</a>
					</li>
				</c:if>

				<c:forEach var="num" begin="${pagingVO.startPage }"
					end="${pagingVO.endPage }">
					<li><a
						href="getProductList.do?${num}&amount=${pagingVO.amount}">${num}</a>
					</li>
				</c:forEach>

				<c:if test="${pagingVO.next }">
					<li><a
						href="getProductList=${pagingVO.endPage +1}&amount=${pagingVO.amount}">Next</a>
					</li>
				</c:if>
			</ul>
		</div>

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

	</footer>
	<!--/Footer-->





	<script src="<%=pjName %>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.js"></script>
	<script src="<%=pjName%>/resources/js/price-range.js"></script>
	<script src="<%=pjName%>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>