<!DOCTYPE html>
<html>

<head>
<title>CarRental</title>
<link rel="icon" href="resources/logo.png" />

<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />

<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js"
	integrity="sha512-rpLlll167T5LJHwp0waJCh3ZRf7pO6IT1+LZOhAyP6phAirwchClbTZV3iqL3BMrVxIYRbzGTpli4rfxsCK6Vw=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Lightbox CSS & Script -->
<script src="resources/lightbox/ekko-lightbox.js"></script>
<link rel="stylesheet" href="resources/lightbox/ekko-lightbox.css" />

<!-- AOS CSS & Script -->
<script src="resources/aos/aos.js"></script>
<link rel="stylesheet" href="resources/aos/aos.css" />

<!-- custom css -->
<link rel="stylesheet" href="resources/custom.css">

<meta name="author" content="" />
<meta name="description" content="This is a website for Car Rental." />
<meta name="keywords" content="" />
</head>

<body>

	<%
	String msg = (String) session.getAttribute("msg");
	if (msg != null) {
	%>
	<p class="p-2 bg-warning text-center">
		<%=msg%>
	</p>
	<%
	session.setAttribute("msg", null);
	}
	%>

	<nav class="navbar navbar-expand-sm container my-3">
		<a href="index.jsp" class="navbar-brand"> <img
			src="resources/logo.png" height="35px" alt=""> <span>CarRental</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#my-navbar">
			<i class="fa-solid fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="my-navbar">
			<ul class="navbar-nav mx-auto p-2">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="" data-toggle="modal" data-target="#AdminModal">Admin</a>
				</li>
				<li><a href="CarOwner.jsp">CarOwner</a></li>
				<li><a href="User.jsp">User</a></li>
				<li><a href="" data-toggle="modal" data-target="#myModal">Get
						In Touch</a></li>
			</ul>
			<a id="call" href="tel:9811XXXXXX"><i
				class="fa-solid fa-mobile-screen-button"></i>8755449148</a>
		</div>
	</nav>
	<section class="container my-4">
		<div class="row">
			<div class="col-sm my-4 p-4 bg-info">
				<h4>User SignIn</h4>
				<form action="UserLogin" method="post">
					<input class="form-control my-2" type="email" name="email"
						placeholder="Your Email"
						required />
					<input class="form-control my-2" type="password" name="password"
						placeholder="Your Password" required />
					<button class="btn btn-primary  my-2">Login</button>
				</form>
			</div>
			<div class="col-sm my-4 p-4 bg-warning">
				<h4>User SignUp</h4>
				<form action="RegisterUser" method="post">
					<input class="form-control my-2" type="email" name="email"
						placeholder="Your Email"
						required />
					<input class="form-control my-2" type="text" name="name"
						pattern="[a-zA-Z ]+" maxlength="20" placeholder="Your Name"
						required />
					<input class="form-control my-2" type="tel" name="phone"
						pattern="[0-9]+" maxlength="10" minlength="10"
						placeholder="Your Phone"
						required />
					<textarea rows="3" class="form-control my-2" name="address"
						maxlength="300" placeholder="Your Address"
						required ></textarea>
					<input class="form-control my-2" type="password" name="password"
						placeholder="Your Password" required />
					<button class="btn btn-primary  my-2">SignUp</button>
				</form>
				<hr/>
				<form action="VerifyOTP" method="post" >
					<input class="form-control my-2" type="email" name="email"
						placeholder="Your Email"
						required />
					<input class="form-control my-2" type="number" name="otp"
						placeholder="Your OTP"
						required />
					<button class="btn btn-dark  my-2">Verify OTP</button>
				</form>
			</div>
		</div>
	</section>
	<footer class="bg-dark p-5 text-center">
		<a href="index.jsp"> <img src="resources/logo.png" height="30px"
			alt=""> <span>CarRental</span>
		</a> <br />
		<p>&copy Rights Reserved</p>
		<p>
	  <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
      <a href="#"><i class="fa-brands fa-instagram"></i></a>		</p>
	</footer>
	<label id="top-button"><i class="fa-solid fa-circle-up fa-2x"></i></label>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-light">
					<h5 class="modal-title" id="exampleModalLabel">Get In Touch</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="AddEnquiry" method="post">
						<div class="row">
							<div class="col-sm mt-2">
								<input class="form-control" type="text" name="name"
									pattern="[a-zA-Z ]+" maxlength="20" placeholder="Your Name"
									required />
							</div>
							<div class="col-sm mt-2">
								<input class="form-control" type="tel" name="phone"
									pattern="[0-9]+" maxlength="10" minlength="10"
									placeholder="Your Phone" required />
							</div>
							<div class="col-sm mt-2">
								<button class="btn btn-primary">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="AdminModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-success">
					<h5 class="modal-title text-white" id="exampleModalLabel">Admin
						Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="AdminLogin" method="post">
						<div class="row">
							<div class="col-sm mt-2">
								<input class="form-control" type="text" name="id" maxlength="20"
									placeholder="Admin ID" required />
							</div>
							<div class="col-sm mt-2">
								<input class="form-control" type="password" name="password"
									maxlength="20" placeholder="Password" required />
							</div>
							<div class="col-sm mt-2">
								<button class="btn btn-primary">Login</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	AOS.init();
	//script for scroll to top
	$("#top-button").click(function() {
		$("html, body").animate({
			scrollTop : 0
		}, 1000);
	});
	//script for light box
	$(document).on('click', '[data-toggle="lightbox"]', function(event) {
		event.preventDefault();
		$(this).ekkoLightbox();
	});
</script>
</script>

</html>