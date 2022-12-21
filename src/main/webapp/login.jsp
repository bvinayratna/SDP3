<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/_bootstrap.scss">
<link rel="stylesheet" type="text/css" href="css/_variables.scss">
<script src="https://bootswatch.com/_assets/js/custom.js"></script>
<script src="https://bootswatch.com/_vendor/prismjs/prism.js"></script>
<script
	src="https://bootswatch.com/_vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://bootswatch.com/_vendor/bootstrap/js/index.umd.js"></script>
<script
	src="https://bootswatch.com/_vendor/bootstrap/node_modules/@popperjs/core/lib/popper.js"></script>
<script src="https://www.google-analytics.com/analytics.js"></script>
<style>
#image {
	width: 90px;
	font-weight: 400;
	height: 40px;
	user-select: none;
	text-decoration: line-through;
	text-align: center;
	font-style: italic;
	font-size: x-large;
	background: linear-gradient(to right, gray, transparent),
		url(https://grainy-gradients.vercel.app/noise.svg);
	filter: contrast(170%) brightness(60%);
}

input {
	border: 1px black solid;
}

.inline {
	display: inline-block;
}
</style>
</head>
<body onload="generate()">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">BOOK TICKET</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor03"
				aria-controls="navbarColor03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="/home">Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Help &
							Support</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>
				<div class="d-flex">
					<a class="btn btn-primary my-2 my-sm-0" href="/login">LOGIN</a>
				</div>
			</div>
		</div>
	</nav>
	<br />
	<br />
	<div
		style="margin: auto; width: 450px; border: solid 2px gray; padding: 25px;">
		<form method="post" action="checkuserlogin">
			<fieldset>
				<legend>Login here</legend>

				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">Username</label>
					<input type="text" class="form-control" name="username"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter Username">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="form-label mt-4">Password</label>
					<input type="password" name="password" class="form-control"
						id="exampleInputPassword1" placeholder="Password">
				</div>
			</fieldset>
			<br />
			<div id="user-input" class="inline">
				<input class="form-control" onchange="printmsg()" type="text" id="submit"
					placeholder="Captcha code" />
			</div>

			<div class="inline" onclick="generate()">
				<i class="fas fa-sync"></i>
			</div>

			<div id="image" class="inline" selectable="False"></div>

			<p id="key"></p>
			<button disabled type="submit" id="login_button" class="btn btn-primary">Login</button>
		</form>
		<!-- <button type="submit" class="btn btn-outline-primary btn-sm"
			onclick="printmsg()">VERIFY</button> -->
		<br /> <small>Don't have an account? <a
			class="btn btn-primary btn-sm" href="/register">Register</a></small><br /> <small>Admin?
			<a class="btn btn-primary btn-sm" href="/adminlogin">Admin</a>
		</small> <label id="msg"></label>
	</div>


</body>
<script type="text/javascript">
	var captcha;
	function generate() {

		// Clear old input
		document.getElementById("submit").value = "";

		// Access the element to store
		// the generated captcha
		captcha = document.getElementById("image");
		var uniquechar = "";

		const randomchar = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

		// Generate captcha for length of
		// 5 with random character
		for (let i = 1; i < 6; i++) {
			uniquechar += randomchar.charAt(Math.random() * randomchar.length)
		}

		// Store generated input
		captcha.innerHTML = uniquechar;
	}

	function printmsg() {
		const usr_input = document.getElementById("submit").value;

		// Check whether the input is equal
		// to generated captcha or not
		if (usr_input == captcha.innerHTML) {
			var s = document.getElementById("key").innerHTML = "Matched";
			var login_btn = document.getElementById("login_button");
			login_btn.disabled = false;
		} else {
			var s = document.getElementById("key").innerHTML = "Invalid";
		}
	}
</script>
</html>