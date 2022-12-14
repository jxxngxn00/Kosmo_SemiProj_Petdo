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
    <title>search.html</title>
    <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/mCss/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
			<div class="container">
			<div class="header-middle"><!--header-middle-->
				
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>??? ???????????????.</li>
									<li><a href="logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
									<li><a href="myPage/account.do"><i class="fa fa-user"></i></a></li>
									<li><a href="pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
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
						<div>
							<input type="text" class="inputsearch" style="appearance: inherit" placeholder="search"/>
							<a href="searchpage.do"><i class="fa-solid fa-magnifying-glass" style="margin-left: -30px;"></i></a>
						</div>
							<div id="topHeader" class="appTopArea" style="top:0px;">
							</div>
					
					</div>
			
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	

	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">			
				</div>
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center" style="text-align: center; font-family: 'Noto Sans KR', sans-serif;">????????????</h2>
				
						<div class="search_box pull-right">
							<input type="text" placeholder="??????"/>
							<a href="product/searchpage.do" style="margin-left: 140px; margin-top:9px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>

						


				</div>
								
						<br/>	
						<br/>	
						<br/>			
						</div>		
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=pjName %>/resources/images/shop/019_????????? ?????? ?????? ??????_2.jpg" alt="" />
										<p style="margin-top: 6px;">?????? ????????? ??????</p>
											<strong class="product_price">
												<span style="font-size: 16px; color: #000000;">42,000??? &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000???</span>
											</strong><br/>
											<div style="margin-left: 14px; margin-top: 5px;">
										<a href="cart.do" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i></a>
											</div>
											<div style="margin-left: 13px;">
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
											</div>	
									</div>
								</div>
							</div>
						</div>	

						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=pjName %>/resources/images/shop/019_????????? ?????? ?????? ??????_2.jpg" alt="" />
										<p style="margin-top: 6px;">?????? ????????? ??????</p>
											<strong class="product_price">
												<span style="font-size: 16px; color: #000000;">42,000??? &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000???</span>
											</strong><br/>
											<div style="margin-left: 14px; margin-top: 5px;">
										<a href="cart.do" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i></a>
											</div>
											<div style="margin-left: 13px;">
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
											</div>	
									</div>
								</div>
							</div>
						</div>	

						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<%=pjName %>/resources/images/shop/019_????????? ?????? ?????? ??????_2.jpg" alt="" />
										<p style="margin-top: 6px;">?????? ????????? ??????</p>
											<strong class="product_price">
												<span style="font-size: 16px; color: #000000;">42,000??? &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000???</span>
											</strong><br/>
											<div style="margin-left: 14px; margin-top: 5px;">
										<a href="cart.do" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i></a>
											</div>
											<div style="margin-left: 13px;">
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" style="margin-top: -42px;" width="2px" height="auto" alt=""/>
											</div>	
									</div>
								</div>
							</div>
						</div>	
					
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>

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