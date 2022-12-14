<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>PetDo : QnA</title>
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
						<!-- ????????????, ???????????????, ????????????, ??????????????????(??????????????????) ????????? -->
							<ul class="nav navbar-nav" id="headerbar">
								<li class="ment" style="margin-top: 12px;"><%=session.getAttribute("login")%>???
									???????????????.</li>
								<li><a href="#" data-toggle="modal"
									data-target="#logoutModalCenter"><i class="fa fa-sign-out"></i></a></li>
								<li><a href="../myPage/account.do?user_id=${sessionScope.login }"><i class="fa fa-user"></i></a></li>
								<li><a href="../cart/cartList.do"><i
										class="fa fa-shopping-cart"></i></a></li>
								<c:if test="${'admin' eq sessionScope.login }">
									<li><a href="../admin.do"><i class="fa fa-cogs"
											aria-hidden="true"></i></a></li>
								</c:if>
							</ul>
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
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=14">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=14">??????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=15">??????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=9">??????/??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=9">????????????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=8">????????????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=5">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" id="sub-menu-txt" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=5">??????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=6">??????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=7">?????????</a></li>
									</ul></li>
								<li class="dropdown"><a
									href="../product/getCategoryList.do?category_code=1">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a
											href="../product/getCategoryList.do?category_code=1">????????????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=2">?????????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=3">??????</a></li>
										<li><a
											href="../product/getCategoryList.do?category_code=4">????????????</a></li>
									</ul></li>
								<li><a href="notice.do" style="color: #FF9933;">NOTICE</a></li>
								<li><a href="faq.do" style="color: #FF9933;">FAQ</a></li>
								<li><a href="qna.do" style="color: #FF9933;">Q&A</a></li>
							</ul>
						</div>
						<!-- ????????? -->
						<div class="search_box pull-right">
						<form action="../product/searchItems.do" id="searchFrm">
							<input type="text" placeholder="??????" name="keyword"/> 
							<a id="searchBtn" style="margin-left: 140px;position: absolute;">
							<i class="fa fa-search" aria-hidden="true"></i></a>
						</form>
						</div>
						<div id="topHeader" class="appTopArea" style="top: 0px;"></div>
						<!-- /????????? -->
				</div>
			
			</header>
	
	<section>
		<div class="container">
			<div class="row" style="margin:0px auto;">
				<div class="col-sm-12" style="text-align:center;">
					<div class="blog-post-area-list" style="display: inline;">
						<h2 class="title text-center" style="font-size: 40px; margin-bottom: 30px;">QnA</h2><br/>
						<div style="text-align:right; width:80%; margin:10px;">
							<a href="qnaRegist.do">
								<i class="fa fa-plus-circle" aria-hidden="true">??? ?????? ??????</i>
							</a>
						</div>
						<table id="qnaTable">
							<thead>
								<tr>
									<th style="width:10%;">??????</th>
									<th style="width:15%;">?????????</th>
									<th style="width:40%;">??????</th>
									<th style="width:15%;">????????????</th>
									<th style="width:10%;">??????</th>
									<th style="width:10%;">??????</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items ="${qnaList }" var="vo">
									<tr>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_seq}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_writer}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qna_title}</a></td>
										<td><a href="qnaDetail.do?qna_seq=${vo.qna_seq}">${vo.qDate}</a></td>
										<!-- ????????? ????????? ?????? ????????? ????????? -->
										<td><a href="qnaUpdate.do?qna_seq=${vo.qna_seq}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
										
										<!--  ?????????????????? ????????? ????????? ?????? ????????? ????????? -->
										<td>
											<c:choose>
												<c:when test="${vo.qna_writer eq sessionScope.login }">
													<a href="deleteQna.do?qna_seq=${vo.qna_seq }"><i class="fa fa-trash" aria-hidden="true"></i></a>
												</c:when>
												<c:when test="${'admin' eq sessionScope.login }">
													<a href="deleteQna.do?qna_seq=${vo.qna_seq }"><i class="fa fa-trash" aria-hidden="true"></i></a>
												</c:when>
												<c:otherwise>
													<a href="#" id="notDelete"><i class="fa fa-trash" aria-hidden="true"></i></a>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
								
							</tbody>


						</table>
						
						

						<div class="pagination-area">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- logout Modal -->
	<div class="modal fade" id="logoutModalCenter" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="exampleModalLabel">Petdo - ????????????</h2>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 50px;">???????????? ???????????????????</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal" style="border-radius: 10px;">??????</button>
					<a class="btn btn-primary" href="../logOut.do" style="border-radius: 10px; margin-top: 0px">????????????</a>
				</div>
			</div>
		</div>
	</div>
	<!-- /logout Modal -->
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
	<script type="text/javascript">
	</script>
	<script type="text/javascript">
    $(function(){
		
    	$("#notDelete").click(function(){
			alert("????????? ????????? ?????? ????????? ??? ????????????.");
		});
		
    	$("#insertQna").click(function(){		//QnA ?????? ?????? ??????
    		$("form#insertQnaBtn").submit();
    	})
    	
    	//?????? ?????? jQuery
		$('#searchBtn').click(function(){
				
		//?????? input??? ?????? ?????????
		let keyword = $('#searchFrm input[name="keyword"]').val();
				
		//null???????????? ????????? ?????? ????????? ??????, ?????? ?????? ???????????? ??????
		if(keyword==null || keyword==' '){
				alert('???????????? ??????????????????.');
			} else {
				$('#searchFrm').attr('action','../product/searchItems.do?keyword='+keyword);
				$('#searchFrm').submit();	
			}//end of if
		})//end of click
    })
    </script>
</body>
</html>