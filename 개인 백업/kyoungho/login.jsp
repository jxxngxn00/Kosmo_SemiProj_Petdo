<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | E-Shopper</title>
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
	<section id="form"><!--form-->
	<div class="loginbox">
			<img src="<%=pjName%>/resources/images/home/logo.png" width="30%" height="auto" id="petlogo" alt="" />
  <h2>로그인</h2>
    <form action="login.do" method="post">
    <!--작성하지 않아도 문제는 없음-->
    <fieldset>
      <legend>로그인 구역</legend>
      <label for="loginid">아이디</label>
      <input type="text" id="loginid" name="user_id" placeholder="아이디를 입력해 주세요">
      <label for="loginpw">비밀번호</label>
      <input type="password" id="loginpw" placeholder="비밀번호를 입력해 주세요" name="user_pwd">
      <ul>
        <li><a href="find.html">아이디/비밀번호찾기</a></li>
        <li><a href="joinOpen.do">회원가입</a></li>
      </ul>
      <!--데이터를 서버로 전송-->
      <input type="submit" value="로그인"/>
    </fieldset>
  </form>
</div>
	</section><!--/form-->
	
	
    <script src="<%=pjName %>/resources/js/jquery.js"></script>
	<script src="<%=pjName %>/resources/js/price-range.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.scrollUp.min.js"></script>
	<script src="<%=pjName %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName %>/resources/js/jquery.prettyPhoto.js"></script>
    <script src="<%=pjName %>/resources/js/main.js"></script>
</body>
</html>