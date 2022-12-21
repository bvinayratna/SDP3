<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
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
<style>
/* body scrollbar */
body::-webkit-scrollbar {
	display: none;
}

/* width */
.movies_in_theaters_div::-webkit-scrollbar {
	width: 10px;
}

/* Track */
.movies_in_theaters_div::-webkit-scrollbar-track {
	background: #f1f1f1;
}

/* Handle */
.movies_in_theaters_div::-webkit-scrollbar-thumb {
	background: #888;
}

/* Handle on hover */
.movies_in_theaters_div::-webkit-scrollbar-thumb:hover {
	background: #555;
}
</style>
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
					<li class="nav-item"><a class="nav-link" href="/home">Home </a></li>
					<li class="nav-item"><a class="nav-link" href="#">Help & Support</a>
					</li>
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
	<div style="padding: 15px; margin-top: 7px;">
		<h4>Movies in theaters</h4>
		<div
			style="display: inline-flex; width: 100%; border: 2px solid lightgray; padding: 15px; margin-top: 5px;">

			<div style="flex: 0.3; height: auto; border-right: solid 1px lightgray;padding: 10px;">
			<h6 class="card-title">Filters</h6><br/>
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseOne"
								aria-expanded="false" aria-controls="collapseOne">
								Languages</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse"
							aria-labelledby="headingOne" data-bs-parent="#accordionExample"
							style="">
							<div class="accordion-body">
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Telugu</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Hindi</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">English</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Tamil</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Malayalam</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Kannada</a>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header" id="headingTwo">
							<button class="accordion-button collapsed" type="button"
								data-bs-toggle="collapse" data-bs-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								Genres</button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="headingTwo" data-bs-parent="#accordionExample"
							style="">
							<div class="accordion-body">
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Thriller</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Action</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Drama</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Crime</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Adventure</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Comedy</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Fantasy</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Historical</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Horror</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Mystery</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Romantic</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Sci-Fi</a>
								<a style="margin-top: 3px;" type="button" class="btn btn-primary btn-sm">Sports</a>
							</div>
						</div>
					</div><br/>
					<button class="btn btn-outline-primary btn-sm">Find Results</button>
				</div>
			</div>
			<div
				style="flex: 0.7; height: 700px; width: auto; padding: 10px; overflow-y: scroll;"
				class="movies_in_theaters_div">
				<c:forEach var="i" begin="0" end="${MOVIES.size()-1}">
					<div style="padding: 10px; display: inline-flex">
						<form method="get" action="/Movie">
							<div class="card bg-secondary mb-3" style="max-width: 19rem;">
								<img alt="No image" style="margin: auto; margin-top: 10px;"
									width="200px" height="250px" src="${MOVIES[i].getImage()}" />
								<div class="card-body" style="height: 8.5em; overflow: hidden">

									<input type="hidden" name="movie_name"
										value="${MOVIES[i].getName()}" />
									<h5 class="card-title">${MOVIES[i].getName()}</h5>
									<small>${MOVIES[i].getPlot()}</small>
								</div>
								<br />
								<button class="btn btn-primary btn-sm" type="submit">Book
									here</button>
							</div>
						</form>
					</div>
				</c:forEach>
			</div>
		</div>

		<h2>HELLO WORLD!</h2>

	</div>
</body>
</html>