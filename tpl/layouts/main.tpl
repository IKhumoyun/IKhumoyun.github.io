<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">

		<title>{{ title | title }}</title>

		<!-- build:css styles/vendor.css -->
		<link rel="stylesheet" href="./libs/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="./libs/animate/animate.min.css">
		<link rel="stylesheet" href="./libs/fullpage/fullpage.min.css">
		<!-- endbuild -->

		<!-- build:css styles/main.css -->
		<link href="styles/main.css" rel="stylesheet">
		<!-- endbuild -->

	</head>
	<body>


		{% block content %} {% endblock %}


		<!-- build:js scripts/jquery.min.js -->
			<script src="scripts/jquery-3.3.1.min.js"></script>
			<!-- endbuild -->

			<!-- build:js scripts/vendor.min.js -->
			<script src="./libs/wow/wow.min.js"></script>
			<script src="./libs/fullpage/fullpage.min.js"></script>
			<script src="./libs/fullpage/fullpage.extensions.min.js"></script>
			<!-- endbuild -->

			<!-- build:js scripts/main.js -->
			<script src="scripts/main.js"></script>
			<!-- endbuild -->


	</body>
</html>