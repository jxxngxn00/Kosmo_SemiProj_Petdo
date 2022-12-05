<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>404</title>
   <% String pjName="/petdo"; %>

<!-- Custom fonts for this template-->
<link href="<%=pjName %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<%=pjName %>/resources/css/sb-admin-2.min-copy.css" rel="stylesheet">
<style>
a:hover { text-decoration: none; }
body{background-color: #f8f9fc; display: flex; justify-content: center; align-items: center; min-height: 100vh;}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="text-center">
                        <div class="error mx-auto" data-text="404">404</div>
                        <p class="lead text-gray-800 mb-5">Page Not Found</p>
                        <p class="text-gray-500 mb-0">존재하지 않는 화면입니다.</p>
                        <a href="<%=pjName %>/logOut.do">&larr; 로그인 페이지로 이동</a>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	
	<!-- Bootstrap core JavaScript-->
	<script src="<%=pjName %>/resources/vendor/jquery/jquery.min.js"></script>
	<script src="<%=pjName %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="<%=pjName %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=pjName %>/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="<%=pjName %>/resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="<%=pjName %>/resources/js/demo/chart-area-demo.js"></script>
	<script src="<%=pjName %>/resources/js/demo/chart-pie-demo.js"></script>
	
	<!-- font awesome CDN -->
	<script src="https://kit.fontawesome.com/3364ed6976.js" crossorigin="anonymous"></script>

</body>

</html>