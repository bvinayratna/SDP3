<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
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
					<li class="nav-item"><a class="nav-link" href="/home">Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Help &
							Support</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>
				<div class="d-flex">
					<div class="my-2 my-sm-3">Welcome ${username}</div>
					&ensp;&ensp;&ensp; <a class="btn btn-outline-primary my-2 my-sm-0"
						href="/logout">LOG OUT</a>
				</div>
			</div>
		</div>
	</nav>
	<br/>
	<div style="padding: 15px;">
		<h1>BOOKING SUCCESSFUL...</h1>
		<small>Enjoy your movie...</small>
	</div>
</body>
</html>