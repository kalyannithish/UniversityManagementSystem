<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>University Management System</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html, body {
	display: grid;
	height: 100%;
	width: 100%;
	place-items: center;
	background-image: url("background.jpg");
	min-height: 380px;
	background-size: cover;
}

::selection {
	background: #fa4299;
	color: #fff;
}

.wrapper {
	overflow: hidden;
	max-width: 390px;
	background: #ffafbd;
	padding: 30px;
	border-radius: 5px;
	box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
}

.wrapper .title-text {
	display: flex;
	width: 200%;
}

.wrapper .title {
	width: 50%;
	font-size: 35px;
	font-weight: 600;
	text-align: center;
	transition: all 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .slide-controls {
	position: relative;
	display: flex;
	height: 50px;
	width: 100%;
	overflow: hidden;
	margin: 30px 0 10px 0;
	justify-content: space-between;
	border: 1px solid lightgrey;
	border-radius: 5px;
}

.slide-controls .slide {
	height: 100%;
	width: 100%;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	text-align: center;
	line-height: 48px;
	cursor: pointer;
	z-index: 1;
	transition: all 0.6s ease;
}

.slide-controls label.exam {
	color: #000;
}

.slide-controls .slider-tab {
	position: absolute;
	height: 100%;
	width: 50%;
	left: 0;
	z-index: 0;
	border-radius: 5px;
	background: -webkit-linear-gradient(left, #a445b2, #fa4299);
	transition: all 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

input[type="radio"] {
	display: none;
}

#exam:checked ~ .slider-tab {
	left: 50%;
}

#exam:checked ~ label.exam {
	color: #fff;
	cursor: default;
	user-select: none;
}

#exam:checked ~ label.login {
	color: #fff;
}

#login:checked ~ label.exam {
	color: #fff;
}

#login:checked ~ label.login {
	cursor: default;
	user-select: none;
}

.wrapper .form-container {
	width: 100%;
	overflow: hidden;
}

.form-container .form-inner {
	display: flex;
	width: 200%;
}

.form-container .form-inner form {
	width: 50%;
	transition: all 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.form-inner form .field {
	height: 50px;
	width: 100%;
	margin-top: 20px;
}

.form-inner form .field input {
	height: 100%;
	width: 100%;
	outline: none;
	padding-left: 15px;
	border-radius: 5px;
	border: 1px solid lightgrey;
	border-bottom-width: 2px;
	font-size: 17px;
	transition: all 0.3s ease;
}

.form-inner form .field input:focus {
	border-color: #fc83bb;
	/* box-shadow: inset 0 0 3px #fb6aae; */
}

.form-inner form .field input::placeholder {
	color: #999;
	transition: all 0.3s ease;
}

form .field input:focus::placeholder {
	color: #b3b3b3;
}

.form-inner form .pass-link {
	text-align: center;
	margin-top: 30px;;
}

.form-inner form .exam-link {
	text-align: center;
	margin-top: 30px;
}

.form-inner form .pass-link a, .form-inner form .exam-link a {
	color: #fa4299;
	text-decoration: none;
}

.form-inner form .pass-link a:hover, .form-inner form .exam-link a:hover
	{
	text-decoration: underline;
}

form .btn {
	height: 50px;
	width: 100%;
	border-radius: 5px;
	position: relative;
	overflow: hidden;
}

form .btn .btn-layer {
	height: 100%;
	width: 300%;
	position: absolute;
	left: -100%;
	background: -webkit-linear-gradient(right, #a445b2, #fa4299, #a445b2, #fa4299);
	border-radius: 5px;
	transition: all 0.4s ease;;
}

form .btn:hover .btn-layer {
	left: 0;
}

form .btn input[type="submit"] {
	height: 100%;
	width: 100%;
	z-index: 1;
	position: relative;
	background: none;
	border: none;
	color: #fff;
	padding-left: 0;
	border-radius: 5px;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="wrapper">
		<div class="title-text">
			<div class="title login">Home Login</div>
			<div class="title exam">Exam Login</div>
		</div>
		<div class="form-container">
			<div class="slide-controls">
				<input type="radio" name="slide" id="login" checked> <input
					type="radio" name="slide" id="exam"> <label for="login"
					class="slide login">Login</label> <label for="exam"
					class="slide exam">Exam</label>
				<div class="slider-tab"></div>
			</div>
			<div class="form-inner">
				<form action="Home.jsp" class="login" method="POST">
					<div class="field">
						<input name=reg type="text" placeholder="Registration id" required>
					</div>
					<div class="field">
						<input name=pass type="password" placeholder="Password" required>
					</div>
					<div class="pass-link">
						<a href="forgotpassword.jsp">Forgot password?</a>
					</div>
					<div class="field btn">
						<div class="btn-layer"></div>
						<input type="submit" value="Login">
					</div>
					<div class="pass-link">
						<a href="resetpage.jsp"> Reset password?</a>
					</div>
				</form>
				<form>
					<div class="field">
						<input name=reg type="text" placeholder="Registration id" required>
					</div>
					<div class="field">
						<input name=pass type="password" placeholder="Password" required>
					</div>
					<br>
					<br> <select
						onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
						<option value="">Select...</option>
						<option value="Admin.jsp">Login As admin</option>
						<option value="firstpage.jsp">Student</option>
					</select>

					
				</form>
			</div>
		</div>
	</div>
	<script>
         const loginText = document.querySelector(".title-text .login");
         const loginForm = document.querySelector("form.login");
         const loginBtn = document.querySelector("label.login");
         const examBtn = document.querySelector("label.exam");
         const examLink = document.querySelector("form .exam-link a");
         examBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         });
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         examLink.onclick = (()=>{
           examBtn.click();
           return false;
         });
      </script>
</body>
</html>