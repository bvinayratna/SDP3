<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book tickets</title>
<style>
/* The container */
.container {
	display: block;
	position: relative;
	padding-left: 35px;
	margin-bottom: 12px;
	cursor: pointer;
	font-size: 22px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
	position: absolute;
	opacity: 0;
	cursor: pointer;
	height: 0;
	width: 0;
}

/* Create a custom checkbox */
.checkmark {
	position: absolute;
	top: 0;
	left: 0;
	height: 20px;
	width: 20px;
	border: 1px solid gray;
	border-radius: 3px;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
	background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
	background-color: gray;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
	content: "";
	position: absolute;
	display: none;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
	left: 9px;
	top: 5px;
	width: 5px;
	height: 10px;
	border: solid white;
	border-width: 0 3px 3px 0;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}

.custom_background_seat {
	margin-right: 3px;
}
</style>
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
	<div style="padding: 15px;">
		<h5 style="width: auto; border: 1px solid lightgray; padding: 15px;">${movie_name}&ensp;&ensp;|&ensp;
			${movie_duration}&ensp;&ensp;|&ensp; ${movie_date}&ensp;&ensp;|&ensp;
			${time}</h5>
		<div
			style="text-align: center; padding: 25px; width: 70em;; height: auto; margin: auto; border: 1px solid lightgray;">
			<!-- <img src="" alt="Screen_Image" /> <br /><br/> -->
			<div style="width: auto; height: 7px; background-color: skyblue;">SCREEN
				THIS WAY</div>
			<br /> <br /> <small
				style="float: left; border: 1px solid gray; padding: 15px;">Screen
				${screen_id}<br />Rows ${TotalRows}<br />Seats ${TotalSeats}
			</small> <br />
			<form method="get" action="bookseats">
			<input type="hidden" name="username" value="${username}"/>
			<input type="hidden" name="movie_name" value="${movie_name}"/>
			<input type="hidden" name="time" value="${time}"/>
			<input type="hidden" name="language" value="${language}"/>
			<input type="hidden" name="screen_number" value="${screen_number}"/>
			<input type="hidden" name="theater_username" value="${theater_username}"/>
			<input type="hidden" name="movie_date" value="${movie_date}"/>
			
				<button class="btn btn-outline-primary btn-sm" type="submit"
					style="float: right;">Book Tickets</button>
				<br /> <br /> <br /> <br />

				<c:forEach var="i" begin="0" end="${TotalRows}">
					<div style="display: inline-flex; width: auto;">
						<p>&#${i + 65}&ensp;&ensp;</p>
						<c:forEach var="j" begin="0" end="${TotalColumns}">
							<div class="custom_background_seat">
								<label class="container"> <input type="checkbox"
									name="seat_" value="${i}|${j}" /> <span class="checkmark"></span>
								</label>
							</div>
							<c:if test="${j == HALFSEATS}">
								&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
							</c:if>
						</c:forEach>
					</div>
				</c:forEach>
			</form>
			<div style="display: inline-flex; width: auto;">
				<p>&ensp;&ensp;&ensp;</p>
				<c:forEach var="j" begin="0" end="${TotalColumns}">
					<div class="custom_background_seat">
						<label class="container"> <span class="checkmark"
							style="font-size: 15px; border: none;">${j + 1}</span>
						</label>
					</div>
					<c:if test="${j == HALFSEATS}">
						&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>