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
    <title>Product Details | E-Shopper</title>
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
    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
		<header id="header"><!--header-->
		
		<div class="container">
			<div class="header-middle"><!--header-middle-->
				<a href="../main.do"><img src="<%=pjName %>/resources/images/home/petdologo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav">
									<li><a href="account.html"><i class="fa fa-user"></i></a></li>
									<li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
									<li><a href="#"><i class="fa fa-heart"></i></a></li>
									<li><a href="login.html"><i class="fa fa-lock"></i></a></li>
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
									<li><a href="care1-shop.do">목욕</a></li>
									<li><a href="care2-shop.do">미용</a></li> 
								</ul>
							</li> 
							<li classwn"><a href="toilet-shop.do">배변/위생<i class="fa fa-angle-down"></i></a>
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
		</div>
	</div><!--/header-bottom-->
</div>   
</header>

	</header><!--/header-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-9 padding-center">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="<%=pjName %>/resources/images/home/019_브레드 베어 윈디 점퍼_2.jpg" width="100%" alt="" />
								
							</div>
		

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<%=pjName %>/resources/images/home/new.jpg" class="newarrival" alt="" />
								<h2 style="text-align: left;"  >브레드 베어 윈디 점퍼</h2>
									<div style="text-align:left; font-size: 23px; padding-right: 7px;">23,000원</div>
								<hr/>
								
							<div style="text-align: left;">	 
								<span style="font-weight: bold;">배송방법</span>
								<span>&nbsp&nbsp택배</span>
							</div>
							
							<div style="text-align: left; margin-top: -20px">	
								<span style="font-weight: bold;">배송비</span>
								<span>&nbsp&nbsp3,000원&nbsp(도서산간지역 5,000원)</span></br>
							</div></br>	
							
							<table class="producttbl">
							   <tr id="producttitle">
							   </tr>
							   <p style="text-align: left; font-weight: bold;">수량 :</p>
							   <tr class="productsCount">
							         <select name="product1Count" id="product1Count" class='productCount'>
							         	<option value="" disabled selected hidden>- [필수] 수량을 선택해주세요 -</option>
							            <option class='opt' value='1'>1</option>
							            <option class='opt' value='2'>2</option>
							            <option class='opt' value='3'>3</option>
							            <option class='opt' value='4'>4</option>
							            <option class='opt' value='5'>5</option>
							         </select>
							      </tr><br/><br/>
							     
							    <p style="text-align: left; font-weight: bold;">옵션 :</p>
							   <tr class="productsOption">
							         <select name="productsOption" id="productsOption" class='productsOption'>
							         	<option value="" disabled selected hidden>- [필수] 옵션을 선택해주세요 -</option>
							            <option class='opt' value='S'>S</option>
							            <option class='opt' value='M'>M</option>
							            <option class='opt' value='L'>L</option>
							         </select>
							      </tr>   
							</table>
							
								</div><br/>
								<br/>
								<br/>
								<br/>
								
								<div id="rightdiv">
								
<form>							
<table id="listTable">
   <tr id="listtitle">
   </tr>
 
   <tr id="listtr">
      <td width="120">상 품</td>
      <td width="20"></td>
      <td width="40">수 량</td>
      <td width="20"></td>
      <td width="100">금 액</td>
      <td width="80">취 소</td>
   </tr>
     <tr id="totallist">
      <td colspan='6' id='sum'>
         합 계 : <input type='text'  value=0 id='total' /> 원 
         <input type='button' value='장바구니'  id='btn' onclick="location.href='<%=pjName %>/pay/cart.do'"/>
      </td>
   </tr>
   
</table>
</form>	
</div>
										
										<div class="oreder" style="margin-left: 20px; margin-top: 50px;">
										<div style="margin-left:450px; font-size: 16px; line-height: 1.2; font-weight: bold;
  											color: rgba(33,33,33,0.7); font-size: 18px;">총 상품금액  :  0</div>
											<a href="cart.do"><button class="addtocart" type="button" class="btn btn-fefault cart" style="width: 47%; margin-left: 30px;">
											ADD TO CART
											</button></a>
												<a href="checkout.do"><button class="orderbuy" type="button" class="btn btn-fefault cart"  style="width: 47%;">
											BUY NOW
											</button></a>
										</div>
								
								
							</div><!--/product-information-->
						</div>
						
					</div><!--/product-details-->
					
					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12" style="float: center; margin-right: 50px; margin-bottom: 15px">
							<ul class="productCategory clearfix"><hr/>
								<li style="display:inline-block;" data-toggle="tab" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="#details" class="button">상세정보                
								</li>
								<li style="display:inline-block;" data-toggle="tab" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="#companyprofile" class="button">리뷰()                
								</li>
								<li style="display:inline-block;" data-toggle="tab" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="#reviews" class="button">Q&A()                
								</li>
						</div>
						
						
						<div class="tab-content">
							<img src="https://cdn.imweb.me/upload/S2019082912b56704ac4ce/3c8a7c8871833.png">
							<img src="https://gi.esmplus.com/boosters1/BRAND/boosters/laughing_charlie_web/hairband/hairband-top.jpg">
									
								</div>
							</div>
							
							
							
						</div>
					</div><!--/category-tab-->
				
					
		<div class="underline">
		<div class="container">
			<div class="row">
				<i class="fa fa-love"></i>
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
      
   </div>
				</div>
   </footer><!--/Footer-->

	

    <script src="<%=pjName %>/resources/js/jquery_1.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>