<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.javaclass.domain.ProductVO" %>  
<%@page import="com.javaclass.domain.PagingVO" %>  
<%@page import="com.javaclass.service.ProductServiceImpl" %>  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
		$(document).ready(function() {
			var listForm = $("#listForm");
			
			$(".pagination_button a").on("click", function(e) {
				e.preventDefault();
				
				listForm.find("input[name='pageNum']").val($(this).attr("href"));
				listForm.submit();
			});
		});
	</script>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>care1-shop.html</title>
     <% String pjName="/petdo"; %>
     <%ProductVO vo=  new ProductVO(); %>
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
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
		<div class="container">
			<div class="header-middle"><!--header-middle-->
				<a href="../main.do"><img src="<%=pjName%>/resources/images/home/logo.png" width="12%" height="auto"" id="petlogo" alt="" /></a>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav" id="headerbar">
									<li class="ment" style="margin-top: 12px;"><%= session.getAttribute("login") %>??? ???????????????.</li>
									<li><a href="../logOut.do"><i class="fa fa-sign-out"></i></i></a></li>
									<li><a href="../myPage/account.do?user_id=${sessionScope.login  }"><i class="fa fa-user"></i></a></li>
									<li><a href="../pay/cart.do"><i class="fa fa-shopping-cart"></i></a></li>
									<c:if test="${'admin' eq sessionScope.login }">
										<li><a href="../admin.do"><i class="fa fa-cogs" aria-hidden="true"></i></a></li>
									</c:if>
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
						<ul class="nav navbar-nav collapse navbar-collapse" style="font-size: 0;">
							
							<li class="dropdown"><a href="../product/care-shop.do">??????<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/care1-shop.do">??????</a></li>
									<li><a href="../product/care2-shop.do">??????</a></li> 
								</ul>
							</li> 
							<li class="dropdown"><a href="../product/toilet-shop.do">??????/??????<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/toilet1-shop.do">????????????</a></li>
									<li><a href="../product/toilet2-shop.do">????????????</a></li>
								</ul>
							</li> 
							<li><a href="../product/toy-shop.do">?????????</a></li>
							
							<li class="dropdown"><a href="../product/food-shop.do">??????<i class="fa fa-angle-down"></i></a>
								<ul role="menu" id="sub-menu-txt" class="sub-menu">
									<li><a href="../product/food1-shop.do">??????</a></li>
									<li><a href="../product/food2-shop.do">??????</a></li>
									<li><a href="../product/food3-shop.do">?????????</a></li>
								</ul>
							</li>
							<li><a href="../product/living-shop.do">????????????</a></li> 
							<li class="dropdown"><a href="../product/closet-shop.do">??????<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="../product/closet1-shop.do">????????????</a></li>
									<li><a href="../product/closet2-shop.do">?????????</a></li>
									<li><a href="../product/closet3-shop.do">??????</a></li>
									<li><a href="../product/closet4-shop.do">????????????</a></li>
								</ul>
							</li>
							<li><a href="../blog/notice.do" style="color: #FF9933;">NOTICE</a></li> 
							<li><a href="../blog/faq.do" style="color: #FF9933;" >FAQ</a></li>
							<li><a href="../blog/qna.do" style="color: #FF9933;" >Q&A</a></li>
						</ul>
					</div>
						<div class="search_box pull-right">
							<input type="text" placeholder="??????"/>
							<a href="../product/searchpage.do" style="margin-left: 140px; margin-top:9px; position: absolute;"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></a>
						</div>
						<div id="topHeader" class="appTopArea" style="top:0px;"></div>
				</div>
				</div>
			</div>
		</div><!--/header-bottom-->
			
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
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="care-shop.do" class="button">??????                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="toilet-shop.do" class="button">??????/??????                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="toy-shop.do" class="button">?????????                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="food-shop.do" class="button">??????                
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="living-shop.do" class="button">???/??????               
		</li>
		<li style="display:inline-block;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"><a href="closet-shop.do" class="button">??????             
		</li>
		
		<hr/>
			</ul></div>
			<hr height='30px'/>
				
				<div class="col-sm-9 padding-right"  style="margin:auto;">
							
					<div class="features_items" style="margin:auto; text-align:center;"><!--features_items-->
		

							<!--<article class="cont-select">
							 <div><button class="btn-select row" style="float:right; width:100px;">?????????</button></div> 
								<ul class="list-member">
									<li><button type="button">?????????</button></li>
									<li><button type="button">????????????</button></li>
									<li><button type="button">????????????</button></li>
								</ul>
							</article>-->	
						<br/>
						<br/>
						<div style="margin:auto;">
		<c:forEach items="${categoryList}" var="vo">
		 <div id="row" style="float:left;" style="border-style:none; display:flex; flex-wrap:wrap; ">				
			<form action="product-detail?product-number=${vo.product_number}" id="listForm" method="post" style="  margin-bottom:10px;  margin-left:10px; class=form-inline;  border-style: none;" >	
			<div style="margin-left:120px">
			<input name="product_number" type="hidden" value="${vo.product_number}"/>	
			
			<table style="margin-left:10px; ">
			<tr>
					<td colspan="2" align="center">
					<a href="product-details.do?product_number=${vo.product_number}"><img src='/resources/upload/${vo.stored_file_name}'width='300' height='200'></a>	
					</td>
				</tr>			
			<tr>	
				
				<td align="center" valign="middle" ><input name="product_name" type="text"
						value="${vo.product_name }" readonly style="border-style:none;  width:100%" /></td>
			</tr>			
			<tr>			
				
				<td align="center"><input name="product_price" type="text"
						value="${vo.product_price }" readonly style="border-style:none;" /></td>		
			</tr>
			</table>
			</div>
		</form>
		</div>
			</c:forEach>
		</div>
			
	</div>
	</div>

		
			

		
	
	</section>
	
	<footer id="footer"><!--Footer-->
	<div style="">
<ul class="pagination">
    <c:if test="${pagingVO.prev}">
      <li ><a href="getProductList=${pagingVO.startPage-1}&amount=${pagingVO.amount}">Previous</a>
      </li>
    </c:if>

    <c:forEach var="num" begin="${pagingVO.startPage }" end="${pagingVO.endPage }">
      <li >
      	<a href="/product/getProductList.do?${num}&amount=${pagingVO.amount}">${num}</a>
      </li>
    </c:forEach>

    <c:if test="${pagingVO.next }">
      <li >
        <a href="getProductList=${pagingVO.endPage +1}&amount=${pagingVO.amount}">Next</a>
      </li>
    </c:if>
    </ul>	
</div>
	
	
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>POLICY</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">????????????</a></li>
								<li><a href="#">????????????????????????</a></li>
								<li><a href="#">????????????</a></li>
								<li><a href="#">??????,????????????</a></li>
								<li><a href="#">??????????????????</a></li>
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
								<input type="text" placeholder="????????? ??????????????????." />
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