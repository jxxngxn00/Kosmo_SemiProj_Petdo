<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>food-shop.html</title>
     <% String pjName="/petdo"; %>
     <link href="<%=pjName %>/resources/mCss/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/mCss/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li><%= session.getAttribute("login") %>님 환영합니다.</li>
									<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
									<li><a href="account.do"><i class="fa fa-user"></i></a></li>
									<li><a href="../pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
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
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
			
			</header>
	 
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    		
					<br/>	
					<br/>
					<br/>   			
					<h2 class="title text-center" style="margin-bottom: 80px; font-size: 45px; font-family: 'Noto Sans KR', sans-serif;">Modify</h2>    			    				    				
				
				</div>			 		
			</div>    	
    			
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<hr/>
						
							<div class="form-group col-md-12">
								<p id="customerid" style="float: left; margin-top: 6px; font-family: 'Noto Sans KR', sans-serif;">아이디</p>
								<input type="text" name="subject" class="form-control" required="required"  style="width: 40%; margin-left: 115px;">
							</div>
							<div class="form-group col-md-12">
								<p id="customerEmail" style="float: left; margin-top: 6px; font-family: 'Noto Sans KR', sans-serif;">이름</p>
				                <input type="text" name="subject" class="form-control" required="required"  style="width: 40%; margin-left: 115px;">
				            </div>
				            <div class="form-group col-md-12">
								<p id="customerEmail" style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px" >E-Mail</p>
				                <input type="text" name="subject" class="form-control" required="required" style="width: 83%; margin-left: 115px;">
				            </div>
							<div class="form-group col-md-12">
								<p id="customerEmail" style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">성별</p>
				                <input type="text" name="subject" class="form-control" required="required"  style="width: 20%; margin-left: 115px;">
				            </div>
							<div class="form-group col-md-12">
								<p id="customerEmail" style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">일반전화</p>
				                <input type="text" name="subject" class="form-control" required="required"  style="width: 40%; margin-left: 115px;">
				            </div>
							<div class="form-group col-md-12">
								<p id="customerEmail" style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">휴대전화</p>
				                <input type="text" name="subject" class="form-control" required="required"  style="width: 40%; margin-left: 115px;">
				            </div>
							<div class="form-group col-md-12" style="display: f;">
								<p id="customerEmail" style="float: left; font-family: 'Noto Sans KR', sans-serif; margin-top: 6px;">주소</p>
								<div>
				                <input type="text" name="subject" class="form-control" required="required" style="width: 20%; margin-left: 89px; display: inline;" >
								<button type="submit" id="adrbtn" style="margin-left: 5px; font-family: 'Noto Sans KR', sans-serif; display: inline;">우편번호</button>
								<input type="text" name="subject" class="form-control" required="required" style="width: 83%; margin-left: 115px; margin-top: 5px;">
								</div>
								<hr/>
				            </div>
							                  
				            <div class="form-group col-md-12">
								<input type="submit" name="submit" class="btn btn-delete pull-right" value="회원탈퇴" style="margin-right: 12px; font-family: 'Noto Sans KR', sans-serif">
				                <input type="submit" name="submit" class="btn btn-modify pull-right" value="수정" style="margin-left: 12px; margin-bottom: 60px; font-family: 'Noto Sans KR', sans-serif">
				            </div>
					
				        </form>
					
	    			</div>
				</div>
	    	
	    		<div  id="col-sm-4" >
	    			<div class="contact-info">
	    				<p class="title text-center" id="fonttitle"  style="text-transform: capitalize; font-family: 'Noto Sans KR', sans-serif;">My Account</p>
							</div>
								<h3 style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;" >나의 정보</h3>
							<ul>
								<li style="margin-left: -38px; ">
									<a href="account.html" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">회원 정보 조회</a><br/><br/>
									<a href="" style="font-family: 'Noto Sans KR', sans-serif;">회원 정보 수정</a><br/><br/>
									<a href="" style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a><br/><br/><br/>
								</li>
									
							</ul>
							<div class="subtitle">
								<h3 style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">주문 정보</h3>
							</div>
								<ul>
									<li style="margin-left: -38px; ">
										<a href="order.html" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">주문 내역</a><br/><br/>
										<a href="cart.html" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">장바구니</a><br/>
									</li>	
								</ul>	
							
					</div>		
	    			
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	
	
		
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
					 <i class="fa fa-love"></i><a href="https://bootstrapthemes.co"></a></span></p>
				</div>
			</div>
		</div>



<script src="<%=pjName %>/resources/js/jquery.js"></script>
<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
<script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>