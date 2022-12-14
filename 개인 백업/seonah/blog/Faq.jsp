<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : FAQ</title>
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
    <link rel="shortcut icon" href="<%=pjName %>/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head><!--/head-->
<body>
		<header id="header"><!--header-->
		
		<div class="container">
			<div class="header-middle"><!--header-middle-->
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
						<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>??? ???????????????.</li>
									<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
									<li><a href="../myPage/account.do"><i class="fa fa-user"></i></a></li>
									<li><a href="../pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
								</ul>
						
						</div>
					</div>
				</div>
		</div>
	</div><!--/header_top : ????????? / ???????????? ??? 4??? ????????? : header-->

	
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
							<ul class="nav navbar-nav collapse navbar-collapse"
								style="font-size: 0;">
								<li class="dropdown"><a href="main.do">???</a></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=14">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=14">??????</a></li>
										<li><a href="product/getCategoryList.do?category_code=15">??????</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=9">??????/??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=9">????????????</a></li>
										<li><a href="product/getCategoryList.do?category_code=8">????????????</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=5">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=5">??????</a></li>
										<li><a href="product/getCategoryList.do?category_code=6">??????</a></li>
										<li><a href="product/getCategoryList.do?category_code=7">?????????</a></li>
									</ul></li>
								<li class="dropdown"><a href="product/getCategoryList.do?category_code=1">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="product/getCategoryList.do?category_code=1">????????????</a></li>
										<li><a href="product/getCategoryList.do?category_code=2">?????????</a></li>
										<li><a href="product/getCategoryList.do?category_code=3">??????</a></li>
										<li><a href="product/getCategoryList.do?category_code=4">????????????</a></li>
									</ul></li>
								<li><a href="blog/notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="blog/faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="blog/qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="??????"/>
							<a href="product/searchpage.do" style="margin-left: 140px; margin-top:-2px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass" style="color: black;"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
			
			</header>
	
	<section>
		<div class="container">
			<div class="row" >
			<h2 class="title text-center" style="font-size: 40px">FAQ</h2>
				<div class="col-sm-12" style="float: left; margin-left: 30px">
					<div class="blog-post-area-list" id="post-meta" style="float: left;  width: 100%">
					<c:forEach items ="${faqList }" var="vo">
						<div class="single-blog-post-list" style="float: left; color: black; margin-right: 70px;">
							<h3 style="font-size: 20px; color: black;" id="faqtitle"><b><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_title}</a></b></h3>
							<div class="post-meta" style="float: center; text-align: center; margin-left: 115px;">
								<ul>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag1}</a></li>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag2}</a></li>
									<li><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_tag3}</a></li>
								</ul>
								
							</div>
							<a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}"><img src="<%=pjName %>/resources/images/${vo.faq_realname}" width="100%" height="auto"></a>
							<p style="font-size: 15px;"><a href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}">${vo.faq_writer}</a></p>
							<a id="clickbtn" class="btn btn-primary" href="../blog/faqDetail.do?faq_seq=${vo.faq_seq}" style="float: center; text-align: center;">Click</a>
						</div>
		 </c:forEach>		
						
					
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
							 <p>(???)?????? </p>
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
		
	</footer><!--/Footer-->
	

  
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>