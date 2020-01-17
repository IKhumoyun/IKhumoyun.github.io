<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{{ title | title }}</title>
	<!-- build:css styles/main.css -->
	<link href="styles/main.css" rel="stylesheet">
	<link href="../../styles/bootstrap-grid.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../../libs/lightbox/css/lightgallery.min.css">
	<!-- endbuild -->
</head>
<body>

	<div class="container">
		<header>
			<div class="left-side">
				<a href="#" class="header-links">Home</a>
				<a href="#" class="header-links">Greening Initiative</a>
				<a href="#" class="header-links">Aral Sea Tragedy</a>
				<a href="#" class="header-links">Ambassadors</a>
			</div>
			<div class="right-side">
				<a href="#" class="plant">Plant a tree</a>
			</div>
		</header>
	</div>

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

	<!-- build:css scripts/main1.js -->
	<script src="../../libs/jquery/jquery.min.js"></script>
	<script src="../../libs/lightbox/js/lightgallery.min.js"></script>
	<script src="../../scripts/main.js"></script>
	<!-- endbuild -->

</body>
</html>