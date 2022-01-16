<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets20/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets20/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Admin Manager Laptop</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- CSS Files -->
<link href="material-dashboard.css?v=2.1.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>






	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="black"
			data-image="../assets20/img/sidebar-2.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link"
						href="./dashboard.html"> <i class="material-icons">dashboard</i>
							<p>Mục Quản lý</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="QuanLyUser">
							<i class="material-icons">person</i>
							<p>Quản lý User</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./tables.html">
							<i class="material-icons">content_paste</i>
							<p>Quản lý Hóa Đơn</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="./typography.html"> <i class="material-icons">library_books</i>
							<p>Quản lý Sách</p>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="./icons.html">
							<i class="material-icons">bubble_chart</i>
							<p>Quản lý loại</p>
					</a></li>
					
					<!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
				id="navigation-example">
				<div class="container-fluid">
					
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation" data-target="#navigation-example">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form">
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Search...">
								<button type="submit"
									class="btn btn-default btn-round btn-just-icon">
									<i class="material-icons">search</i>
									<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0)"> <i class="material-icons">dashboard</i>
									<p class="d-lg-none d-md-block">Stats</p>
							</a></li>
							<li class="nav-item dropdown"><a class="nav-link"
								href="javscript:void(0)" id="navbarDropdownMenuLink"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <i class="material-icons">notifications</i>
									<span class="notification">5</span>
									<p class="d-lg-none d-md-block">Some Actions</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="javascript:void(0)">Mike
										John responded to your email</a> <a class="dropdown-item"
										href="javascript:void(0)">You have 5 new tasks</a> <a
										class="dropdown-item" href="javascript:void(0)">You're now
										friend with Andrew</a> <a class="dropdown-item"
										href="javascript:void(0)">Another Notification</a> <a
										class="dropdown-item" href="javascript:void(0)">Another
										One</a>
								</div></li>
								
								
							<li style="color: #FF9900; font-size: 25px; class="nav-item"><a style="color: #FF9900;" class="nav-link"
								href="javascript:void(0)"> <i class="material-icons">person</i>
									
								<p class="d-lg-none d-md-block">Account</p>
									
										Welcome, admin
										
							</a></li>
						
							
							
						</ul>
					</div>
				</div>
			</nav>
			
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-4 col-lg-12">
							<div class="card card-chart">
								<div class="card-header card-header-success">
									<div class="ct-chart" id="dailySalesChart"></div>
								</div>
								
							</div>
						</div>
						<div class="col-xl-4 col-lg-12">
							<div class="card card-chart">
								<div class="card-header card-header-warning">
									<div class="ct-chart" id="websiteViewsChart"></div>
								</div>
								
							</div>
						</div>
						<div class="col-xl-4 col-lg-12">
							<div class="card card-chart">
								<div class="card-header card-header-danger">
									<div class="ct-chart" id="completedTasksChart"></div>
								</div>
							</div>
						</div>
						</br>
						
						<a style="text-align: center;" href="ChuyenThemLaptop"><img	style="height: 50px; width: 50px;" src="https://cdn.icon-icons.com/icons2/1244/PNG/512/1492790881-6add_84227.png"></a></div></div>
						<div class="col-xl-4 col-lg-12">
							<div class="card mb-3">
					<select class="form-select" aria-label="Default select example"
						onchange="genderChanged(this)">
						<option selected>Chọn loại Laptop</option>
						<c:forEach items="${LoaiBean}" var="l">
							<option value="${l.getMaloai() }">${l.getTenloai() }</option>
						</c:forEach>
					</select>

							</div>
							
					<div class="container">
						<div style="width: 1300px;">
							<table class="table table-dark table-striped" id="dataTable" width="100%">
								<thead>
									<tr>
										<th>Ảnh</th>
										
										<th>Tên Laptop</th>
										<th>RAM</th>
										<th>CPU</th>
										<th>Ổ cứng</th>
										<th>Màn hình</th>
										<th>Card đồ họa</th>
										<th>Pin</th>
										<th>Giá</th>
										<th>Edit</th>
										<th>Delete</th>
																		
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${HomeLaptop}" var="s">
										<tr>
											<td><img  style="width: 45px;" src="${s.getAnh() } "></td>
											<td>${s.tenlaptop}</td>
											<td>${s.RAM}</td>
											<td>${s.CPU}</td>
											<td>${s.ocung}</td>
											<td>${s.manhinh}</td>
											<td>${s.carddohoa}</td>
											<td>${s.pin}</td>											
											<td>${s.gia}</td>
											
											<td><a href="AdminUpdate?
											
											tenlaptop=${s.tenlaptop}&
											RAM=${s.RAM}&
											CPU=${s.CPU}&
											ocung=${s.ocung}&
											manhinh=${s.manhinh}&
											carddohoa=${s.carddohoa}&
											pin=${s.pin}&
											gia=${s.gia}&
											maloai=${s.maloai}&
											anh=${s.anh }										
											"><img
													alt="" src="https://img1.pnghut.com/13/7/7/hb1WGviSDx/logo-scalable-vector-graphics-brand-pen-editing.jpg" width="50px"></a></td>
											<td>
											<form action="AdminManager">
											<a href="AdminDelete?masach=${s.getMaLapTop()}"><img
													alt="" src="https://www.seekpng.com/png/small/207-2079550_delete-comments-dailydot-logo.png" width="50px"></a></form></td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</div>
							</div>
						</div>
				
					
				</div>
							
						</div>
						

					</div>
	</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>