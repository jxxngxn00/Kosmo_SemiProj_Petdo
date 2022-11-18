<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : QnA</title>
    <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="../main.do"><img src="<%=pjName %>/resources/images/home/logo.png" alt="" style="height: 100px"/></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="../myPage/account.do"><i class="fa fa-user"></i> </a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> </a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> </a></li>
								<li><a href="login.html"><i class="fa fa-lock"></i> </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
							   <li><a href="main.do" class="active"><b>홈</b></a></li>
							   <li class="dropdown"><a href="#">케어<i class="fa fa-angle-down"></i></a>
										   <ul role="menu" class="sub-menu">
											   <li><a href="shop.html">목욕</a></li>
									 <li><a href="product-details.html">미용</a></li> 
										   </ul>
								</li> 
							   <li class="dropdown"><a href="#">배변/위생<i class="fa fa-angle-down"></i></a>
										   <ul role="menu" class="sub-menu">
											   <li><a href="blog.html">배변용품</a></li>
									 <li><a href="blog-single.html">위생용품</a></li>
										   </ul>
									   </li> 
							   <li><a href="404.html">장난감</a></li>
							   
							   <li class="dropdown"><a href="#">식품<i class="fa fa-angle-down"></i></a>
										   <ul role="menu" class="sub-menu">
											   <li><a href="blog.html">간식</a></li>
									 <li><a href="blog-single.html">사료</a></li>
									 <li><a href="blog-single.html">영양제</a></li>
										   </ul>
									   </li>
									   <li><a href="#">리빙용품</a></li> 
									   <li class="dropdown"><a href="#">의류<i class="fa fa-angle-down"></i></a>
										   <ul role="menu" class="sub-menu">
											   <li><a href="blog.html">프리미엄</a></li>
									 <li><a href="blog-single.html">아우터</a></li>
									 <li><a href="blog-single.html">상의</a></li>
									 <li><a href="blog-single.html">악세사리</a></li>
										   </ul>
									   </li>
									   <li><a href="faq.do" class="active"><b>FAQ</b></a></li>
									   <li><a href="qna.do" class="active"><b>QnA</b></a></li>
									   <li><a href="notice.do" class="active"><b>공지사항</b></a></li>
							</ul>
						 </div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section>
		<div class="container">
			<div class="row" style="margin:0px auto;">
				<div class="col-sm-12" style="text-align:center;">
					<div class="blog-post-area-list" style="display: inline;">
						<h2 class="title text-center">QnA</h2>
						<table id="qnaTable">
							<thead>
								<tr>
									<th style="width:10%;">번호</th>
									<th style="width:15%;">작성자</th>
									<th style="width:55%;">제목</th>
									<th style="width:20%;">작성일자</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a href="qnaDetail.do">1</a></td>
									<td><a href="qnaDetail.do">운영자</a></td>
									<td><a href="qnaDetail.do">test</a></td>
									<td><a href="qnaDetail.do">22-11-15</a></td>
								</tr>
							</tbody>


						</table>
						
						

						<div class="pagination-area">
							<ul class="pagination">
								<li><a href="" class="active">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href=""><i class="fa fa-angle-double-right"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-widget">
			<div class="container">
				<div class="row" style="padding:3%;">     
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
					   <div class="contact-info">
						  <h2 class="title text-center">Contact Info</h2>
						  <address>
							 <p>(주)펫두 </p>
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
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>