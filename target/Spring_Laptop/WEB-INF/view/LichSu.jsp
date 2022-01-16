<%@page import="com.PhongLaptop.model.bean.GioHangBean"%>
<%@page import="com.PhongLaptop.model.bo.GioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.PhongLaptop.model.bean.KhachHangBean"%>
<%@page import="com.PhongLaptop.model.bo.KhachHangBo"%>
<%@page import="com.PhongLaptop.model.bean.LoaiBean"%>
<%@page import="com.PhongLaptop.model.bean.LaptopBean"%>
<%@page import="com.PhongLaptop.model.bo.LoaiBo"%>
<%@page import="com.PhongLaptop.model.bo.LaptopBo"%>
<%@page import="com.PhongLaptop.model.bean.LichSuBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Green Bootstrap Template - Index</title>
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
  
  
</head>

<body>
<%

ArrayList<LichSuBean> ds = (ArrayList<LichSuBean>) request.getAttribute("history") ;

request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

LoaiBo lbo = new LoaiBo();
LichSuBean list = new LichSuBean();


//Xoá
String msxoa = request.getParameter("delms");
//Cập nhật
String upsl = request.getParameter("upsl");
String upms = request.getParameter("upms");

ArrayList<LaptopBean> dslaptop = (ArrayList<LaptopBean>) request.getAttribute("dslaptop");
ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");

String key = (String) request.getAttribute("timkiemsach");

%>

<!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com">pp07@minhkhai.com</a>
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

      <h1 class="logo me-auto"><a href="TestMenu">BOOK STORE</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="TestMenu">Home</a></li>
          <li class="dropdown"><a><span>Category</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#"></a>
						</li>
              
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="TestCart">Cart</a></li>
          <li><a class="nav-link scrollto" href="payment">Payment</a></li>
          <li><a class="nav-link scrollto " href="HienThiController">History</a></li>
          <li><a class="nav-link scrollto" href="sale">Hot Sale</a></li>
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
  

		
<section id="hero">
  <div class="hero-container">
            <div class="hero-logo">
                <h1 class="font-weight-bold">History Orders</h1>
            </div>
        </div>      
        </section> 
  <table style="text-align: center;" class="table table-bordered">
    <thead class="thead-dark">
	   <tr>
				<th scope="col" class="text-white">Product</th>
				<th scope="col" class="text-white">Price</th>
				<th scope="col" class="text-white">Quantity</th>								
				<th scope="col" class="text-white">Time Order</th>
		</tr>
	</thead>
    <tbody>
    <%for(LichSuBean sb:ds) { %>
      <tr>
        <td width="200">
        	<div class="main">

				<div class="d-flex">
					<img src="<%=sb.getAnh()%>" class="img-thumbnail w-100"></div>
       
        			<p><%=sb.getTenlaptop() %></p>
        			<p><%=sb.getCPU()%></p>

        		
        	</div>
        </td>
        <td><%=sb.getGia() %></td>
        <td><%=sb.getSoluong() %></td>
        <td><%=sb.getDate() %></td>  
      </tr>
     <%} %>
    </tbody>
  </table>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>


</body>
</html>