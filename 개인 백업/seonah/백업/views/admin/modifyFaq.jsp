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
<%
	String pjName = "/petdo";
%>

<!-- Custom fonts for this template-->
<link
	href="<%=pjName%>/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=pjName%>/resources/https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="<%=pjName%>/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<link href="<%=pjName%>/resources/css\customRegistFAQ.css"
	rel="stylesheet">
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

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


				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">



					<!-- Page Heading -->

					<h1 class="h3 mb-2 text-gray-800" style="text-align: center;">
						<b>FAQ 수정</b>
					</h1>


					<!-- 입력 폼 -->
					<form action="updateFaq.do?faq_seq=${faq.faq_seq}" method="post"
						id="modifyFaq" enctype="multipart/form-data">
						<div class="card shadow mb-4"
							style="width: 75%; margin: auto; margin-top: 50pt;">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">FAQ 게시판 글 관리</h6>
							</div>
							<div class="card-body" style="margin-left: 15px;">
								<div class="inputTitle">
									<input type="text" style="width: 70%;" placeholder="메인 제목"
										name="faq_title" value="${faq.faq_title}" />
								</div>
								<div class="inputTitle">
									<input type="text" style="width: 70%;" placeholder="서브 제목"
										name="faq_writer" value="${faq.faq_writer}" />
								</div>
							</div>	
								<hr />
								<div>
									<label>변경 전 이미지</label><br /> <img
										src="<%=pjName %>/resources/images/${faq.faq_realname}"
										width='30%'>
									<hr />
									<label> 이미지 업로드 </label> <input type="file" name="file" />
								</div>
								<br/>
                            <div style="font-weight: bold;">
                                상세 이미지 업로드
                               <input type="file" name="file1" style="margin-left: 20px;">
                            </div>
								<div>
									<div class="inputHashTag">
										<span> <input type="text" name="faq_tag1"
											value="${faq.faq_tag1}" />
										</span> <span> <input type="text" name="faq_tag2"
											value="${faq.faq_tag2}" />
										</span> <span> <input type="text" name="faq_tag3"
											value="${faq.faq_tag3}" />
										</span>
									</div>
								</div>
						</div>	
					</form>
					<div class="recommItems">
						<table class="recommItemsTbl">
							<tr>
								<td></td>
							</tr>
						</table>
					</div>

					<div id="registBtn">
						<button id="updateBtn" class="btn btn-primary btn-icon-split">
							<span class="icon text-white-50"> <i class="fas fa-flag"></i>
							</span> <span class="text">등록</span>
						</button>
						<a href="FAQ.do" class="btn btn-secondary btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-arrow-right"></i>
						</span> <span class="text">취소</span>
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
					<a class="btn btn-primary" href="login.do">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="<%=pjName%>/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=pjName%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<%=pjName%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=pjName%>/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="<%=pjName%>/resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="<%=pjName%>/resources/js/demo/chart-area-demo.js"></script>
	<script src="<%=pjName%>/resources/js/demo/chart-pie-demo.js"></script>

	<!-- font awesome CDN -->
	<script src="https://kit.fontawesome.com/3364ed6976.js"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(function() {
			$("#updateBtn").click(function() { //QnA 새글 등록 실행
				alert('ok')
				$("form#updateFaq").submit();
			})

		})
	</script>


</body>

</html>