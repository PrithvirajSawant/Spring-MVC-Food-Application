<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminOption</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style type="text/css">

*{
    margin:0;
    padding:0;
    font-family:'Poppins', sans-serif;
    box-sizing: border-box;
}

.container{
    width:100%;
    height:100vh;
    background-image:url("<c:url value="/resources/images/bg-8.jpg " />");
    background-color:#f5680f;
    background-position: center;
    background-size: cover;;
    position: relative;
}

 .h1{
    color: white;
 	display: flex;
	position: relative;
 	justify-content: center;
 	padding-top: 50px;
}

.admin-box{
    /* border:2px solid aliceblue; */
    width:90%;
    max-width:450px;
    position: absolute;
    top:50%;
    left:50%;
    transform: translate(-50%,-50%);
    /* background: #fff; */
    background: transparent;
    background-color: rgba(255, 255, 255, 0.475);
    border-radius:10px;
    padding:50px 60px 70px;
    text-align: center;
}

.admin-box h1{
    font-size: 30px;
    margin-bottom: 60px;
    color:#ffffff;
    position: relative
}

.admin-box h1::after{
    content:'';
    width: 30px;
    height: 4px;
    border-radius: 3px;
    background: #ffffff;
    position: absolute;
    bottom:-12px;
    left:50%;
    transform: translateX(-50%);
}




/* p.fpc{
    text-align:left;
    font-size: 13px;
    max-height: 65px;
    transition:max-height 0.5s;
    overflow: hidden;
} */

.btn-field{
    width:100%;
    display: flex;
    justify-content:center;
    padding-bottom: 20px;
    /*border:2px solid red;*/
}

.if-fill2 button:hover{
background-color: #c9c3c6;
}

.btn-field a{
	text-decoration: none;
	color: #ffff;
}

.btn-field button{
    flex-basis: 48%;
    background: #ffffff;
    color: #000000;
    height: 40px;
    border-radius: 20px;
    border: 0;
    outline: 0;
    cursor: pointer;
    
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
${message}
<main>
<div class="container">
  <!-- <h1 class="h1">MVC Food Application</h1> -->
  <div class="admin-box">
    <h1 id="title">Admin Option</h1>
      <section  action="validate" method="post">
        
        <div class="btn-field if-fill2">
          <button id="btn1">Add user</button> 
 		</div>
        <div class="btn-field if-fill2">
          <button  id="btn2">Login user</button>
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn3">Add Product</button>
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn4">View Products</button> <!-- removed all <a></a> tage's as we are using JS (DOM) for the operation  -->
 		</div>
        <div class="btn-field if-fill2">
          <button id="btn5">View Users</button>
 		</div>
 		
      </section>
  </div>
</div>
</main>
<footer>
		<div class="nav2">
			<div class="link2">
			<a href="adminloginform.jsp"><i
					class="bi bi-arrow-left-circle-fill"></i> Back</a>
			</div>
		</div>
	</footer>
<script type="text/javascript">
	 /* document.getElementById("btn1").addEventListener("click", function(event) {
		  event.preventDefault(); // Prevent default button behavior
	  	  window.location.href = "adduser"; // Redirect to the "adduser" page
	  });
	  
	  document.getElementById("btn2").addEventListener("click", function(event) {
		  event.preventDefault(); // Prevent default button behavior
	  	  window.location.href = "loginuser.jsp"; // Redirect to the "adduser" page
	  });
	  
	  document.getElementById("btn3").addEventListener("click", function(event){
		  event.preventDefault();
		  window.location.href="addProduct";
	  });*/
	  
	  const buttons = [
		  document.getElementById("btn1"),
		  document.getElementById("btn2"),
		  document.getElementById("btn3"),
		  document.getElementById("btn4"),
		  document.getElementById("btn5")
	  ];
	  
	  const redirectUrls = [
		  "adduser",
		  "loginuser.jsp",
		  "addProduct",
		  "viewAllProducts",
		  "viewAllUsers"
	  ];
	  
	  buttons.forEach((button,index)=>{
		button.addEventListener("click",(event)=>{
			event.preventDefault();
			window.location.href = redirectUrls[index];
		}); 
	  });
	  
</script>
<!-- <h1>AdminOption</h1>
<a href="adduser">Add user</a>
<a href="loginuser.jsp">Login user</a>
<a href="addProduct">Add Product</a>
<a href="viewAllProducts">View Products</a>
<a href="viewAllUsers">View Users</a> -->
</body>
</html>