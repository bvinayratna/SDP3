<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="css/_bootstrap.scss" >
<link rel="stylesheet" type="text/css" href="css/_variables.scss" >
</head>
<body>
	<!-- <p>
		Already have an account? <a href="/login">Login here</a>
	</p>
	<p>
		Are you an Admin? <a href="/adminlogin">Admin Login</a>
	</p>
	<p>
		No Account? <a href="/register">Register here</a>
	</p> -->

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
					<li class="nav-item"><a class="nav-link" href="/home">Home </a></li>
					<li class="nav-item"><a class="nav-link" href="#">Help & Support</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>
				<div class="d-flex">
					<a class="btn btn-outline-primary my-2 my-sm-0" href="/login">LOGIN</a>
				</div>
			</div>
		</div>
	</nav>


</body>
</html>