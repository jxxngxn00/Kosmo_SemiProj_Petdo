<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>PetDo - 관리자 페이지</title>
    <% String pjName="/petdo"; %>

<!-- Custom fonts for this template-->
<link href="<%=pjName %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<%=pjName %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
<style>
a:hover {
	text-decoration: none;
}
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-text mx-3">PetDo Admin</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Shop Items</div>


			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-cog"></i> <span>상품 관리</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="itemList.html">상품 목록</a> <a
							class="collapse-item" href="itemRegister.html">상품 등록</a>
					</div>
				</div></li>
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="itemCharts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>상품별 판매통계</span>
			</a></li>

			<li class="nav-item"><a class="nav-link" href="calCharts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>정산관리</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="member.html">
					<i class="fas fa-fw fa-table"></i> <span>회원관리</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>게시판관리</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">홈페이지에 게시된 각종 글 관리</h6>
						<a class="collapse-item" href="FAQ.html">FAQ 관리</a> <a
							class="collapse-item" href="review.html">리뷰 관리</a> <a
							class="collapse-item" href="QnA.html">QnA 관리</a> <a
							class="collapse-item" href="notice.html">공지사항 관리</a>
					</div>
				</div></li>




			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="orderList.html">
					<i class="fas fa-fw fa-table"></i> <span>주문내역관리</span>
			</a></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>


		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="orderList.html">
								<div class="card border-left-primary shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-primary text-uppercase mb-1">
													주문내역</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-calendar fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="itemCharts.html">
								<div class="card border-left-success shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-success text-uppercase mb-1">
													판매현황</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>




						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<a href="QnA.html">
								<div class="card border-left-warning shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-warning text-uppercase mb-1">
													QnA</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">QnA
													게시판 바로가기</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-comments fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>


						<div class="col-xl-3 col-md-6 mb-4">
							<a href="calCharts.html">
								<div class="card border-left-success shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-success text-uppercase mb-1">
													정산</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>

					<!-- Content Row -->

					<div class="row">

						<!-- Area Chart -->

					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-lg-6 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<a href="orderList.html">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">배송현황</h6>
									</div>
									<div class="card-body">
										<h4 class="small font-weight-bold">
											결제 완료<span class="float-right">20%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 20%" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
										<h4 class="small font-weight-bold">
											배송중<span class="float-right">40%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 40%" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
										<h4 class="small font-weight-bold">
											배송 완료<span class="float-right">60%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar" role="progressbar"
												style="width: 60%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a>
							</div>


						</div>
						<div class="col-lg-6 mb-4">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<a href="itemList.html">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">상품</h6>
									</div>
									<div class="card-body">
										<h4 class="small font-weight-bold">
											진열 중<span class="float-right">20%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 20%" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
										<h4 class="small font-weight-bold">
											품절<span class="float-right">40%</span>
										</h4>
										<div class="progress mb-4">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 40%" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a>
							</div>


						</div>

					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; PetDo 2021</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

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

</body>

</html>
