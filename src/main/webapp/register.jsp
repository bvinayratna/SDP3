<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" >
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="css/_bootstrap.scss" >
<link rel="stylesheet" type="text/css" href="css/_variables.scss" >
<script src="https://bootswatch.com/_assets/js/custom.js"></script>
<script src="https://bootswatch.com/_vendor/prismjs/prism.js"></script>
<script src="https://bootswatch.com/_vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://bootswatch.com/_vendor/bootstrap/js/index.umd.js"></script>
<script src="https://bootswatch.com/_vendor/bootstrap/node_modules/@popperjs/core/lib/popper.js"></script>
<script src="https://www.google-analytics.com/analytics.js"></script>
</head>
<style>
::-webkit-scrollbar {
	width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
	background: #f1f1f1;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #888;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #555;
}
</style>
<body>

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
					<a class="btn btn-primary my-2 my-sm-0" href="/login">LOGIN</a>
				</div>
			</div>
		</div>
	</nav>
	<c:out value="${MESSAGE}" />
	
	<div style="margin: auto; width: 600px;border: solid 2px gray; padding: 25px; margin-top: 10px;">
		<form method="post" modelAttribute="user" action="addUser">
			<fieldset>
				<legend>Register here</legend>
	
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">Username</label>
					<input type="text" class="form-control" name="username"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter username"> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">Name</label>
					<input type="text" class="form-control" name="name"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter Full Name"> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">Contact No</label>
					<input type="number" class="form-control" name="contactno"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter Contact number "> 
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1" class="form-label mt-4">Email</label>
					<input type="text" class="form-control" name="emailid"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						placeholder="Enter email"> 
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="form-label mt-4">Password</label>
					<input type="password" name="password" class="form-control"
						id="exampleInputPassword1" placeholder="Password">
				</div>
			</fieldset>
			<br/>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		<small>Already have an account? <a class="btn btn-primary btn-sm" href="/login">Login</a></small><br/>
	</div>
	<br/>
	<br/>
	<br/>

</body>
</html>