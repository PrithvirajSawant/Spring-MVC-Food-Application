<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Credentials</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
<script src="https://kit.fontawesome.com/ed89acff3c.js" crossorigin="anonymous"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
	box-sizing: border-box;
}

body {
	font-family: Sans-serif;
	background-color: #f5680f;
}

.container {
	width: 100%;
	height: 100vh;
	background-position: center;
	background-size: cover;;
	position: relative;
	background-image: url("<c:url value="/resources/images/user.jpg " />");
}

.form-box {
	/* border:2px solid aliceblue; */
	width: 90%;
	max-width: 450px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* background: #fff; */
	/* background: transparent; */
	background-color: rgba(255, 255, 255, 0.475);
	border-radius: 10px;
	padding: 50px 60px 70px;
	text-align: center;
}

.form-box h1 {
	font-size: 30px;
	margin-bottom: 60px;
	color: #ffffff;
	position: relative
}

.form-box h1::after {
	content: '';
	width: 30px;
	height: 4px;
	border-radius: 3px;
	background: #ffffff;
	position: absolute;
	bottom: -12px;
	left: 50%;
	transform: translateX(-50%);
}

.alert {
	display: none;
	border: 1px solid pink;
	background-color: #f8d7da;
	color: #f28b72;
	border-radius: 5px;
	padding: 10px;
}

.input-field {
	background: #eaeaea;
	margin: 15px 0;
	border-radius: 10px;
	display: flex;
	align-items: center;
	max-height: 65px;
	transition: max-height 0.5s;
	overflow: hidden;
}

.if-fill {
	background-color: #c9c3c6;
}

.if-fill2:hover{
border: 5px solid #ffffff;
}

input {
	width: 100%;
	background: transparent;
	border: 0;
	outline: 0;
	padding: 18px 15px;
}

.input-field i {
	margin-left: 15px;
	color: #999;
}

form p {
	text-align: left;
	font-size: 13px;
	max-height: 65px;
	transition: max-height 0.5s;
	overflow: hidden;
}

form p a {
	text-decoration: none;
	color: #3c00a0;
}

/* p.fpc{
    text-align:left;
    font-size: 13px;
    max-height: 65px;
    transition:max-height 0.5s;
    overflow: hidden;
} */
.btn-field {
	width: 100%;
	display: flex;
	justify-content: space-between;
	margin-top:-120px;
}

.btn-field button {
	flex-basis: 48%;
	background: #ffffff;
	color: #000000;
	height: 40px;
	border-radius: 20px;
	border: 0;
	outline: 0;
	cursor: pointer;
	transition: background 1s;
}

.btn-field button:hover {
	background-color: #67411a;
}

.input-group {
	height: 280px;
}

.btn-field button.disable {
	background: #eaeaea;
	color: #555;
}

footer {
	position: fixed;
	bottom: 0;
	height: 50px;
	width: 100%;
}

.nav2 {
	padding: 15px;
	background-color: black;
	height: 50px;
	display: flex;
	justify-content: center;
	gap: 15px;
	align-items: center;
}

.nav2 a {
	text-decoration: none;
	margin: 10px;
	padding: 20px;
	height: 400px;
	color: white;
	margin-left: 10px;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
}

.link2 a {
	padding: 10px;
	margin: 0px;
	width: 10px;
}

.link2 a:hover {
	color: #c9c3c6;
}

</style>
</head>
<body>
<main>
<div class="container">

  <div class="form-box">
    <h1 id="title">User Login Credentials</h1>
    <div class="alert" id="loginAlert">${msg}</div>
      <form  action="userlogin" method="post">
        <div class="input-group">
          <div class="input-field if-fill2">
            <i class="fa-solid fa-envelope"></i>
	        <input type="email" name="email" placeholder="Email"><br>
	      </div>
	      <div class="input-field if-fill2">
	        <i class="fa-solid fa-lock"></i>
            <input type="password" name="password" placeholder="Password"><br>
          </div>
        </div>
        
        <div class="btn-field">
          <button type="submit" >Submit</button>
 		</div>
 		
      </form>
  </div>
</div>
</main>
<footer>
		<div class="nav2">
			<div class="link2">
			<a href="adminoptions.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer>
	<script type="text/javascript">
		//Add this JavaScript code to handle the display of the alert after login failure
		document.addEventListener("DOMContentLoaded", function() {
			var loginAlert = document.getElementById("loginAlert");
			if (loginAlert.textContent.trim() !== "") {
				// If the alert message is not empty, display the alert
				loginAlert.style.display = "block";
			}
			loginAlert.addEventListener("click", function() {
				// Hide the alert when it is clicked
				loginAlert.style.display = "none";
			});
		});
	</script>

</body>
</html>