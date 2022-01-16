<%@page import="com.PhongLaptop.utils.MyConstants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- =======================================================
  * Template Name: Green - v4.6.0
  * Template URL: https://bootstrapmade.com/green-free-one-page-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<c:if test="${not empty dangkythanhcong }">
<script type="text/javascript">
alert('Signin Successful!');
</script>
</c:if>



	<!-- ======= Top Bar ======= -->
	<section id="topbar" class="d-flex align-items-center">
		<div
			class="container d-flex justify-content-center justify-content-md-between">
			<div class="contact-info d-flex align-items-center">
				<i class="bi bi-envelope-fill"></i><a
					href="mailto:contact@example.com">pp07@laptop.com</a> <i
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
				<a href="index.html">Green</a>
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


						<div style="box-sizing: border-box; margin: 0; padding: 0;"
							id="id01" class="w3-modal">

							<div
								style="background-size: cover; background-repeat: no-repeat; height: 100vh; display: flex; justify-content: center; align-items: center; flex-direction: column;"
								class="container123">

								<div
									style="width: 95%; max-width: 400px; background: #121212d8; padding: 40px 40px; display: flex; justify-content: center; align-items: center; flex-direction: column;"
									class="wrapper">
									<img style="height: 100px;"
										src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-and-shapes-3/177800/131-512.png"
										alt="Avatar" class="logo">

									<div
										style="display: flex; justify-content: center; align-items: center; flex-direction: column; width: 80%;"
										class="form-container">
										<h3
											style="font-size: 33px; font-weight: bold; color: #21b6cf; font-family: 'Roboto', sans-serif; margin: 5px 0 10px 0;">LOGIN
											HERE</h3>

										<form
											style="display: flex; justify-content: center; align-items: center; flex-direction: column; width: 100%;"
											action="KiemTra" class="form" method="post">
											<form action="" class="form">
												<input
													style="height: 40px; background: none; color: #f8f9fa; border: 2px solid #21b6cf; border-radius: 15px; width: 100%; margin: 8px 0; padding: 0 10px;"
													type="text" placeholder="Username" name="txtUser" required>
												<input
													style="height: 40px; background: none; color: #f8f9fa; border: 2px solid #21b6cf; border-radius: 15px; width: 100%; margin: 8px 0; padding: 0 10px;"
													type="password" placeholder="Password" name="txtPass"
													id="password" required> <a
													style="color: white; text-decoration: none;" href="#">forgot
													password</a>
													<div class="g-recaptcha"
											data-sitekey="<%=MyConstants.SITE_KEY%>"></div>
												<button type="submit"
													style="background: none; padding: 8px 16px; border-color: #21b6cf; font-weight: 600; border-radius: 15px; color: white; margin: 15px 0;">
													LOGIN &nbsp; <span class="fa fa-paper-plane"></span>
												</button>
											</form>
											<p style="color: white; text-align: center;">
												Don't have an account yet? <a href="Traveview">Create an
													account here</a>
											</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero">
		<div id="heroCarousel" data-bs-interval="5000"
			class="carousel slide carousel-fade" data-bs-ride="carousel">

			<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

			<div class="carousel-inner" role="listbox">

				<!-- Slide 1 -->
				<div class="carousel-item active"
					style="background-image: url(assets/img/slide/slide-1.jpg)">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">
								Welcome to <span>Laptop Store</span>
							</h2>
							<p class="animate__animated animate__fadeInUp">Mời quý khách lựa chọn sản phẩm!!</p>
							<a href="#about"
								class="btn-get-started animate__animated animate__fadeInUp scrollto">Read
								More</a>
						</div>
					</div>
				</div>

				<!-- Slide 2 -->
				<div class="carousel-item"
					style="background-image: url(assets/img/slide/slide-2.jpg)">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">Hello!!</h2>
							
							<a href="#about"
								class="btn-get-started animate__animated animate__fadeInUp scrollto">Read
								More</a>
						</div>
					</div>
				</div>

				<!-- Slide 3 -->
				<div class="carousel-item"
					style="background-image: url(assets/img/slide/slide-3.jpg)">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">Laptop Store</h2>
							
							<a href="#about"
								class="btn-get-started animate__animated animate__fadeInUp scrollto">Read
								More</a>
						</div>
					</div>
				</div>

			</div>

			<a class="carousel-control-prev" href="#heroCarousel" role="button"
				data-bs-slide="prev"> <span
				class="carousel-control-prev-icon bi bi-chevron-left"
				aria-hidden="true"></span>
			</a> <a class="carousel-control-next" href="#heroCarousel" role="button"
				data-bs-slide="next"> <span
				class="carousel-control-next-icon bi bi-chevron-right"
				aria-hidden="true"></span>
			</a>

		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Featured Services Section ======= -->
		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="section-title">
					<div style="text-align: right;">
						<form action="HomeLaptop">
							<input
								style="text-align: center; border-radius: 25px; border: 2px solid grey; height: 40px;"
								text" 
										placeholder="Enter book name" name="txtSearch">
							<button type="submit"
								style="background-color: #00CD00; border-radius: 25px; border: 2px solid grey; height: 40px; weight: 140px;">Search</button>
						</form>
					</div>
					<h2>Products</h2>
				</div>
			</div>
		</section>
		<!-- End About Us Section -->

		<!-- ======= Why Us Section ======= -->
		<section id="why-us" class="why-us">
			<div class="container">

				<div class="row no-gutters">
					<c:forEach items="${HomeLaptop}" var="c">
						<div class="col-lg-4 col-md-6 content-item">

							<div class="item">

								<span> <img width="180" height="180" src="${c.anh}"></span>
								<div class="price">
									<strong value="a">${c.gia}$</strong>
								</div>
								<h4>${c.tenlaptop}</h4>
								<h4>${c.CPU}</h4>
								<h4>${c.ocung }</h4>
								<h4>${c.manhinh }</h4>
								<h4>${c.carddohoa }</h4>
								<h4>${c.pin }</h4>


								<a style="float: left; margin-left: 10px;"
									href="GioHangCart?mlt=${c.getMaLapTop()}&tlt=${c.getTenlaptop()}&cpu=${c.getCPU()}&ram=${c.getRAM()}&ocung=${c.getOcung()}&manhinh=${c.getManhinh()}&carddohoa=${c.getCarddohoa()}&pin=${c.getPin()}&gia=${c.getGia()}&anh=${c.anh}">
									<img style="height: 60px; weight: 120px;"
									src="https://t3.ftcdn.net/jpg/00/30/21/50/360_F_30215082_UkRQTbOQsiTtcjkTunYNjFoaaccgkRW5.jpg">
								</a>

							</div>
						</div>
					</c:forEach>

				</div>

			</div>
		</section>
		<!-- End Why Us Section -->

	</main>
	<!-- End #main -->

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
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<!-- reCAPTCHA with English language -->
	<script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
</body>

</html>