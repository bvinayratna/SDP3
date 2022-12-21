<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/_bootstrap.scss">
<link rel="stylesheet" type="text/css" href="/	css/_variables.scss">
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
					<div class="my-2 my-sm-3">Welcome ${admin_username}</div>
					&ensp;&ensp;&ensp; <a class="btn btn-outline-primary my-2 my-sm-0"
						href="/logout">LOG OUT</a>
				</div>
			</div>
		</div>
	</nav>

	<h2>Add a Movie for play</h2>
	<form method="post" action="addToScreen" modelAttribute="moviesplaying">
		<input type="hidden" name="play_id" value="" /> <input type="hidden"
			name="admin_username" value="${admin_username}" />
		<p>
			Screen :
			<c:forEach items="${screens}" var="screen">
				<input type="radio" name="screen"
					value="${screen.getScreen_number()}" />
				<label>Screen ${screen.getScreen_number()}</label>
				&ensp;&ensp;
			</c:forEach>
		</p>

		<p>
			<label for="movie_name">Choose a Movie : </label> <select
				name="movie_name" id="movie_name">
				<optgroup label="Movies">
					<c:forEach items="${movies}" var="movie">

						<option value="${movie.getName()}">${movie.getName()}</option>
					</c:forEach>
				</optgroup>
			</select>
		</p>

		<p>
			Choose a language : <input type="radio" name="language"
				value="Telugu" /> <label>Telugu</label><br />
			&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
			<input type="radio" name="language" value="Hindi" /> <label>Hindi</label><br />
			&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
			<input type="radio" name="language" value="English" /> <label>English</label><br />
			&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
			<input type="radio" name="language" value="Tamil" /> <label>Tamil</label><br />
			&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
			<input type="radio" name="language" value="Malayalam" /> <label>Malayalam</label><br />
			&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
			<input type="radio" name="language" value="Kannada" /> <label>Kannada</label><br />
		</p>

		<p>
			Choose a Date : <input type="date" name="date" />
		</p>

		<p>
			Choose time : <input type="time" name="time" />
		</p>

		<button type="submit">Add to play Intheaters</button>
	</form>
	<br />

	<c:out value="${MESSAGE}" />


</body>
</html>