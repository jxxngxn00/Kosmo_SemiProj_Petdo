<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Join | E-Shopper</title>
    <% String pjName="/petdo"; %>
    <link href="<%=pjName %>/resources/blog-css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/price-range.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/blog-css/animate.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/Logincss/main.css" rel="stylesheet">
	<link href="<%=pjName %>/resources/blog-css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="<%=pjName %>/resources/js/html5shiv.js"></script>
    <script src="<%=pjName %>/resources/js/respond.min.js"></script>
    <![endif]-->   
    <link rel="shortcut icon" href="<%=pjName %>/resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header">
		<!--header-->

		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt=""
								style="height: 100px" /></a>
						</div>

					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-user"></i> </a></li>
								<li><a href=""><i class="fa fa-star"></i> </a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i>
								</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
								</a></li>
								<li><a href="login.html" class="active"><i
										class="fa fa-lock"></i> </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.html" class="active">홈</a></li>
								<li class="dropdown"><a href="#">케어<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">목욕</a></li>
										<li><a href="product-details.html">미용</a></li>
									</ul></li>
								<li class="dropdown"><a href="#">배변/위생<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">배변용품</a></li>
										<li><a href="blog-single.html">위생용품</a></li>
									</ul></li>
								<li><a href="404.html">장난감</a></li>

								<li class="dropdown"><a href="#">식품<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">간식</a></li>
										<li><a href="blog-single.html">사료</a></li>
										<li><a href="blog-single.html">영양제</a></li>
									</ul></li>
								<li><a href="#">리빙용품</a></li>
								<li class="dropdown"><a href="#">의류<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">프리미엄</a></li>
										<li><a href="blog-single.html">아우터</a></li>
										<li><a href="blog-single.html">상의</a></li>
										<li><a href="blog-single.html">악세사리</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->

	<section id="form">
		<!--form-->
		<div class="joinbox" style="margin-left:350px">
				<form action="userInsert.do" method="post" name="twin" >
					<table style="width:800;">
						<tr height="40">
							<td align="center"><b>[회원가입]</b></td>
						</tr>
					</table>
					<table width="700" height="600" cellpadding="0"
						style="border-collapse: collapse; font-size: 9pt;">
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">회원 ID</td>
							<td><input type="text" name="user_id" />&nbsp;<a
								href="javascript:id_check()">[ID 중복 검사]</a></td>
						</tr>
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">비밀번호</td>
							<td><input type="password" name="user_pwd" id="pw"
								onchange="isSame()" /></td>
						</tr>
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">비밀번호 확인</td>
							<td><input type="password" name="user_pwdCheck"
								id="pwCheck" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
						</tr>
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">이 름</td>
							<td><input type="text" name="user_name" /></td>
						</tr>
					
						
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">휴대전화</td>
							<td><input type="tel" name="user_phone" /></td>
						</tr>
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="15%">이메일</td>
							<td><input type="email" name="user_email" /></td>
						</tr>
						<tr height="7">
							<td colspan="3"><hr /></td>
						</tr>
						
						<tr class="register" height="30">
							<td width="5%" align="center">*</td>
							<td width="20%">주소</td>
							<td><input type="text" name="user_address1" /></td>
						</tr>
						<!-- 
						<tr>
							<td width="5%" align="center">*</td>
							<td width="15%">주 소</td>
							<td><input type="text" size="10" name="wPostCode"
								id="postcode" placeholder="우편번호" readonly="readonly"
								onclick="DaumPostcode()"> <input type="button"
								onclick="DaumPostcode()" value="우편번호 찾기"><br>
							<br /> <input type="text" size="30" name="wRoadAddress"                             
								id="roadAddress" placeholder="도로명주소" readonly="readonly"
								onclick="DaumPostcode()"> <input type="text" size="30"
								name="wJibunAddress" id="jibunAddress" placeholder="지번주소"
								readonly="readonly" onclick="DaumPostcode()"> <br />
							<span id="guide" style="color: #999; font-size: 10px;"></span> <br />
							<br />
							<input type="text" name="wRestAddress" placeholder="나머지 주소"
								size="70" /></td>
						</tr>
						 -->
					</table>
					<br />
					<table>
						<tr height="40">
							<td colspan="3" style="text-align:center;">
								<input width="120" type="submit" value="가입"/>
								<button style="width:120"><a href="loginOpen.do">취소</a></button>
							</td>
						</tr>
					</table>
				</form>
			</div>
	</section>
	<!--/form-->


	<script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
	<script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>