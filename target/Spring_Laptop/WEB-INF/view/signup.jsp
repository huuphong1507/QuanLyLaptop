<%@page import="com.PhongLaptop.utils.MyConstants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" referrerpolicy="no-referrer" />
   

</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

.container {
    background-image: url('bicrypto-bg.png');
    background-size: cover;
    background-repeat: no-repeat;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.logo {
    height: 100px;
}

.wrapper {
    width: 95%;
    max-width: 400px;
    background: #121212d8;
    padding: 40px 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 80%;
}

form {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
}

.form-container h3 {
    font-size: 33px;
    font-weight: bold;
    color: #21b6cf;
    font-family: 'Roboto', sans-serif;
    margin: 5px 0 10px 0;
}

.form-container .form input {
    height: 40px;
    background: none;
    color: #f8f9fa;
    border: 2px solid #21b6cf;
    border-radius: 15px;
    width: 100%;
    margin: 8px 0;
    padding: 0 10px;
}

.form-container a {
    color: white;
    text-decoration: none;
}

.form-container form button {
    background: none;
    padding: 8px 16px;
    border-color: #21b6cf;
    font-weight: 600;
    border-radius: 15px;
    color: white;
    margin: 15px 0;
}
.form-container p {
    color: white;
    text-align: center;
}


.signup h3 {
    font-size: 25px;
}

</style>

<body style="height: calc(100vh - 80px);background-position: center; background-image: url('https://pdp.edu.vn/wp-content/uploads/2021/02/tai-background-anh-sang-dep-nhat.jpg');">

	<div class="container">

		<div class="wrapper">
			<img src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-and-shapes-3/177800/131-512.png" alt="Bi Crypto Logo"
				class="logo">

			<div class="form-container signup">
				<h3>CREATE AN ACCOUNT</h3> 
				<form action="Signup" class="form" method="get" >

					<input type="text" placeholder="Fullname" required name="Hoten"> <input
						type="text" placeholder="Adress" required name="Diachi"> <input type="number"
						placeholder="Phone number" required name="Sodienthoai"> <input type="email"
						placeholder="Email" required name="Email"> <input type="text"
						placeholder="Username" required name="TenDangNhap"> <input type="password"
						placeholder="Password" required name="Pass">
					<div class="g-recaptcha" data-sitekey="<%=MyConstants.SITE_KEY%>"></div>
					
					<button>
						Accept &nbsp; <span class="fa fa-arrow-right"></span>
					</button>
	

									
				</form>
				<p>
					Already have an account? <a class="navigate-btn" href="HomeLaptop">Login
						here</a>
				</p>
			</div>
		</div>

	</div>
<!-- reCAPTCHA with English language -->
	<script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
</body>
</html>