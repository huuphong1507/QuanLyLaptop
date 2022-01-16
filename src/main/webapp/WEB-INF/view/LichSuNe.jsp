<%@page import="com.PhongLaptop.model.bean.LichSuBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Laptop Store</title>
<meta content="" name="description">
<meta content="" name="keywords">


<meta content="" name="description">
<meta content="" name="keywords">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/style1.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="cart1.css">
<script src="https://kit.fontawesome.com/332a215f17.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- Template Login -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	referrerpolicy="no-referrer" />
<!-- End Template Login -->
</head>
<body>
	<%
	ArrayList<LichSuBean> ds = (ArrayList<LichSuBean>) request.getAttribute("history");
	%>

	<!-- ======= Top Bar ======= -->
	<section id="topbar" class="d-flex align-items-center">
		<div
			class="container d-flex justify-content-center justify-content-md-between">
			<div class="contact-info d-flex align-items-center">
				<i class="bi bi-envelope-fill"></i><a
					href="mailto:contact@example.com">pp07@minhkhai.com</a> <i
					class="bi bi-phone-fill phone-icon"></i> +1 123 456 789
			</div>
			<div class="social-links d-none d-md-block">
				<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
					href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
					href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a
					href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
			</div>
		</div>
	</section>

	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="HomeLaptop">BOOK STORE</a>
			</h1>
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
									<li><a
										onclick="document.getElementById('id01').style.display='block'"
										class="getstarted scrollto">Sign-in</a></li>
								</c:if>
								<c:if test="${not empty tttaikhoan}">

									<ul>

										<li class="nav-item">Welcome, <c:out
												value="${sessionScope.tttaikhoan.getHoten() }"></c:out></li>

										<li class="nav-item"><a class="getstarted scrollto"
											href="KiemTra?logout=true"><img
												style="width: 40px; height: 30px;"
												src="https://cdn.iconscout.com/icon/premium/png-256-thumb/logout-3028583-2521684.png"></a></li>



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
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->


	<div class="container">

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Ảnh</th>
					<th>Tên Laptop</th>
					<th>Time Order</th>
					<th>Tình trạng đơn hàng</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < ds.size(); i++) {
				%>
				<tr>
					<td><img style="height: 50px; weight: 50px;"
						src="<%=ds.get(i).getAnh()%>"></td>
					<td><%=ds.get(i).getTenlaptop()%></td>
					<td><%=ds.get(i).getDate()%></td>
					<td>
						<%
						if (ds.get(i).getDamua() == 0) {
						%>
						<div class="email">
							<span style="font-family: serif; font-size: 20px; color: red;">
								<a> Chờ xác nhận đơn hàng</a>
							</span>
						</div> <%
 } else if (ds.get(i).getDamua() == 1) {
 %>
						<div class="email">
							<span style="font-family: serif; font-size: 20px; color: red;">Đã xác nhận. Đang
								Vận Chuyển </span>
						</div> <%
 }
 %>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="container">
			<h3>Laptop Store</h3>
			
			<div class="social-links">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
			
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>


	<!-- Vendor JS Files -->

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