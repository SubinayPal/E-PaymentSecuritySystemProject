<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="p1.*"%>

<%
Connect c1 = new Connect();

String uid = (String) session.getAttribute("uid");
UserInfo uinfo = c1.getRecord(uid);
String uname = uinfo.getUname();
String email = uinfo.getEmail();
String phno = uinfo.getContact();
String accno = uinfo.getAccno();
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>

<link
	href="https://fonts.googleapis.com/css2?family=Oswald&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<style>
.gradient {
	width: 100vw;
	height: 100vh;
	background: linear-gradient(334deg, #6b97f7, #7525e2, #f7137e);
	background-size: 180% 180%;
	animation: gradient-animation 6s ease infinite;
}

@keyframes gradient-animation {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}

</style>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Lato', sans-serif;
	font-family: 'Oswald', sans-serif;
}

.wrapper {
	position: fixed;
	top: 0;
	/*left: -100%;*/
	right: -100%;
	height: 100%;
	width: 100%;
	background: #000;
	/*background: linear-gradient(90deg, #f92c78, #4114a1);*/
	/* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
	/* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%);*/
	transition: all 0.6s ease-in-out;
}

#active:checked ~ .wrapper {
	/*left: 0;*/
	right: 0;
}

.menu-btn {
	position: absolute;
	z-index: 2;
	right: 20px;
	/*left: 20px; */
	top: 20px;
	height: 50px;
	width: 50px;
	text-align: center;
	line-height: 50px;
	border-radius: 50%;
	font-size: 20px;
	cursor: pointer;
	/*color: #fff;*/
	/*background: linear-gradient(90deg, #f92c78, #4114a1);*/
	/* background: linear-gradient(375deg, #1cc7d0, #2ede98); */
	/* background: linear-gradient(-45deg, #e3eefe 0%, #efddfb 100%); */
	transition: all 0.3s ease-in-out;
}

.menu-btn span, .menu-btn:before, .menu-btn:after {
	content: "";
	position: absolute;
	top: calc(50% - 1px);
	left: 30%;
	width: 40%;
	border-bottom: 2px solid #000;
	transition: transform .6s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.menu-btn:before {
	transform: translateY(-8px);
}

.menu-btn:after {
	transform: translateY(8px);
}

.close {
	z-index: 1;
	width: 100%;
	height: 100%;
	pointer-events: none;
	transition: background .6s;
}

/* closing animation */
#active:checked+.menu-btn span {
	transform: scaleX(0);
}

#active:checked+.menu-btn:before {
	transform: rotate(45deg);
	border-color: #fff;
}

#active:checked+.menu-btn:after {
	transform: rotate(-45deg);
	border-color: #fff;
}

.wrapper ul {
	position: absolute;
	top: 60%;
	left: 50%;
	height: 90%;
	transform: translate(-50%, -50%);
	list-style: none;
	text-align: center;
}

.wrapper ul li {
	height: 10%;
	margin: 15px 0;
}

.wrapper ul li a {
	text-decoration: none;
	font-size: 40px;
	font-weight: 500;
	padding: 5px 30px;
	color: #fff;
	border-radius: 50px;
	position: absolute;
	line-height: 50px;
	margin: 5px 30px;
	opacity: 0;
	transition: all 0.3s ease;
	transition: transform .6s cubic-bezier(0.215, 0.61, 0.355, 1);
}

.wrapper ul li a:after {
	position: absolute;
	content: "";
	background: #fff;
	/*background: linear-gradient(#14ffe9, #ffeb3b, #ff00e0);*/
	/*background: linear-gradient(375deg, #1cc7d0, #2ede98);*/
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	border-radius: 50px;
	transform: scaleY(0);
	z-index: -1;
	transition: transform 0.3s ease;
}

.wrapper ul li a:hover:after {
	transform: scaleY(1);
}

.wrapper ul li a:hover {
	color: #1a73e8;
}

input[type="checkbox"] {
	display: none;
}

.content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: -1;
	text-align: center;
	width: 100%;
	color: #202020;
}

.content .title {
	font-size: 40px;
	font-weight: 700;
}

.content p {
	font-size: 35px;
	font-weight: 600;
}

#active:checked ~ .wrapper ul li a {
	opacity: 1;
}

.wrapper ul li a {
	transition: opacity 1.2s, transform 1.2s
		cubic-bezier(0.215, 0.61, 0.355, 1);
	transform: translateX(100px);
}

#active:checked ~ .wrapper ul li a {
	transform: none;
	transition-timing-function: ease, cubic-bezier(.1, 1.3, .3, 1);
	transition-delay: .6s;
	transform: translateX(-100px);
}
</style>



<style>
.card {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  max-width: 700px;
  background-color: #fff;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  margin: auto;
  list-style: none;
}

.card__content {
  text-align: center;
}

.card__title {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

.card__text {
  font-size: 16px;
  margin-bottom: 5px;
}

/* Responsive Styles */
@media (max-width: 600px) {
  .card {
    max-width: 100%;
  }
}
	
</style>



</head>
<body>

	<input type="checkbox" id="active">
	<label for="active" class="menu-btn"><span></span></label>
	<label for="active" class="close"></label>
	<div class="wrapper">
		<ul>
			<li><a href="editProfile.jsp">Edit</a></li>
			<li><a href="updateProfile.jsp">Update</a></li>
			<li><a href="transaction.jsp">Transaction</a></li>
			<li><a href="contactUs.jsp">Contact Us</a></li>
			<li><a href="#"></a></li>
			<!-- <li><a href="#">Feedback</a></li> -->
		</ul>
	</div>

	<div class="content">
		<div class="title">
		<div class="gradient">
			<section>
				<script src="https://cdn.lordicon.com/qjzruarw.js"></script>
				<lord-icon src="https://cdn.lordicon.com/bhfjfgqz.json"
					trigger="loop" delay="2500" colors="primary:#121331" state="intro"
					style="width:250px;height:250px"> </lord-icon>
				<br />


				<ul class="cards">
					<li class="cards__item">
						<div class="card">
							<div class="card__image card__image--fence"></div>
							<div class="card__content">
								<div class="card__title">
									Name Of The User :
									<%=uname%></div>
								<p class="card__text">
									Account Number :
									<%=accno%></p>
								<p class="card__text">
									Phone Number :
									<%=phno%></p>
								<p class="card__text">
									Email :
									<%=email%></p>
								<!-- <button class="btn btn--block card__btn">Button</button> -->
							</div>
						</div>
					</li>
				</ul>
			</section>
			</div>
		</div>
	</div>

</body>
</html>