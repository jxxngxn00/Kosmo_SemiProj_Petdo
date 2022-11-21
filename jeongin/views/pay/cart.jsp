<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String []product   = request.getParameterValues("list");
    
    
    %>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<!--/head-->
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


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
									<li><a href="../myPage/account.do"><i class="fa fa-user"></i></a></li>
									<li><a href="cart.do"><i class="fa fa-shopping-cart"></i></a></li>
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
							<a href="product/searchpage.do" style="margin-left: 140px; margin-top:9px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
			
			</header>
	
	<section id="cart_items">
	
<form>		
<table id="payTable" >
	<tr id="pay_listtitle" bgcolor= '#3D2F2E'>
		<th colspan=6 id="pay_titleText"><img src="./images/12.JPG" id='pay_olderList' ></th>
	</tr>
	<tr id="pay_totallist">
		<td colspan='3' id='pay_sum'>
			합 계 : <input type='text'  value=0 id='pay_total' /> 원
		</td>
	</tr>
	<tr id="pay_listtr">
		<td class='tab' width="100">메 뉴</td>
		<td class='tab' width="100">수 량</td>
		<td class='tab' width="100">금 액</td>
	</tr>
	</table>
	</form>	
	
	
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
				</div>

</table>				
					
				<%-- 	
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
					</tbody> --%>
				</table>
				
				</section>

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



  
  	 <script src="<%=pjName %>/resources/js/pay_jquery.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>