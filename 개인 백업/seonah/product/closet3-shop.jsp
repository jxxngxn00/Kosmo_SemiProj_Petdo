<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>care1-shop.html</title>
     <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/mCss/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">
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
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>님 환영합니다.</li>
									<li><a href="logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
									<li><a href="myPage/account.do"><i class="fa fa-user"></i></a></li>
									<li><a href="pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
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
				
							<a href="main.do"><img src="<%=pjName %>/resources/images/home/petdologo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
						
							
					
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
								<li><a href="main.do" class="active">홈</a></li>
								<li class="dropdown"><a href="care-shop.do">케어<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="care1-shop.do">목욕</a></li>
										<li><a href="care2-shop.do">미용</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="toilet-shop.html">배변/위생<i class="fa fa-angle-down"></i></a>
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
                                <li class="dropdown"><a href="#">의류<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="closet-shop.do">프리미엄</a></li>
										<li><a href="closet1-shop.do">아우터</a></li>
										<li><a href="closet2-shop.do">상의</a></li>
										<li><a href="closet3-shop.do">악세사리</a></li>
                                    </ul>
                                </li>
							</ul>
						</div>
							<div class="search_box pull-right">
							<input type="text" placeholder="검색"/>
							<a href="product/searchpage.do" style="margin-left: 140px; margin-top:9px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
							<div id="topHeader" class="appTopArea" style="top:0px;"></div>
					</div>
				
				</header>
				</div>
			</div>
		</div><!--/header-bottom-->
</div>	

	
	<section>
		
	
		<img src="<%=pjName %>/resources/images/home/subbanner_1.png" id='subbaner' width="100%" height="auto" alt="" />		
	
		<div class="ec-base-tab typeMenu">
			<ul class="menuCategory menu clearfix">
		<hr/>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="care-shop.do" style="letter-spacing: 3px;" class="button">케어                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="toilet-shop.do" style="letter-spacing: 3px;" class="button">배변/위생                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="toy-shop.do" style="letter-spacing: 3px;" class="button">장난감                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="food-shop.do" style="letter-spacing: 3px;" class="button">식품                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="living-shop.do" style="letter-spacing: 3px;" class="button">홈/리빙               
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="closet-shop.do" style="font-weight: bold; letter-spacing: 3px; font-size: 16px;" class="button">의류             
		</li>
		
		<hr/>
			</ul></div>
			<hr height='30px'/>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
		

							<article class="cont-select">
								<button class="btn-select">신상품</button>
								<ul class="list-member">
									<li><button type="button">상품명/button></li>
									<li><button type="button">낮은가격</button></li>
									<li><button type="button">높은가격</button></li>
								</ul>
							</article>
						<br/>
						<br/>
					
							<div class="col-sm-4" id="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						<div class="col-sm-4" id="productimg">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg"alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
							<div class="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
							<div class="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
							<div class="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
							<div class="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/><img src="images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						
							<div class="col-sm-4" >
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										
									</div>
								</div>	
							</div>
						
							<div class="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						
							<div class="col-sm-4" id="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						
							<div class="col-sm-4" id="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						
						
							<div class="col-sm-4" id="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
						
							<div class="col-sm-4" id="col-sm-4">
								<div class="productinfo text-center">
									<div class="product-image-wrapper">
										<div class="single-products">
										<img src="<%=pjName %>/resources/images/home/20_테디 블라썸 져지_2.jpg" alt=""/>
										<p>테디 블라썸 져지</p>
												<strong class="product_price">
													<span style="font-size: 16px; color: #000000;">42,000원 &nbsp;</span>
												</strong>
												<strong class="sale_price">
													<span style="font-size: 16px; color: #afafaf;text-decoration-line: line-through;">38,000원</span>
												</strong><br/>
												<img src="<%=pjName %>/resources/images/home/BEST.JPG" id="new" width="2px" height="auto" alt=""/>
												<img src="<%=pjName %>/resources/images/home/NEW.JPG" id="new" width="2px" height="auto" alt=""/>
										</div>
									</div>
								</div>	
							</div>
				
					
						</ul>
					</div><!--features_items-->
				</div>
			</div>
			<ul class="pagination">
				<li class="active"><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">&raquo;</a></li>
			</ul>
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
		
	</footer><!--/Footer-->
		
		

  
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>
