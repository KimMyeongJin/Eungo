<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Home page</title>
<%@include file="/include/head.jsp"%>
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<%@include file="/include/header.jsp"%>
	<!--End top header -->

	<%@include file="/include/navbar.jsp"%>
	<!-- End of nav bar -->

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Contact page 3</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area recent-property padding-top-40"
		style="background-color: #FFF;">
		<div class="container">

			<div class="col-md-9">

				<div class="" id="contact1">
					<div class="row">
						<div class="col-sm-4">
							<h3>
								<i class="fa fa-map-marker"></i> Address
							</h3>
							<p>
								13/25 New Avenue <br>New Heaven <br>45Y 73J <br>England
								<br> <strong>Great Britain</strong>
							</p>
						</div>
						<!-- /.col-sm-4 -->
						<div class="col-sm-4">
							<h3>
								<i class="fa fa-phone"></i> Call center
							</h3>
							<p class="text-muted">This number is toll free if calling
								from Great Britain otherwise we advise you to use the electronic
								form of communication.</p>
							<p>
								<strong>+33 555 444 333</strong>
							</p>
						</div>
						<!-- /.col-sm-4 -->
						<div class="col-sm-4">
							<h3>
								<i class="fa fa-envelope"></i> Electronic support
							</h3>
							<p class="text-muted">Please feel free to write an email to
								us or to use our electronic ticketing system.</p>
							<ul>
								<li><strong><a href="mailto:">info@fakeemail.com</a></strong>
								</li>
								<li><strong><a href="#">Ticketio</a></strong> - our
									ticketing support platform</li>
							</ul>
						</div>
						<!-- /.col-sm-4 -->
					</div>
					<!-- /.row -->

					<hr>
					<h2>Contact form</h2>
					<form>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label for="firstname">Firstname</label> <input type="text"
										class="form-control" id="firstname">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="lastname">Lastname</label> <input type="text"
										class="form-control" id="lastname">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="email">Email</label> <input type="text"
										class="form-control" id="email">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="subject">Subject</label> <input type="text"
										class="form-control" id="subject">
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label for="message">Message</label>
									<textarea id="message" class="form-control"></textarea>
								</div>
							</div>
							<div class="col-sm-12 text-center">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-envelope-o"></i> Send message
								</button>
							</div>
						</div>
						<!-- /.row -->
					</form>
				</div>
			</div>
			<!-- /.col-md-9 -->

			<div class="col-md-3 ">
				<div class="blog-asside-right">
					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">Recommended</h3>
						</div>
						<div class="panel-body recent-property-widget">
							<ul>
								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-2.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>
								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-1.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>
								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-3.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>

								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-2.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>

								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-2.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>

								<li>
									<div class="col-md-3 blg-thumb p0">
										<a href="single.jsp"><img
											src="assets/img/demo/small-property-2.jpg"></a> <span
											class="property-seeker"> <b class="b-1">A</b> <b
											class="b-2">S</b>
										</span>
									</div>
									<div class="col-md-8 blg-entry">
										<h6>
											<a href="single.jsp">Super nice villa </a>
										</h6>
										<span class="property-price">3000000$</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="map" style="height: 400px;"></div>
	<!-- Footer area-->
	<%@include file="/include/footer.jsp"%>

	<script src="assets/js/modernizr-2.6.2.min.js"></script>
	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>

	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>

	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/price-range.js"></script>

	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script src="assets/js/gmaps.js"></script>
	<script src="assets/js/gmaps.init.js"></script>

	<script src="assets/js/main.js"></script>

</body>
</html>