<%@page import="com.PhongLaptop.model.bean.GioHangBean"%>
<%@page import="com.PhongLaptop.model.bo.GioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.PhongLaptop.model.bean.KhachHangBean"%>
<%@page import="com.PhongLaptop.model.bo.KhachHangBo"%>
<%@page import="com.PhongLaptop.model.bean.LoaiBean"%>
<%@page import="com.PhongLaptop.model.bean.LaptopBean"%>
<%@page import="com.PhongLaptop.model.bo.LoaiBo"%>
<%@page import="com.PhongLaptop.model.bo.LaptopBo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Laptop Store</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style1.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet"href="cart1.css">
    <script src="https://kit.fontawesome.com/332a215f17.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <!-- Template Login -->
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
  <!-- End Template Login -->

  <!-- =======================================================
  * Template Name: Green - v4.6.0
  * Template URL: https://bootstrapmade.com/green-free-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

  <!-- =======================================================
  * Template Name: Green - v4.6.0
  * Template URL: https://bootstrapmade.com/green-free-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	LaptopBo sbo = new LaptopBo();
	LoaiBo lbo = new LoaiBo();
	ArrayList<LaptopBean> ds = sbo.getLaptop();

	//Xoá
	String msxoa = request.getParameter("delms");
	//Cập nhật
	String upsl = request.getParameter("upsl");
	String upms = request.getParameter("upms");

	ArrayList<LaptopBean> dslaptop = (ArrayList<LaptopBean>) request.getAttribute("dslaptop");
	ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
	
	String key = (String) request.getAttribute("timkiemlaptop");

	%>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com">pp07@laptop.com</a>
        <i class="bi bi-phone-fill phone-icon"></i> +1 123 456 789
      </div>
      <div class="social-links d-none d-md-block">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="HomeLaptop">BOOK STORE</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
				<ul>
					<li><a class="nav-link scrollto active" href="HomeLaptop">Home</a></li>
					<li><a class="nav-link scrollto" href="GioHangCart">Cart</a></li>
					<li><a class="nav-link scrollto " href="payment">Payment</a></li>
					<li><a class="nav-link scrollto" href="History">History</a></li>
					<li class="dropdown"><a href="#"><span>Categories</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<c:forEach items="${LoaiBean}" var="c">
								<li><a href="HomeLaptop?maloai=${c.maloai}">${c.tenloai}</a></li>
							</c:forEach>

						</ul></li>
					<li><a class="nav-link scrollto" href="AdminDangNhap">Admin</a></li>
           <ul>
          	<ul>
				<div class="w3-container">
					
					<c:if test="${empty tttaikhoan}">
          				<li><a onclick="document.getElementById('id01').style.display='block'" class="getstarted scrollto">Sign-in</a></li>  						 		
          			</c:if>
          			<c:if test="${not empty tttaikhoan}">
          				
          				<ul>
          				 
          				<li class="nav-item">Welcome, <c:out value="${sessionScope.tttaikhoan.getHoten() }"></c:out></li>
          			
						<li class="nav-item"><a  
								class="getstarted scrollto"
								href="KiemTra?logout=true"><img style="width: 40px; height: 30px;" src="https://cdn.iconscout.com/icon/premium/png-256-thumb/logout-3028583-2521684.png"></a></li>		
          				
          				
          				
          				</ul>
          				
          			</c:if>
				<c:if test="${not empty ttmatkhau }">
                    <script type="text/javascript">
                        $(window).on('load', function() {
                            $('#myModal').modal('show');
                        });
                    </script>
                </c:if>
				
  					
  
</div>
				</ul>
          
          
        	</ul>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

<div class="container-fuild">

<!---Hero Section-->
    <section id="hero">
    <div class="hero-container">
            <div class="hero-logo">
                <h1 class="font-weight-bold">Cart Products</h1>
            </div>
        </div>
        <%
        if(request.getAttribute("thanhcong")!=null)
        {
        %>
        
        <h1 style="text-align: center;"> Bạn đã mua hàng thành công!!</h1>
        <%} %>
    </section>

		<section class="mt-5">
			<div class="container">
				<div class="cart">
					<div class="table-responsive">
						<table class="table">
							<%
							if (session.getAttribute("giohang") != null) {
								GioHangBo ghbo = new GioHangBo();

								ghbo = (GioHangBo) session.getAttribute("giohang");

								int size = ghbo.ds.size();
							%>
							<thead class="thead-dark">
								<tr>
									<th scope="col" class="text-white">Product</th>
									<th scope="col" class="text-white">Price</th>
									<th scope="col" class="text-white">Quantity</th>								
									<th scope="col" class="text-white">Total</th>
								</tr>
							</thead>

							<%
							for (int i = 0; i < size; i++) {
								GioHangBean g = ghbo.ds.get(i);
							%>

							<tbody>
								<tr>
									<td width="450">
										<div class="main">

											<div style="height: 350px; weight: 60px;" class="d-flex">

												<img src="<%=g.getAnh()%>" >
											</div>
											<div class="des">
													
												<p class="d-inline"><%=g.getTenlaptop()%>
												<p class="d-inline"><%=g.getCPU()%>
												<p class="d-inline"><%=g.getRAM()%>
												
											</div>
										</div>
									</td>
									<td>
										<h6><%=g.getGia()%></h6>
									</td>
									<td>
										<div class="counter">
											<form action="GioHangCartUpdate">
                                              <input type="hidden" class="width-50"
													value="<%=g.getMaLapTop()%>" name="upms" />
												<input type="number" class="width-50"
													value="<%=g.getSoluong()%>" name="upsl" min="1" />
													<input style="font-family: san-serif; border-radius: 25px; width: 150px; height: 40px; background-color: #007700; color: white;"
													 type="submit" value="Update" name="up">

											</form>
											<a href="GioHangCartDelete?delms=<%=g.getMaLapTop()%>"><img
												style="width: 50px;"
												src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqN9Xu3RprG0viNe3byeFsA-irH4841r-AnW1FYIVtZw_X8emPbPgYDYUUCZefnmA8i2k&usqp=CAU"></a>
										</div>
									</td>
									<td>
										<h6>
											$<%=g.getSoluong()*g.getGia()%></h6>
									</td>
									<%
									}
									%>

								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>

		<div class="col-lg-4 offset-lg-4">
			<div class="checkout">
				<ul>
					<li class="subtotal">subtotal <span>$<%=ghbo.tongTien()%></span>
					</li>
					<li class="cart-total">Total <span>$<%=ghbo.tongTien()%></span></li>
				</ul>
				<a href="OrderCart" class="proceed-btn">Order</a>
			</div>
		</div>
		<%
		} else {
		%>
		<div class="row mt-5">
			<div class="col text-center mt-5">
				<img style="width: 220px;"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz1Q8VQQB2A5v3FkMyAWyO39AOA94BIvQ79g&usqp=CAU">

			</div>

		</div>

		<%
		}
		%>
	
</div>
 
 
 
 

 
 
  
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
  <!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</body>

</html>