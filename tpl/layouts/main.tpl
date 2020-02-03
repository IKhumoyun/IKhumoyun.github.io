<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{{ title | title }}</title>
	
	<!-- build:css styles/vendor.css -->
	<link href="./styles/bootstrap-grid.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./libs/owl/owl.carousel.css">
	<!-- endbuild -->

	<!-- build:css styles/main.css -->
	<link href="styles/main.css" rel="stylesheet">
	<!-- endbuild -->

</head>
<body>
	<div class="overlay"></div>

	<div class="side-menu">
		<img src="../../images/icons/close.svg" alt="" id="close-button">
		<div class="items-holder">
			<a href="#" class="menu-item">Home</a>
			<a href="#" class="menu-item">FAQ</a>
			<a href="#" class="menu-item">Ambassadors</a>
			<a href="#" class="menu-item">Our team</a>
			<a href="#" class="menu-item">Contact us</a>
		</div>
		<img src="../../images/icons/leaves.svg" alt="" class="leaves">
	</div>

	<header class="scrolled">
		<div class="container">
			<div class="left-side">
				<img src="../../images/icons/burger.svg" alt="" id="burger">
			</div>
			<div class="middle-side">
				<a href="#" class="header-links">Home</a>
				<a href="#" class="header-links">Greening Initiative</a>
				<a href="#" class="header-links">Aral Sea Tragedy</a>
			</div>
			<div class="right-side">
				<a href="#" class="plant">USD</a>
				<a href="#" class="plant">UZS</a>
			</div>
		</div>
	</header>

	{% block content %} {% endblock %}

	<footer>
		<div class="container">
			<div class="left-side">
				<div class="logo-holder">
					<img src="../../images/undp.svg" alt="">
					<a href="#" class="hashtag">#AcceleratorLab</a>
				</div>
				<div class="partners-holder">
					<h4 class="partners-title">Our partners</h4>
					<div class="inner">
						<div class="partner-item">
							<div class="partner-image">
								<img src="" alt="">
							</div>
							<span class="partner-name">Logo 1</span>
						</div>
						<div class="partner-item">
							<div class="partner-image">
								<img src="" alt="">
							</div>
							<span class="partner-name">Logo 2</span>
						</div>
						<div class="partner-item">
							<div class="partner-image">
								<img src="" alt="">
							</div>
							<span class="partner-name">Logo 3</span>
						</div>
						<div class="partner-item">
							<div class="partner-image">
								<img src="" alt="">
							</div>
							<span class="partner-name">Logo 4</span>
						</div>
						<div class="partner-item">
							<div class="partner-image">
								<img src="" alt="">
							</div>
							<span class="partner-name">Logo 5</span>
						</div>
					</div>
				</div>
			</div>
			<div class="right-side">
				<div class="navigation">
					<a href="#" class="navigation-item">FAQ</a>
					<a href="#" class="navigation-item">Aral Sea Certificate</a>
					<a href="#" class="navigation-item">UNDP Accelerator Lab</a>
					<a href="#" class="navigation-item">Contact us</a>
				</div>
				<div class="social">
					<a href="#" class="social-item">
						<img src="../../images/icons/facebook.svg" alt="">
					</a>
					<a href="#" class="social-item">
						<img src="../../images/icons/twitter.svg" alt="">
					</a>
					<a href="#" class="social-item">
						<img src="../../images/icons/instagram.svg" alt="">
					</a>
				</div>
			</div>
		</div>
	</footer>

	<!-- build:js scripts/jquery.min.js -->
	<script src="./libs/jquery/jquery.min.js"></script>
	<!-- endbuild -->

	<!-- build:js scripts/vendor.min.js -->
	<script src="./libs/owl/owl.carousel.min.js"></script>
	<!-- endbuild -->

	<!-- build:js scripts/main.js -->
	<script src="scripts/main.js"></script>
	<!-- endbuild -->

</body>
</html>