<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : 마이페이지 - 주문정보</title>
    <% String pjName = "/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/custom.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="<%=pjName %>/resources/mCss/responsive.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
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
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
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
								<a href="product/searchpage.do" style="margin-left: 140px; margin-top:-2px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass" style="color: black;"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
			
			</header>
	<section>
		<div class="container">
			<div class="row" style="margin:0px auto;">
            <!-- side bar -->
            <div  class="col-sm-4" >
	    			<div class="contact-info">
							</div>
								<h3 style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;" >나의 정보</h3>
							<ul>
								<li style="margin-left: -38px; ">
									<a href="account.do" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">회원 정보 조회</a><br/><br/>
									<a href="accountModify.do" style="font-family: 'Noto Sans KR', sans-serif;">회원 정보 수정</a><br/><br/>
									<a href="" style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a><br/><br/><br/>
								</li>
									
							</ul>
							<div class="subtitle">
								<h3 style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 22px; font-weight: bold; font-size: 18px;">주문 정보</h3>
							</div>
								<ul>
									<li style="margin-left: -38px; ">
										<a href="mOrder.do" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">주문 내역</a><br/><br/>
										<a href="cart.html" style="font-family: 'Noto Sans KR', sans-serif; margin-bottom: 15px;">장바구니</a><br/>
									</li>	
								</ul>	
							
					</div>	
            <!-- end of side bar -->

            <!-- main content -->
				<div class="col-sm-8" style="text-align:center;">
					<h2 class="title text-center">환불 및 교환</h2>
               <form  action="mOrder.do">
               <table id="returnTbl">
                  <tr>
                     <th scope="row">환불 및 교환</th>
                     <td>
                        <input type="radio" name="state" value="refund"/>환불
                        <input type="radio" name="state" value="exchange"/>교환
                     </td>
                 </tr>
                 <tr>
                  <td colspan="2">
                     <hr/>
                  </td>
               </tr>
                  <tr>
                     <th scope="row">사유 선택</th>
                        <td><select></select></td>
                  </tr>
                  <tr>
                        <th scope="row">상세 사유</th>
                        <td><textarea style="height: 150pt;"></textarea></td>
                  </tr>
                  <tr>
                     <td colspan="2">
                        <hr/>
                     </td>
                  </tr>
                  <tr>
                     <td colspan="2">
                        <input type="submit" value="신청" />
                     </td>
                  </tr>
               </table>
            </form>
				</div>
            <!-- end of main content -->
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
		
	
		
	</footer><!--/Footer-->
	

  
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>