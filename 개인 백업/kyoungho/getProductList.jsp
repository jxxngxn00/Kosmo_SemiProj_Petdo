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
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>님 환영합니다.</li>
									<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
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
	</div><!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->

	
	<div class="header_middle"></div>
	<div class="header-bottom"><!--header-bottom-->

		<div class="container">
			<div class="row">
				<div id="sm-9" class="col-sm-9">
					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					
					<div class="mainmenu pull-left ">
						<ul class="nav navbar-nav collapse navbar-collapse" style="font-size: 0;">
							
							<li class="dropdown"><a href="../product/care-shop.do">케어<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/care1-shop.do">목욕</a></li>
									<li><a href="../product/care2-shop.do">미용</a></li> 
								</ul>
							</li> 
							<li class="dropdown"><a href="../product/toilet-shop.do">배변/위생<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/toilet1-shop.do">배변용품</a></li>
									<li><a href="../product/toilet2-shop.do">위생용품</a></li>
								</ul>
							</li> 
							<li><a href="../product/toy-shop.do">장난감</a></li>
							
							<li class="dropdown"><a href="../product/food-shop.do">식품<i class="fa fa-angle-down"></i></a>
								<ul role="menu" id="sub-menu-txt" class="sub-menu">
									<li><a href="../product/food1-shop.do">간식</a></li>
									<li><a href="../product/food2-shop.do">사료</a></li>
									<li><a href="../product/food3-shop.do">영양제</a></li>
								</ul>
							</li>
							<li><a href="../product/living-shop.do">리빙용품</a></li> 
							<li class="dropdown"><a href="../product/closet-shop.do">의류<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/closet1-shop.do">프리미엄</a></li>
									<li><a href="../product/closet2-shop.do">아우터</a></li>
									<li><a href="../product/closet3-shop.do">상의</a></li>
									<li><a href="../product/closet4-shop.do">악세사리</a></li>
								</ul>
							</li>
							<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li> 
							<li><a href="../blog/faq.do" style="color: #FF9933;" >FAQ</a></li>
							<li><a href="../blog/qna.do" style="color: #FF9933;" >Q&A</a></li>
						</ul>
					</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="검색"/>
							<a href="../product/searchpage.do" style="margin-left: 140px; margin-top:9px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</div>
	</div>
	</div>
	<!--/header-bottom-->
			
			</header>
	</div>


	<section>


		<img src="<%=pjName %>/resources/images/home/subbanner_1.png"
			id='subbaner' width="100%" height="auto" alt="" />

		<div class="ec-base-tab typeMenu">
			<ul class="menuCategory menu clearfix">
				<hr />
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="care-shop.do" class="button">케어 </li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="toilet-shop.do" class="button">배변/위생 </li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="toy-shop.do" class="button">장난감 </li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="food-shop.do" class="button">식품 </li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="living-shop.do" class="button">홈/리빙 </li>
				<li style="display: inline-block;"
					class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a
					href="closet-shop.do" class="button">의류 </li>

				<hr />
			</ul>
		</div>
		<hr height='30px' />

		<div class="col-sm-9 padding-right" style="margin: auto;">

			<div class="features_items" style="margin: auto; text-align: center;">
				<!--features_items-->


				<!--<article class="cont-select">
							 <div><button class="btn-select row" style="float:right; width:100px;">신상품</button></div> 
								<ul class="list-member">
									<li><button type="button">상품명</button></li>
									<li><button type="button">낮은가격</button></li>
									<li><button type="button">높은가격</button></li>
								</ul>
							</article>-->
				<br /> <br />
				<div style="margin: auto;">
					<c:forEach items="${productList}" var="vo">
						<div id="row" style="float: left;"
							style="border-style:none; display:flex; flex-wrap:wrap; ">
							<form action="#" id="listForm" method="post"
								style="margin-bottom: 10px; margin-left: 10px; class =form-inline; border-style: none;">
								<div style="margin-left: 120px">
									<input name="product_number" type="hidden" value="${vo.product_number}" />

									<table style="margin-left: 10px;">
										<tr>
											<td colspan="2" align="center"><a
												href="product-details.do?product_number=${vo.product_number}"><img
													src='resources/images/home/girl1.png' width='300'
													height='200'></a></td>
										</tr>
										<tr>

											<td align="center" valign="middle"><input
												name="product_name" type="text" value="${vo.product_name }"
												readonly style="border-style: none; width: 100%" /></td>
										</tr>
										<tr>

											<td align="center"><input name="product_price"
												type="text" value="${vo.product_price }" readonly
												style="border-style: none;" /></td>
										</tr>
									</table>
								</div>
							</form>
						</div>
					</c:forEach>
				</div>

			</div>
		</div>






	</section>

	<footer id="footer">
		<!--Footer-->
		<div style="">
			<input type="hidden" name="pageNum" value="${pagingVO.cri.pageNum }">
			<input type="hidden" name="amount" value="${pagingVO.cri.amount }">
			<ul class="pagination" id="pageInfo">

				<c:if test="${pagingVO.prev}">
					<li><a
						href="getProductList=${pagingVO.startPage-1}&amount=${pagingVO.amount}">Previous</a>
					</li>
				</c:if>

				<c:forEach var="num" begin="${pagingVO.startPage}"
					end="${pagingVO.endPage}">
					<li class="pageInfo_btn"><a
						href="getProductList.do?num=${num}">${num}</a></li>
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
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>POLICY</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">이용약관</a></li>
								<li><a href="#">개인정보처리방침</a></li>
								<li><a href="#">이용안내</a></li>
								<li><a href="#">반품,환불규정</a></li>
								<li><a href="#">제휴입점문의</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>C/S CENTER</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">MON-FRI | 09:30 - 17:00</a></li>
								<li><a href="#">LUNCH | 12:30 - 13:30</a></li>
								<li><a href="#">SAT,SUN,HOLIDAY OFF</a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#">KAKAOTALK | petdo</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget snsservice">
							<h2>SNS SERVICE</h2>
							<ul class="nav nav-pills nav-stacked">
								<li style="font-size: 23px; line-height: 0;"><i
									class="fa fa-facebook">&nbsp;&nbsp;</i> <i
									class="fa fa-twitter">&nbsp;&nbsp;</i> <i
									class="fa fa-google-plus"></i></li>
							</ul>
						</div>
					</div>

					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Product</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="상품을 검색해주세요." />
								<button type="submit" class="btn btn-default">
									<i class="fa fa-arrow-circle-o-right"></i>
								</button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					Shared by <i class="fa fa-love"></i><a
						href="https://bootstrapthemes.co">BootstrapThemes</a></span>
					</p>
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
</body>
</html>