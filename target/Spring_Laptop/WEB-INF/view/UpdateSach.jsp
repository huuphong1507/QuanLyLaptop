<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact V4</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="Add"
				method="post" enctype="multipart/form-data">
				<span class="contact100-form-title"> Thêm Sách </span>

				

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Tên Laptop</span> <input id="txttenlaptop"
						name="txttenlaptop" placeholder="Tên Laptop" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">RAM</span> <input id="txtRAM"
						name="txtRAM" placeholder="Tên RAM" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">CPU</span> <input id="txtCPU"
						name="txtCPU" placeholder="Tên CPU" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Ổ cứng: </span> <input id="txtocung"
						name="txtocung" placeholder="Tên ổ cứng" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Màn hình: </span> <input id="txtmanhinh"
						name="txtmanhinh" placeholder="Tên Màn hinh" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Card đồ họa: </span> <input id="txtcarddohoa"
						name="txtcarddohoa" placeholder="Tên Card đồ họa" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Pin: </span> <input id="txtpin"
						name="txtpin" placeholder="Loại Pin" class="input100"
						required="" type="text"> <span class="focus-input100"
						value='<c:out value="${MaLapTop }"></c:out>'></span>
				</div>
				
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Giá: </span> <input id="txtgia"
						name="txtgia" placeholder="Giá" class="input100" required=""
						type="number" value='<c:out value="${MaLapTop }"></c:out>'>
					<span class="focus-input100"></span>
				</div>
				
				
				
				<div class="wrap-input100 input100-select">
					<span class="label-input100">Loại Laptop</span>
					<div>
						<select class="selection-2" name="service"
							onchange="genderChanged(this)">
							<option selected>Chọn loại Laptop</option>
							<c:forEach items="${LoaiBean}" var="l">
								<option value="${l.getMaloai() }"><c:out
										value="${MaLapTop }"></c:out></option>
							</c:forEach>
						</select>
					</div>
					<script language="javascript">
						function genderChanged(obj) {
							var value = obj.value;
							result.value = value;
						}
					</script>
					<span class="focus-input100"></span> <input type="hidden"
						id="result" value="" name="txtloai" class="input100" />
				</div>

				

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Ảnh</span> <img alt=""
						src="<c:out value="${MaLapTop }"></c:out>"> <input
						id="txtfile" name="txtfile" placeholder="Ảnh" class="input100"
						required="" type="file"> <span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span> Submit <i class="fa fa-long-arrow-right m-l-7"
								aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>


</body>
</html>

