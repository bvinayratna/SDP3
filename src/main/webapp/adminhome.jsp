<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin homepage</title>
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
					<div class="my-2 my-sm-3">Welcome ${admin_username}</div>
					&ensp;&ensp;&ensp; <a class="btn btn-outline-primary my-2 my-sm-0"
						href="/logout">LOG OUT</a>
				</div>
			</div>
		</div>
	</nav>
	<br/>
	<div style="padding: 25px;margin: auto;width: 600px;border: 2px solid gray;height: 80vh;">
		<h5 class="card-title">Screens Available [<strong>${screens.size()}</strong>]</h5><br/>
		<c:if test="${screens.size() > 0}">
			<small>Select a Screen to see it's preview</small><br/><br/>
		<div style="display: inline-flex">
			<c:forEach items="${screens}" var="screen">
			<form method="get" action="ScreenPreview">
			<input type="hidden" name="screen_id" value="${admin_username}#${screen.getScreen_number()}"/>
			<button class="btn btn-outline-primary btn-sm" type="submit">Screen ${screen.getScreen_number()}</button><br/><br/>
			</form>
			&ensp;&ensp;&ensp;
		</c:forEach>
		</div>
		</c:if>
		<c:if test="${screens.size() == 0}">
		<small>Add a Screen to see it's preview</small><br/><br/></c:if>
		
		
		<p>Screen prices <br/><br/>Coming soon...</p>
	
		<a class="btn btn-primary btn-sm" href="/adminhome/playMovieOnScreen">Play a Movie</a>
		&ensp;&ensp;&ensp;
		<a class="btn btn-primary btn-sm" href="/adminhome/addNewScreen">Add a Screen</a>
		<br/><br/>
		<h3>Movies Scheduled</h3><br/>
		Coming soon...
		
	</div>
	<br/>
	
	
	
</body>
</html>