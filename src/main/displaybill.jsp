<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill	</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Vendor CSS Files -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style type="text/css">

/** 
   *Skill Card 
   */
* {
	margin: 0;
	padding: 0;
}

main{
margin-bottom: 40px;
}

.conav {
	height: 60px;
	display: flex;
	/*border: 2px solid red;*/
	background-color: #ffffff;
}

.nav {
	display: flex;
	height: 40px;
	width: 100%;
	/*border: 2px solid white;*/
	padding: 1px;
	justify-content: flex-end;
	margin: auto;
	align-items: center;
	padding-right: 5px;
}

.link a {
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	text-decoration: none;
	margin: 10px;
	padding: 20px;
	color: white;
}

.link {
	text-decoration: none;
	padding: 9px;
	margin-right: 1200px;
	background-color: #f5680f;
	color: white;
	border-radius: 12px;
	row-gap: 30px;
	/*position: fixed;*/
}

.link a:hover {
	color: #c9c3c6;
}

body {
	font-family: Sans-serif;
	background-color: #f3f7f9;
}

h1 {
	text-align: center;
	margin: 40px;
	font-family: Impact;
	opacity: 95%;
}

.skill_card {
	/*background-color: #000000;
	background-color: #f5680f;*/
	background-color: #dfdfdf;
	box-shadow: 5px 5px 20px #000;
	padding: 10px;
	/*color: #ffffff;*/
	color: #000000;
	width:300px;
	opacity: 70%;
}

.skill_card:hover{
background-color: #000000;
color:#ffffff;
opacity: 80%;
}

.sc{
	background-color: #ffffff;
	box-shadow: 5px 5px 20px #000;
	padding: 10px;
	/*color: #ffffff;*/
	color: #000000;
	width:300px;
	opacity: 70%;
	border-radius: 20px;


}

.card-body a {
	background-color: #f9800f;
	border-radius: 6px; 
	text-decoration : none;
	padding: 10px;
	color: white;
	text-decoration: none;
}

.card-body a:hover{
background-color:#ffffff;
color:black;
}

.skill_card_sp {
	padding-top: 50px;
	padding-bottom: 30px;
}

.card-body {
	display: flex;
	align-items: baseline;
	/* align-items: flex-baseline; */
	/* justify-content: center; */
	/* border: 2px solid orange; */
	/* display:inline-block;
    padding-top: 20px; */
	display: flex;
	flex-direction: column;
	align-items: center;
}

.stars i {
	color: #ffc107;
	margin: 0 1px;
}

footer {
	/*position: fixed;*/
	bottom: 0;
	height: 50px;
	width: 100%;
}

.nav2 {
	padding: 15px;
	background-color: black;
	height: 100px;
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

.row{
display: flex;
justify-content: center;
padding-left:80px; 
}

.img1 {
	display: flex;
	position: fixed;
	bottom: 5;
	height: 350px;
}

.img2 {
	display: flex;
	position: fixed;
	padding: 10px;
	bottom: 9;
	height: 300px;
	margin-left: 1050px;
	margin-bottom: 700px;
}

.img3{
position: fixed;
display: flex;
margin-left: 600px;
margin-top: 300px;
}
</style>
</head>
<body>
<main>
<div class="conav">
			<div class="nav">
				<div class="link">
					<a href="loginuser.jsp">Conform</a>
				</div>
			</div>
		</div>
		<img class="img1" alt="My Image" src="<c:url value="/resources/images/orange-br.png" />">
		<img class="img2" alt="My Image" src="<c:url value="/resources/images/cherry-br.png" />">
		<img class="img3" alt="My Image" src="<c:url value="/resources/images/orange-slice2-br.png" />">
<h1>Display bill</h1>
<div class="container">
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100 skill_card sc">
      <!-- <img src="/assets/images/skills_logo/CSS.png" alt="${p.getName()}"
		height="50px" width="80px" /> -->
		<div class="card-body">
		  <h5 class="card-title"><i class="bi bi-person-fill"></i> <c:out value="${ placedOrder.name}"></c:out></h5>
		  <hr/>
		  <h5><i class="bi bi-telephone-fill"></i> <c:out value="${ placedOrder.number}"></c:out></h5>
		  <hr/>
		  <h5><i class="bi bi-currency-rupee"></i> <c:out value="${ placedOrder.totalCost}"></c:out>/-</h5>
		  <hr/>
		</div>
	</div>
 </div>
</div>
</div>

<h1>Display Ordered Items</h1>
<div class="container">
<c:if test="${not empty placedItem}">
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:forEach var="i" items="${placedItem }">
				<div class="col">
					<div class="card h-100 skill_card">
						<!-- <img src="/assets/images/skills_logo/CSS.png" alt="${p.getName()}"
							height="50px" width="80px" /> -->
						<div class="card-body">
							<h5 class="card-title">${i.getName()}</h5>
							<h6>Quantity : ${i.quantity}</h6>
							<h6>Rs: ${i.cost}/-</h6>
						</div>
					</div>
				</div>
 <!--  <h2>${i.getName()}</h2> <h2>${i.cost}</h2>
  <h2>${i.quantity}</h2>-->
</c:forEach>
</div>
  </c:if>
<c:if test="${empty placedItem}">
  <p>No items found.</p>
</c:if>
</div>

</main>
<footer>
		<div class="nav2">
			<div class="link2">
				 <a
					href="loginuser.jsp">Conform <i
					class="bi bi-arrow-right-circle-fill"></i></a>
			</div>
		</div>
	</footer>
</body>
</html>