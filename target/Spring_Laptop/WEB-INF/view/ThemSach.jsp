<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="AdminThemSachController"
		enctype="multipart/form-data">
		
		Nhap tên Laptop <input name="txttenlaptop" type="text"> </br>
		Nhập số RAM: <input name="txtRAM" type="text"> <br>
		Nhập số CPU: <input name="txtCPU" type="text"> <br>
		Nhập Ổ cứng: <input name="txtocung" type="text"> <br>
		Nhập số Màn hình: <input name="txtmanhinh" type="text"> <br>
		Nhập Card đồ họa: <input name="txtcarddohoa" type="text"> <br>
		Nhập tên Pin: <input name="txtpin" type="text"> <br>
		Nhập giá<input name="txtgia" type="text"> <br>
		

		
		<script language="javascript">
			function genderChanged(obj) {
				var value = obj.value;
				result.value = value;
			}
		</script>

			 <br> Chọn ảnh :<input name="txtfile"
			type="file"> <br> <input type="submit">
	</form>
<a href="AdminManager">Quay Về Admin</a>
</body>
</html>