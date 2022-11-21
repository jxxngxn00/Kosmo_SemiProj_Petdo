<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Cart | E-Shopper</title>
    <% String pjName="/petdo"; %>
<link href="<%=pjName%>/resources/pay-css/bootstrap.min.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/font-awesome.min.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/prettyPhoto.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/price-range.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/pay-css/responsive.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/bootstrap.min.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/font-awesome.min.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/prettyPhoto.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/price-range.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/animate.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/main.css" rel="stylesheet">
<link href="<%=pjName%>/resources/main-css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="<%=pjName%>/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName%>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
			<header id="header"><!--header-->
         <div class="container">
            <div class="header-middle"><!--header-middle-->
               <div class="container pull-right">
                     <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                           <ul class="nav navbar-nav" >
                              <li><a href="mypage.html"><i class="fa fa-user"></i></a></li>
                              <li><a href="wishlist.html"><i class="fa fa-heart"></i></a></li>
                              <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
                              <li><a href="login.html"><i class="fa fa-lock"></i></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
         </div>
      </div><!--/header_top : 로그인 / 장바구니 등 4개 아이콘 : header-->
   
      
      <div class="header_middle"></div>
      <div class="header-bottom"><!--header-bottom-->

         <div class="container ">
            <div class="row">
               <div id="sm-9" class="col-sm-9">
            
                     <a href="main.html"><img src="<%=pjName%>/resources/images/cart/logo.png" width="12%" height="auto" id="petlogo" alt="" /></a>
                  
                  <div class="navbar-header pull-right">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                     </button>
                  </div>
                  
                  <div class="mainmenu pull-left">
                     <ul class="nav navbar-nav collapse navbar-collapse">
                        <li><a href="main.html" class="active">홈</a></li>
                        <li class="dropdown"><a href="care-shop.html">케어<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="care1-shop.html">목욕</a></li>
                              <li><a href="care2-shop.html">미용</a></li> 
                                    </ul>
                                </li> 
                        <li class="dropdown"><a href="toilet-shop.html">배변/위생<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="toilet1-shop.html">배변용품</a></li>
                              <li><a href="toilet2-shop">위생용품</a></li>
                                    </ul>
                                </li> 
                        <li><a href="toy-shop.html">장난감</a></li>
                        
                        <li class="dropdown"><a href="food-shop.html">식품<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" id="sub-menu-txt" class="sub-menu">
                                        <li><a href="food1-shop.html">간식</a></li>
                              <li><a href="food2-shop.html">사료</a></li>
                              <li><a href="food3-shop.html">영양제</a></li>
                                    </ul>
                                </li>
                                <li><a href="living-shop.html">리빙용품</a></li> 
                                <li class="dropdown"><a href="closet-shop.html">의류<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="closet1-shop.html">프리미엄</a></li>
                              <li><a href="closet2-shop.html">아우터</a></li>
                              <li><a href="closet3-shop.html">상의</a></li>
                              <li><a href="closet4-shop.html">악세사리</a></li>
                                    </ul>
                                </li>
                                	<li><a href="notice.html" style="color: #FF9933;">NOTICE</a></li> 
								<li><a href="FAQ.html" style="color: #FF9933;" >FAQ</a></li>
								<li><a href="QNA.html" style="color: #FF9933;" >Q&A</a></li>
                     </ul>
                      <div class="search_box pull-right">
                        <input type="text" placeholder="검색"/>
                     </div>
                     <div id="topHeader" class="appTopArea" style="top:0px;"></div>
                  </div>
                    
               </div>
            
            
            </div>
         </div>
      </div><!--/header-bottom-->
</div>   
</header>
	
	<section id="cart_items">
	
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">상품이름</td>
							<td class="description"></td>
							<td class="price">가격</td>
							<td class="quantity">수량</td>
							<td class="total">총가격</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="cart_product"><a href=""><img
									src="<%=pjName%>/resources/images/cart/one.png" alt=""></a></td>
							<td class="cart_description">
								<h4>
									<a href="">상품이름</a>
								</h4>
								<p>Web ID: 상품ID</p>
							</td>
							<td class="cart_price">
								<p>써야할가격</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_down" href=""> - </a> <input
										class="cart_quantity_input" type="text" name="quantity"
										value="1" autocomplete="off" size="2"> <a
										class="cart_quantity_up" href=""> + </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">가격</p>
							</td>
							<td class="cart_delete"><a class="cart_quantity_delete"
								href="">x</a></td>
						</tr>

						<tr>
							<td class="cart_product"><a href=""><img
									src="<%=pjName%>/resources/images/cart/two.png" alt=""></a></td>
							<td class="cart_description">
								<h4>
									<a href="">상품이름</a>
								</h4>
								<p>Web ID: 상품ID</p>
							</td>
							<td class="cart_price">
								<p>가격</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_down" href=""> - </a> <input
										class="cart_quantity_input" type="text" name="quantity"
										value="1" autocomplete="off" size="2"> <a
										class="cart_quantity_up" href=""> + </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">$59</p>
							</td>
							<td class="cart_delete"><a class="cart_quantity_delete"
								href="">x</a></td>
						</tr>
						<tr>
							<td class="cart_product"><a href=""><img
									src="<%=pjName%>/resources/images/cart/three.png" alt=""></a></td>
							<td class="cart_description">
								<h4>
									<a href="">상품이름</a>
								</h4>
								<p>Web ID: 상품ID</p>
							</td>
							<td class="cart_price">
								<p>가격</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_down" href=""> - </a> <input
										class="cart_quantity_input" type="text" name="quantity"
										value="1" autocomplete="off" size="2"> <a
										class="cart_quantity_up" href=""> + </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">가격</p>
							</td>

						<td class="cart_delete"><a class="cart_quantity_delete"
								href="">x</a></td>
						</tr>
					</tbody>
				</table>

				<div class="col-sm-6">
					<div class="total_area">
						<table class="type09">
							<thead>
								<tr>
									<th scope="cols" colspan='2'>결제할 상품</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">상품 금액</th>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<th scope="row">배송비</th>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<th scope="row">결제 금액</th>
									<td>내용이 들어갑니다.</td>
								</tr>
							</tbody>
						</table>
						<a class="btn btn-default check_out" id= "pay" href="">결제하기</a>
					</div>
				</div>
			</div>
		</div>
		
			<div class="underline">
		<div class="container">
			<div class="row">
				<i class="fa fa-love"></i>
			</div>
		</div>
	</div>

	
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
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>