<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="css/bootstrap.bundle.min.js"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>

html,
body {
  min-height: 100%;
  min-width: 100%;
}

body {
  background-image: linear-gradient(to right top, #f5576c, #df4a83, #bf4895, #964ba0, #654ea3);
  font-family: 'Quicksand', sans-serif;
  font-weight: 400;
}

.login {
  background: rgba(0, 0, 0, 0.2);
  color: #ffffff;
  border-radius: 150px 0px 150px 0px;
}

.form-group .form-control {
  background-color: transparent;
  padding: 25px 15px;
  color: #ffffff;
  border-color: rgba(0, 0, 0, 0.3);
}

.form-control:focus {
  background-color: rgba(245, 87, 108, 0.2);
  border-color: rgba(245, 87, 108, 0.7);
}

.btn-btc {
  color: #fff;
  background-color: rgba(245, 87, 108, 0.7);
  padding: 10px 25px;
  font-size: 15px;
}

.btn-btc:hover {
  color: #ffffff;
  background-color: rgba(245, 87, 108, 0.9);
}

input::-webkit-input-placeholder {
  color: white !important;
}

input:-moz-placeholder {
  /* Firefox 18- */
  color: white !important;
}

input: :-moz-placeholder {
  /* Firefox 19+ */
  color: white !important;
}

input:-ms-input-placeholder {
  color: white !important;
}
@media (min-width: 992px)
.col-md-7 {
    width: 100%;
}
</style>
<body>
<section class="form-block py-5">
	  <div class="container">
	    <div class="row">
	      <div class="col-lg-5 col-md-7 col-sm-12 mx-auto">
	        <div class="login shadow py-5 px-4 my-5">
	          <div class="title text-right py-3">
	            <h3 class="font-weight-bold">Thêm Laptop</h3>
	            
	          </div>
	          <form method="post" action="AdminThemLaptop" class="py-4" enctype="multipart/form-data">
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtMaLapTop" placeholder="Nhập mã Laptop">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txttenlaptop" placeholder="Nhập tên Laptop">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtRAM" placeholder="Nhập số RAM">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtCPU" placeholder="Nhập số CPU">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtocung" placeholder="Nhập Ổ cứng">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtmanhinh" placeholder="Nhập số Màn hình">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtcarddohoa" placeholder="Nhập Card đồ họa">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtpin" placeholder="Nhập Pin">
	            </div>
	            <div class="form-group mb-4">
	              <input type="text" class="form-control rounded-pill shadow-none" name="txtgia" placeholder="Nhập giá">
	            </div>
	            <script language="javascript">
					function genderChanged(obj) {
					var value = obj.value;
					result.value = value;
						}
				</script>
	            <div class="form-group mb-4">
	            	<input name="txtfile" class="form-control rounded-pill shadow-none" type="file">
	            </div>
	            
	            <button type="submit" class="btn btn-btc font-weight-bold shadow-none">Submit</button>
	            
	          </form>
	        </div>
	      </div>
	    </div>
	  </div>
</section>
</body>
</html>