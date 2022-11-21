<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>PetDo - 관리자 페이지</title>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PetDo - 관리자 페이지</title>
    <% String pjName="/petdo"; %>

    <!-- Custom fonts for this template-->
    <link href="<%=pjName %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=pjName %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="<%=pjName %>/resources/css/custom.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../admin.do">
                <div class="sidebar-brand-text mx-3">PetDo Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="../admin.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Heading -->
            <div class="sidebar-heading">
                Shop Items
            </div>
            
        
        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-cog"></i>
                <span>상품 관리</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Custom Utilities:</h6>
                    <a class="collapse-item" href="itemList.do">상품 목록</a>
                    <a class="collapse-item" href="itemRegister.do">상품 등록</a>
                </div>
            </div>
        </li>
        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="itemCharts.do">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>상품별 판매통계</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="calCharts.do">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>정산관리</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="member.do">
                        <i class="fas fa-fw fa-table"></i>
                        <span>회원관리</span></a>
            </li>  
                <!-- Divider -->
                <hr class="sidebar-divider">
        
                <!-- Heading -->
                <div class="sidebar-heading">
                    Interface
                </div>
        
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                        aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>게시판관리</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">홈페이지에 게시된 각종 글 관리</h6>
                            <a class="collapse-item" href="faq.do">FAQ 관리</a>
                            <a class="collapse-item" href="review.do">리뷰 관리</a>
                            <a class="collapse-item" href="qna.do">QnA 관리</a>
                            <a class="collapse-item" href="notice.do">공지사항 관리</a>
                        </div>
                    </div>
                </li>
        
                
                
        
                <!-- Nav Item - Tables -->
                    <li class="nav-item">
                        <a class="nav-link" href="orderList.do">
                            <i class="fas fa-fw fa-table"></i>
                            <span>주문내역관리</span></a>
                </li>
                
                
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
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
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
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
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
                            </div>
                        </li>

                        
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">상품 등록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                            	<form action="insertProduct.do" method="post">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    
                                    <tbody id="itemRegisterTbl">
                                        <tr> 
                                            <td class="tblTitle" colspan="2" style="font-size: 16pt; font-weight: bold;">상품 정보</td> 
                                         
                                        </tr>
                                        <tr>
                                            <th scope="row">상품명</th>
                                            <td class="iValue"><input type="text" name="product_name"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">재고 수</th>
                                            <td class="iValue"><input type="text" name="product_stock"/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">상품 번호</th>
                                            <td class="iValue"><input type="text" name="product_number" readonly/></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">카테고리 코드</th>
                                            <td class="iValue"><input type="text" name="category_code"/></td>
                                        </tr>
                                        <tr> <td class="tblTitle" colspan="2" style="font-size: 16pt; font-weight: bold;">판매 정보</td> </tr>
                                        <tr style="margin-bottom: -5px;">
                                            <th scope="row" style="vertical-align: middle;">판매 가격</th>
                                            <td class="iValue"><input type="text" name="product_price" style="margin-top: 7px"/></td>
                                             <td style="text-align: center; " id="addImg"> 
                                                <label class="input-file-button" for="input-file">이미지 업로드</label>
												<input type="file" id="input-file" accept="image/*" style="display:none; "/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th colspan="3">상세 설명</th>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><textarea name="product_desc"></textarea></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="text-align: center;" >
                                                <input type="submit" value="등록" style="background-color : #4e73df; width:70px; height:30px; font-size: 10pt; color: white; border-style: none; border-radius: 3px;" >
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                </form>
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
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.do">Logout</a>
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
	
	<!-- font awesome CDN -->
	<script src="https://kit.fontawesome.com/3364ed6976.js" crossorigin="anonymous"></script>
	
</body>

</html>