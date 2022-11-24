<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
			<div class="container">
				<div class="header-middle"><!--header-middle-->
					<a href="main.do"><img src="<%=pjName %>/resources/images/home/petdologo.png" width="20%" height="auto"" id="petlogo" alt="" /></a>
							<div class="col-sm-8">
								<div class="shop-menu pull-right">
									<ul class="nav navbar-nav">
										<li><a href="account.do"><i class="fa fa-user"></i></a></li>
										<li><a href="cart.do"><i class="fa fa-shopping-cart"></i></a></li>
										<li><a href="login.do"><i class="fa fa-lock"></i></a></li>
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
								
								<li class="dropdown"><a href="care-shop.do">케어<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href=care-shop1.do">목욕</a></li>
										<li><a href="closet1-shop.do">미용</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="toilet-shop.do">배변/위생<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="toilet1-shop.do">배변용품</a></li>
										<li><a href="toilet2-shop.do">위생용품</a></li>
                                    </ul>
                                </li> 
								<li><a href="toy-shop.do">장난감</a></li>
								
								<li class="dropdown"><a href="food-shop.do">식품<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" id="sub-menu-txt" class="sub-menu">
                                        <li><a href="food1-shop.do">간식</a></li>
										<li><a href="food2-shop.do">사료</a></li>
										<li><a href="food3-shop.do">영양제</a></li>
                                    </ul>
                                </li>
                                <li><a href="living-shop.do">리빙용품</a></li> 
                                <li class="dropdown"><a href="closet-shop.do">의류<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="closet1-shop.do">프리미엄</a></li>
										<li><a href="closet2-shop.do">아우터</a></li>
										<li><a href="closet3-shop.do">상의</a></li>
										<li><a href="closet4-shop.do">악세사리</a></li>
                                    </ul>
                                </li>
								<li><a href="living-shop.do" style="color: #FF9933;">NOTICE</a></li> 
								<li><a href="living-shop.do" style="color: #FF9933;" >FAQ</a></li>
								<li><a href="living-shop.do" style="color: #FF9933;" >Q&A</a></li>
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
						<h2 class="title text-center" style="text-align: center; font-family: 'Noto Sans KR', sans-serif;">상품검색</h2>
				
						<div style="margin-left: 420px;">
							<input type="text" class="inputsearch1" style="appearance: inherit"/>
							<a href="searchpage.do"><i class="fa-solid fa-magnifying-glass" style="margin-left: -30px;"></i></a>
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
										<img src="<%=pjName %>/resources/images/shop/019_브레드 베어 윈디 점퍼_2.jpg" alt="" />
										<p style="margin-top: 6px;">테디 블라썸 져지</p>
											<strong class="product_price"
												<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
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
										<img src="<%=pjName %>/resources/images/shop/019_브레드 베어 윈디 점퍼_2.jpg" alt="" />
										<p style="margin-top: 6px;">테디 블라썸 져지</p>
											<strong class="product_price"
												<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
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
										<img src="<%=pjName %>/resources/images/shop/019_브레드 베어 윈디 점퍼_2.jpg" alt="" />
										<p style="margin-top: 6px;">테디 블라썸 져지</p>
											<strong class="product_price"
												<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
											</strong>
											<strong class="sale_price">
												<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
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
								<li style="font-size: 23px; line-height: 0;"><i class="fa fa-facebook">&nbsp;&nbsp;</i>
									<i class="fa fa-twitter">&nbsp;&nbsp;</i>
									<i class="fa fa-google-plus"></i>
								</li>
							</ul>
						</div>
					</div>
	
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>About Product</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="상품을 검색해주세요." />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
							</form>
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