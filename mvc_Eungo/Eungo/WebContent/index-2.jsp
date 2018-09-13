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
<noscript>
	<link rel="stylesheet" type="text/css" href="assets/css/styleNoJS.css" />
</noscript>
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

	<div class="slide-2">
		<div id="slider" class="sl-slider-wrapper">
			<div class="sl-slider">
				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="-25" data-slice2-rotation="-25"
					data-slice1-scale="2" data-slice2-scale="2">
					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/1.jpg);"></div>
						<blockquote>
							<cite><a href="property.jsp">Ralph Waldo villa</a></cite>
							<p>You have just dined, and however scrupulously the
								slaughterhouse is concealed in the graceful distance of miles,
								there is complicity.</p>
							<span class="pull-left"><b> Area :</b> 120m </span> <span
								class="proerty-price pull-right"> $ 300,000</span>
							<div class="property-icon">
								<img src="assets/img/icon/bed.png">(5)| <img
									src="assets/img/icon/shawer.png">(2)| <img
									src="assets/img/icon/cars.png">(1)
							</div>
						</blockquote>
					</div>
				</div>

				<div class="sl-slide" data-orientation="vertical"
					data-slice1-rotation="10" data-slice2-rotation="-15"
					data-slice1-scale="1.5" data-slice2-scale="1.5">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/1.jpg);"></div>
						<blockquote>
							<cite><a href="property.jsp">Kyoto hows villa</a></cite>
							<p>You have just dined, and however scrupulously the
								slaughterhouse is concealed in the graceful distance of miles,
								there is complicity.</p>
							<span class="pull-left"><b> Area :</b> 120m </span> <span
								class="proerty-price pull-right"> $ 250,000</span>
							<div class="property-icon">
								<img src="assets/img/icon/bed.png">(5)| <img
									src="assets/img/icon/shawer.png">(2)| <img
									src="assets/img/icon/cars.png">(1)
							</div>
						</blockquote>
					</div>
				</div>

				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="3" data-slice2-rotation="3"
					data-slice1-scale="2" data-slice2-scale="1">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/1.jpg);"></div>
						<blockquote>
							<cite><a href="property.jsp">New Waldo villa</a></cite>
							<p>You have just dined, and however scrupulously the
								slaughterhouse is concealed in the graceful distance of miles,
								there is complicity.</p>
							<span class="pull-left"><b> Area :</b> 120m </span> <span
								class="proerty-price pull-right"> $ 360,000</span>
							<div class="property-icon">
								<img src="assets/img/icon/bed.png">(5)| <img
									src="assets/img/icon/shawer.png">(2)| <img
									src="assets/img/icon/cars.png">(1)
							</div>
						</blockquote>
					</div>
				</div>


				<div class="sl-slide" data-orientation="horizontal"
					data-slice1-rotation="-5" data-slice2-rotation="10"
					data-slice1-scale="2" data-slice2-scale="1">

					<div class="sl-slide-inner ">

						<div class="bg-img bg-img-1"
							style="background-image: url(assets/img/slide2/1.jpg);"></div>
						<blockquote>
							<cite><a href="property.jsp">New Waldo villa</a></cite>
							<p>You have just dined, and however scrupulously the
								slaughterhouse is concealed in the graceful distance of miles,
								there is complicity.</p>
							<span class="pull-left"><b> Area :</b> 120m </span> <span
								class="proerty-price pull-right"> $ 360,000</span>
							<div class="property-icon">
								<img src="assets/img/icon/bed.png">(5)| <img
									src="assets/img/icon/shawer.png">(2)| <img
									src="assets/img/icon/cars.png">(1)
							</div>
						</blockquote>
					</div>
				</div>
			</div>
			<!-- /sl-slider -->

			<nav id="nav-dots" class="nav-dots">
				<span class="nav-dot-current"></span> <span></span> <span></span> <span></span>
			</nav>
		</div>
		<!-- /slider-wrapper -->
	</div>

	<!-- property area -->
	<div class="content-area recent-property"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>Top submitted property</h2>
					<p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
						nec pretium. Nullam sed arcu ultricies .</p>
				</div>
			</div>

			<div class="row">
				<div class="proerty-th">
					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.jsp"><img
									src="assets/img/demo/property-6.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-2.jsp"><img
									src="assets/img/demo/property-2.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-2.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-3.jsp"><img
									src="assets/img/demo/property-5.jpg"></a>

							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-3.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.jsp"><img
									src="assets/img/demo/property-4.jpg"></a>

							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>


					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-3.jsp"><img
									src="assets/img/demo/property-5.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-3.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-2.jsp"><img
									src="assets/img/demo/property-3.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-2.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a href="property-1.jsp"><img
									src="assets/img/demo/property-6.jpg"></a>
							</div>
							<div class="item-entry overflow">
								<h5>
									<a href="property-1.jsp">Super nice villa </a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"><b>Area :</b> 120m </span> <span
									class="proerty-price pull-right">$ 300,000</span>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3 p0">
						<div class="box-tree more-proerty text-center">
							<div class="item-tree-icon">
								<i class="fa fa-th"></i>
							</div>
							<div class="more-entry overflow">
								<h5>
									<a href="property-1.jsp">CAN'T DECIDE ? </a>
								</h5>
								<h5 class="tree-sub-ttl">Show all properties</h5>
								<button class="btn border-btn more-black" value="All properties">All
									properties</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<!--Welcome area -->
	<div class="Welcome-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 Welcome-entry  col-sm-12">
					<div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
						<div class="welcome_text wow fadeInLeft" data-wow-delay="0.3s"
							data-wow-offset="100">
							<div class="row">
								<div
									class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
									<!-- /.feature title -->
									<h2>GARO ESTATE</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5 col-sm-6 col-xs-12">
						<div class="welcome_services wow fadeInRight"
							data-wow-delay="0.3s" data-wow-offset="100">
							<div class="row">
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate">
										<div class="welcome-icon">
											<i class="pe-7s-home pe-4x"></i>
										</div>
										<h3>Any property</h3>
									</div>
								</div>
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate">
										<div class="welcome-icon">
											<i class="pe-7s-users pe-4x"></i>
										</div>
										<h3>More Clients</h3>
									</div>
								</div>


								<div class="col-xs-12 text-center">
									<i class="welcome-circle"></i>
								</div>

								<div class="col-xs-6 m-padding">
									<div class="welcome-estate">
										<div class="welcome-icon">
											<i class="pe-7s-notebook pe-4x"></i>
										</div>
										<h3>Easy to use</h3>
									</div>
								</div>
								<div class="col-xs-6 m-padding">
									<div class="welcome-estate">
										<div class="welcome-icon">
											<i class="pe-7s-help2 pe-4x"></i>
										</div>
										<h3>Any help</h3>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--TESTIMONIALS -->
	<div class="testimonial-area recent-property"
		style="background-color: #FCFCFC; padding-bottom: 15px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>Our Customers Said</h2>
				</div>
			</div>

			<div class="row">
				<div class="row testimonial">
					<div class="col-md-12">
						<div id="testimonial-slider">
							<div class="item">
								<div class="client-text">
									<p>Nulla quis dapibus nisl. Suspendisse llam sed arcu
										ultried arcu ultricies !</p>
									<h4>
										<strong>Ohidul Islam, </strong><i>Web Designer</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="assets/img/client-face1.png" alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>Nulla quis dapibus nisl. Suspendisse llam sed arcu
										ultried arcu ultricies !</p>
									<h4>
										<strong>Ohidul Islam, </strong><i>Web Designer</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="assets/img/client-face2.png" alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>Nulla quis dapibus nisl. Suspendisse llam sed arcu
										ultried arcu ultricies !</p>
									<h4>
										<strong>Ohidul Islam, </strong><i>Web Designer</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="assets/img/client-face1.png" alt="">
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>Nulla quis dapibus nisl. Suspendisse llam sed arcu
										ultried arcu ultricies !</p>
									<h4>
										<strong>Ohidul Islam, </strong><i>Web Designer</i>
									</h4>
								</div>
								<div class="client-face">
									<img src="assets/img/client-face2.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Count area -->
	<div class="count-area">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>You can trust Us</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-xs-12 percent-blocks m-main"
					data-waypoint-scroll="true">
					<div class="row">
						<div class="col-sm-3 col-xs-6">
							<div class="count-item">
								<div class="count-item-circle">
									<span class="pe-7s-users"></span>
								</div>
								<div class="chart" data-percent="5000">
									<h2 class="percent" id="counter">0</h2>
									<h5>HAPPY CUSTOMER</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item">
								<div class="count-item-circle">
									<span class="pe-7s-home"></span>
								</div>
								<div class="chart" data-percent="12000">
									<h2 class="percent" id="counter1">0</h2>
									<h5>Properties in stock</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item">
								<div class="count-item-circle">
									<span class="pe-7s-flag"></span>
								</div>
								<div class="chart" data-percent="120">
									<h2 class="percent" id="counter2">0</h2>
									<h5>City registered</h5>
								</div>
							</div>
						</div>
						<div class="col-sm-3 col-xs-6">
							<div class="count-item">
								<div class="count-item-circle">
									<span class="pe-7s-graph2"></span>
								</div>
								<div class="chart" data-percent="5000">
									<h2 class="percent" id="counter3">5000</h2>
									<h5>DEALER BRANCHES</h5>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- boy-sale area -->
	<div class="boy-sale-area">
		<div class="container">
			<div class="row">

				<div
					class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
					<div class="asks-first">
						<div class="asks-first-circle">
							<span class="fa fa-search"></span>
						</div>
						<div class="asks-first-info">
							<h2>ARE YOU LOOKING FOR A Property?</h2>
							<p>varius od lio eget conseq uat blandit, lorem auglue comm
								lodo nisl no us nibh mas lsa</p>
						</div>
						<div class="asks-first-arrow">
							<a href="properties.jsp"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
					<div class="asks-first">
						<div class="asks-first-circle">
							<span class="fa fa-usd"></span>
						</div>
						<div class="asks-first-info">
							<h2>DO YOU WANT TO SELL A Property?</h2>
							<p>varius od lio eget conseq uat blandit, lorem auglue comm
								lodo nisl no us nibh mas lsa</p>
						</div>
						<div class="asks-first-arrow">
							<a href="properties.jsp"><span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
				<div class="col-xs-12">
					<p class="asks-call">
						QUESTIONS? CALL US : <span class="strong"> + 3-123-
							424-5700</span>
					</p>
				</div>
			</div>
		</div>
	</div>



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


	<script src="assets/js/jquery.ba-cond.min.js"></script>
	<script src="assets/js/jquery.slitslider.js"></script>

	<script src="assets/js/main.js"></script>

	<script type="text/javascript">
		$(function() {

			var Page = (function() {

				var $nav = $('#nav-dots > span'), slitslider = $('#slider')
						.slitslider({
							onBeforeChange : function(slide, pos) {

								$nav.removeClass('nav-dot-current');
								$nav.eq(pos).addClass('nav-dot-current');

							}
						}), init = function() {

					initEvents();

				}, initEvents = function() {

					$nav.each(function(i) {

						$(this).on('click', function(event) {

							var $dot = $(this);

							if (!slitslider.isActive()) {

								$nav.removeClass('nav-dot-current');
								$dot.addClass('nav-dot-current');

							}

							slitslider.jump(i + 1);
							return false;

						});

					});

				};

				return {
					init : init
				};

			})();

			Page.init();

			/**
			 * Notes: 
			 * 
			 * example how to add items:
			 */

			/*
			 
			 var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
			 
			 // call the plugin's add method
			 ss.add($items);
			 
			 */

		});
	</script>
</body>


</body>
</html>