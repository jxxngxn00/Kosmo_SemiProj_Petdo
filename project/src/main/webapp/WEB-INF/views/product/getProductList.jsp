<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javaclass.domain.ProductVO"%>
<%@page import="com.javaclass.domain.PagingVO"%>
<%@page import="com.javaclass.service.ProductServiceImpl"%>




<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>상품</title>
<% String pjName="/petdo"; %>
<%ProductVO vo=  new ProductVO(); %>

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


<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$("#pageInfo a").on("click", function(e){
	 
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/product/getProductList.do");
    moveForm.submit();
    
});
	</script>


</head>
<!--/head-->

<body>
	<header id="header"><!--header-->
		
		<div class="container">
			<div class="header-middle"><!--header-middle-->
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>님 환영합니다.</li>
									<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></a></li>
									<li><a href="../myPage/account.do?user_id=${sessionScope.login  }"><i class="fa fa-user"></i></a></li>
									<li><a href="../pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
									<c:if test="${'admin' eq sessionScope.login }">
										<li><a href="../admin.do"><i class="fa fa-cogs" aria-hidden="true"></i></a></li>
									</c:if>
								</ul>
						
						</div>
					</div>
				</div>
		</div>
	<!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->

	
	<div class="header_middle"></div>
	<div class="header-bottom"><!--header-bottom-->

		<div class="container">
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
									href="../main.do">홈</a></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=14">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=14">목욕</a></li>
										<li><a href="getCategoryList.do?category_code=15">미용</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=9">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=9">배변용품</a></li>
										<li><a href="getCategoryList.do?category_code=8">위생용품</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=5">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=5">간식</a></li>
										<li><a href="getCategoryList.do?category_code=6">사료</a></li>
										<li><a href="getCategoryList.do?category_code=7">영양제</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="getCategoryList.do?category_code=1">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="getCategoryList.do?category_code=1">프리미엄</a></li>
										<li><a href="getCategoryList.do?category_code=2">아우터</a></li>
										<li><a href="getCategoryList.do?category_code=3">상의</a></li>
										<li><a href="getCategoryList.do?category_code=4">악세사리</a></li>
									</ul></li>

								<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="../blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="../blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<!-- 검색창 -->
						<div class="search_box pull-right">
						<form action="searchItems.do" id="searchFrm">
							<input type="text" placeholder="검색" name="keyword"/> 
							<a id="searchBtn" style="margin-left: 140px; margin-top: 9px; position: absolute;">
							<i class="fa fa-search" aria-hidden="true"></i></a>
						</form>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
						<!-- /검색창 -->
					</div>
				</div>
			</div>
			</div>
		</div><!--/header-bottom-->
	<!--/header-bottom-->
			
			</header>

	<section>


		<img src="<%=pjName %>/resources/images/home/subbanner_1.png"
			id='subbaner' width="100%" height="auto" alt="" />

		<div class="ec-base-tab typeMenu">
			<hr />
			<ul class="menuCategory menu clearfix" style="font-size: 16px; margin-top:10px; font-weight:bold; font-family: Noto Sans KR; letter-spacing: 6px;">
				<li style="display: inline-block;  font-family: Noto Sans KR; font-weight: bold;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=14" class="button">케어</a></li>
				<li style="display: inline-block;  font-family: Noto Sans KR; font-weight: bold;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=9" class="button">배변/위생</a></li>
				<li style="display: inline-block;  font-family: Noto Sans KR; font-weight: bold;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=5" class="button">식품</a></li>
				<li style="display: inline-block;  font-family: Noto Sans KR; font-weight: bold;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="getCategoryList.do?category_code=1" class="button">의류</a></li>

			</ul>
			
		</div>
		<hr height='30px' />

		<div class="col-sm-9 padding-right" style="margin: auto;">

			<div class="features_items" style="margin: auto; text-align: center;">
				<!--features_items-->

				<br /> <br />
				<div style="margin: auto;">
					<c:forEach items="${productList}" var="vo">
						<c:if test="${vo.product_stock > 0}">
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







	<script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName %>/resources/js/main.js"></script>
	<script type="text/javascript">
	//상품 검색 jQuery
	$('#searchBtn').click(function(){
			
	//검색 input의 값을 저장함
	let keyword = $('#searchFrm input[name="keyword"]').val();
			
	//null값이거나 빈칸일 경우 알림창 띄움, 값이 있을 경우에만 검색
	if(keyword==null || keyword==' '){
			alert('검색어를 입력해주세요.');
		} else {
			$('#searchFrm').attr('action','searchItems.do?keyword='+keyword);
			$('#searchFrm').submit();	
		}//end of if
	})//end of click
	</script>
</body>
</html>