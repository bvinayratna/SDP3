<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
.movie_card {
	position: relative;
	display: block;
	width: 1300px;
	height: 450px;
	margin: auto;
	overflow: hidden;
	transition: all 0.4s;
}

.movie_card:hover {
	transform: scale(1.02);
	transition: all 0.4s;
}

.movie_card .info_section {
	position: relative;
	width: 100%;
	height: 100%;
	background-blend-mode: multiply;
	z-index: 2;
}

.movie_card .info_section .movie_header {
	position: relative;
	padding: 25px;
	height: 40%;
}

.movie_card .info_section .movie_header h1 {
	color: black;
	font-weight: 400;
}

.movie_card .info_section .movie_header h4 {
	color: #555;
	font-weight: 400;
}

.movie_card .info_section .movie_header .minutes {
	display: inline-block;
	margin-top: 15px;
	color: #555;
	padding: 5px;
	border: 1px solid rgba(0, 0, 0, 0.05);
}

.movie_card .info_section .movie_header .type {
	display: inline-block;
	color: #959595;
	margin-left: 10px;
}

.movie_card .info_section .movie_header .locandina {
	position: relative;
	float: left;
	margin-right: 20px;
	height: 120px;
	box-shadow: 0 0 20px -10px rgba(0, 0, 0, 0.5);
}

.movie_card .info_section .movie_desc {
	padding: 25px;
	height: 50%;
}

.movie_card .info_section .movie_desc .text {
	color: #545454;
}

.movie_card .info_section .movie_social {
	height: 10%;
	padding-left: 15px;
	padding-bottom: 20px;
}

.movie_card .info_section .movie_social ul {
	list-style: none;
	padding: 0;
}

.movie_card .info_section .movie_social ul li {
	display: inline-block;
	color: rgba(0, 0, 0, 0.3);
	transition: color 0.3s;
	transition-delay: 0.15s;
	margin: 0 10px;
}

.movie_card .info_section .movie_social ul li:hover {
	transition: color 0.3s;
	color: rgba(0, 0, 0, 0.7);
}

.movie_card .info_section .movie_social ul li i {
	font-size: 19px;
	cursor: pointer;
}

.movie_card .blur_back {
	position: absolute;
	top: 0;
	z-index: 1;
	height: 100%;
	right: 0;
	background-size: cover;
}

@media screen and (min-width: 768px) {
	.movie_header {
		width: 65%;
	}
	.movie_desc {
		width: 50%;
	}
	.info_section {
		background: linear-gradient(to right, #e5e6e6 50%, transparent 100%);
	}
	.blur_back {
		width: 80%;
		background-position: -100% 10% !important;
	}
}

@media screen and (max-width: 768px) {
	.movie_card {
		width: 95%;
		margin: 70px auto;
		min-height: 350px;
		height: auto;
	}
	.blur_back {
		width: 100%;
		background-position: 50% 50% !important;
	}
	.movie_header {
		width: 100%;
		margin-top: 85px;
	}
	.movie_desc {
		width: 100%;
	}
	.info_section {
		background: linear-gradient(to top, #e5e6e6 50%, transparent 100%);
		display: inline-grid;
	}
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
	<br />
	<div
		style="padding: 20px; border: 2px solid lightgray; width: 87vw; margin: auto;">
		<!-- <h1>${MOVIE.getName()}</h1>
		<img src="${MOVIE.getImage()}" alt="No image" /> <br />
		<!-- <p>Now available in <strong>${MOVIE.getLanguages()}</strong></p>
		<c:if test="${languages.size() == 0}">
			<p>
				Now available in <strong>${MOVIE.getLanguages()}</strong>
			</p>
		</c:if>
		<c:if test="${languages.size() >= 1}">
			<p>
				Now available in <strong>${languages.toString()}</strong>
			</p>
		</c:if>

		<p>${MOVIE.getPlot()}</p>-->

		<div class="movie_card" id="bright">
			<div class="info_section">
				<div class="movie_header" style="height: auto">
					<img class="locandina" src="${MOVIE.getImage()}" />
					<h1>${MOVIE.getName()}</h1>
					<h4>${MOVIE.getYear()},${MOVIE.getDirectors()}</h4>
					<span class="minutes">${MOVIE.getRuntimeStr()}</span>
					<p class="type">${MOVIE.getGenres()}</p>
				</div>
				<div>
					<br /> <small> <c:if test="${languages.size() == 0}">
							<p>
								&ensp;&ensp;&ensp;Now available in <strong>${MOVIE.getLanguages()}</strong>
							</p>
						</c:if> <c:if test="${languages.size() >= 1}">
							<p>
								&ensp;&ensp;&ensp;Now available in <strong>${languages.toString()}</strong>
							</p>
						</c:if>
					</small>
				</div>
				<div class="movie_desc">
					<p>${MOVIE.getPlot()}</p>
				</div>

				<!-- 					<div class="movie_social"> -->
				<!-- 						<ul> -->
				<!-- 							<li><i class="material-icons">share</i></li> -->
				<!-- 							<li><i class="material-icons">?</i></li> -->
				<!-- 							<li><i class="material-icons">chat_bubble</i></li> -->
				<!-- 						</ul> -->
				<!-- 					</div> -->
			</div>
			<!-- <div class="blur_back"
				style="background: url('${MOVIE.getImage()}'); background-size: 300px 500px;"></div>-->
		</div>


		<br />
		<br />
		<h4>Playing in theaters</h4>
		<c:if test="${moviesplaying.size()>=1}">
			<c:forEach items="${moviesplaying}" var="moviesplaying">
				<div class="card">
				<form method="get" action="Book">
					<div class="card-body">
						<h5>${moviesplaying.getTheater_name()}</h5>
						<h6 class="card-subtitle mb-2 text-muted">Time - ${moviesplaying.getTime()}</h6>
						<h6 class="card-subtitle mb-2 text-muted">Date - ${moviesplaying.getDate()}</h6>
						<h6 class="card-subtitle mb-2 text-muted">Language - ${moviesplaying.getLanguage()}</h6>
						<h6 class="card-subtitle mb-2 text-muted">Screen - ${moviesplaying.getScreen()}</h6>
						<!-- <p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>-->
							<input type="hidden" name="movie_name" value="${MOVIE.getName()}"/>
							<input type="hidden" name="theater_name" value="${moviesplaying.getTheater_name()}"/>
							<input type="hidden" name="theater_username" value="${moviesplaying.getAdmin_username()}"/>
							<input type="hidden" name="time" value="${moviesplaying.getTime()}" />
							<input type="hidden" name="language" value="${moviesplaying.getLanguage()}" />
							<input type="hidden" name="screen_number" value="${moviesplaying.getScreen()}" />
							<input type="hidden" name="movie_duration" value="${MOVIE.getRuntimeStr()}" />
							<input type="hidden" name="movie_date" value="${moviesplaying.getDate()}"/>
							<button class="btn btn-outline-primary btn-sm" type="submit">Book Tickets</button>
					</div>
					
				</form>
				</div>
				<br />
				<br />
			</c:forEach>
		</c:if>
		<c:if test="${moviesplaying.size()==0}">
			<small> Oops, looks like this movie is not released in any
				theater.<br />Stay tuned for more updates...
			</small>
		</c:if>

	</div><br/><br/><br/>


</body>
</html>