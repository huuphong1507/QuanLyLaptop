<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

</head>
<style>
	@import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

 body {
     background-color: #673AB7;
     font-family: 'Calibri', sans-serif !important
 }

 .container {
     margin-top: 100px
 }

 .card {
     position: relative;
     display: -webkit-box;
     display: -ms-flexbox;
     display: flex;
     -webkit-box-orient: vertical;
     -webkit-box-direction: normal;
     -ms-flex-direction: column;
     flex-direction: column;
     min-width: 0;
     word-wrap: break-word;
     background-color: #fff;
     background-clip: border-box;
     border: 0px solid transparent;
     border-radius: 0px
 }
 }

 .card-body {
     -webkit-box-flex: 1;
     -ms-flex: 1 1 auto;
     flex: 1 1 auto;
     padding: 1.25rem
 }

 .card .card-title {
     position: relative;
     font-weight: 600;
     margin-bottom: 10px
 }

 .table {
     width: 100%;
     max-width: 100%;
     margin-bottom: 1rem;
     background-color: transparent
 }

 * {
     outline: none
 }

 .table th,
 .table thead th {
     font-weight: 500
 }

 .table thead th {
     vertical-align: bottom;
     border-bottom: 2px solid #dee2e6
 }

 .table th {
     padding: 1rem;
     vertical-align: top;
     border-top: 1px solid #dee2e6
 }

 .table th,
 .table thead th {
     font-weight: 500
 }

 th {
     text-align: inherit
 }

 .m-b-20 {
     margin-bottom: 20px
 }

 .customcheckbox {
     display: block;
     position: relative;
     padding-left: 24px;
     font-weight: 100;
     margin-bottom: 12px;
     cursor: pointer;
     font-size: 22px;
     -webkit-user-select: none;
     -moz-user-select: none;
     -ms-user-select: none;
     user-select: none
 }

 .customcheckbox input {
     position: absolute;
     opacity: 0;
     cursor: pointer
 }

 .checkmark {
     position: absolute;
     top: -3px;
     left: 0;
     height: 20px;
     width: 20px;
     background-color: #CDCDCD;
     border-radius: 6px
 }

 .customcheckbox input:checked~.checkmark {
     background-color: #2196BB
 }

 .customcheckbox .checkmark:after {
     left: 8px;
     top: 4px;
     width: 5px;
     height: 10px;
     border: solid white;
     border-width: 0 3px 3px 0;
     -webkit-transform: rotate(45deg);
     -ms-transform: rotate(45deg);
     transform: rotate(45deg)
 }

</style>

<body>

	<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body text-center">
                    <h5 style="text-align: center; font-size: 35px;" class="card-title m-b-0">Quản lý hóa đơn</h5>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead style="text-align: center; font-size: 20px;" class="thead-light">
                            <tr>
                                
                                <th scope="col">Mã Khách Hàng</th>
                                <th scope="col">Mã Hóa đơn</th>
                                <th scope="col">Ngày Mua</th>
                                <th scope="col">Số Lượng Mua</th>
                                <th scope="col">Giá</th>
								<th scope="col">Đã Mua</th>
                                
                            </tr>
                        </thead>
                        <tbody style="text-align: center;" class="customtable">
                            <c:forEach items="${thanhtoan}" var="t">
							<tr>
								<td>${t.getMakh()}</td>
								<td>${t.getMaHoaDon()}</td>
								<td>${t.getNgayMua()}</td>
								<td>${t.getSoLuongMua()}</td>
								<td>$${t.getGia()}</td>

								<td>
									<c:choose>
										<c:when test="${t.getDamua() == 0}">
											<p>Chờ xác nhận</p>
											<a
												href="AdminXacNhan?machitiet=${t.getMaChiTietHoaDon() }">
												Xác Nhận </a>
										</c:when>
										<c:when test="${t.getDamua() == 1 }">
											<p>Admin đã xác nhận thành công</p>
										</c:when>
										<c:otherwise>
											<p>Chưa Thanh Toán</p>
										</c:otherwise>
									</c:choose>
								 </td>
							</tr>
						</c:forEach>

                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>