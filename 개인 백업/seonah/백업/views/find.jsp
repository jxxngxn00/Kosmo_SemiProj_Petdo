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
<link href="<%=pjName %>/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/prettyPhoto.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/price-range.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/animate.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/main.css" rel="stylesheet">
<link href="<%=pjName %>/resources/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="<%=pjName %>/resources/js/html5shiv.js"></script>
    <script src="<%=pjName %>/resources/js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="<%=pjName %>/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=pjName %>/resources/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->


<body>
	<header id="header">
		<!--header-->

		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="<%=pjName %>/resources/images/home/logo.png" alt=""
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
								<li><a href="index.html" class="active">???</a></li>
								<li class="dropdown"><a href="#">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.html">??????</a></li>
										<li><a href="product-details.html">??????</a></li>
									</ul></li>
								<li class="dropdown"><a href="#">??????/??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">????????????</a></li>
										<li><a href="blog-single.html">????????????</a></li>
									</ul></li>
								<li><a href="404.html">?????????</a></li>

								<li class="dropdown"><a href="#">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">??????</a></li>
										<li><a href="blog-single.html">??????</a></li>
										<li><a href="blog-single.html">?????????</a></li>
									</ul></li>
								<li><a href="#">????????????</a></li>
								<li class="dropdown"><a href="#">??????<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="blog.html">????????????</a></li>
										<li><a href="blog-single.html">?????????</a></li>
										<li><a href="blog-single.html">??????</a></li>
										<li><a href="blog-single.html">????????????</a></li>
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

	<section id="sectionForm">
		<!--form-->
		<div class="container_find_pw">
	<h2>???????????? ??????</h2>
	<p class="find_pw_txt0">
		<strong>????????? ???????????? ?????? ?????????????????? ??????????????? ?????? ??? ????????????.</strong>
	</p>

	<div class="find_pw1">
		<form action="#" method="POST">
			<p class="find_pw1_txt1">
				<strong>????????? ??????????????? ??????</strong>
			</p>
			<p class="find_pw_txt2">
				?????? ?????? ??? ????????? ????????? ????????? ??????????????????.
			</p>
			<div class="pw1_find_user_info">
				<p>
					<label><input id="pw1_user_id" type="text" placeholder="?????????"></label>
				</p>
				<p>
					<label><input id="pw1_user_name" type="text" placeholder="???) ?????????"></label>
				</p>
				<p>
					<label><input id="pw1_user_email" type="email" placeholder="???) user@example.com"></label>
				</p>
			</div>
			<button type="button" class="btn_find_pw">???????????? ??????</button>
		</form>
	</div>

	<div class="find_pw2">
		<form action="#" method="POST">
			<p class="find_pw2_txt1">
				<strong>???????????? ???????????? ??????</strong>
			</p>
			<p class="find_pw2_txt2">
				????????? ?????? ??? ??????????????? ??????????????????.
			</p>
			<div class="find_pw2_id_ok">
				<label><input id="pw2_user_id" type="text" placeholder="?????????" required></label>
				<button type="button" class="btn_find_id_ok">??????</button>
			</div>
			<div class="auth_selection">
				<a href="#">????????? ????????????</a>
			</div>
			<button type="button" class="btn_find_pw">???????????? ??????</button>
		</form>
	</div>
	
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