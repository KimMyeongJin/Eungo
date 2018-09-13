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
<title>GARO ESTATE | Property page</title>
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
					<h1 class="page-title">Super nice villa</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area single-property"
		style="background-color: #FFF;">
		&nbsp;
		<div class="container">

			<div class="clearfix padding-top-40">
				<div class="col-md-12 single-property-content">
					<div class="row">
						<div class="light-slide-item full-width-sld">
							<div class="clearfix">
								<div class="favorite-and-print">
									<a class="add-to-fav" href="#login-modal" data-toggle="modal">
										<i class="fa fa-star-o"></i>
									</a> <a class="printer-icon " href="javascript:window.print()">
										<i class="fa fa-print"></i>
									</a>
								</div>

								<ul id="fullWidth-gallery"
									class="gallery list-unstyled cS-hidden">
									<li data-thumb="assets/img/property-1/property1.jpg"><img
										src="assets/img/property-1/property1.jpg" /></li>
									<li data-thumb="assets/img/property-1/property2.jpg"><img
										src="assets/img/property-1/property3.jpg" /></li>
									<li data-thumb="assets/img/property-1/property3.jpg"><img
										src="assets/img/property-1/property3.jpg" /></li>
									<li data-thumb="assets/img/property-1/property4.jpg"><img
										src="assets/img/property-1/property4.jpg" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-8" style="background-color: rgb(251, 251, 251);">
					<div class="">

						<div class="single-property-wrapper">

							<div class="section">
								<h4 class="s-property-title">Description</h4>
								<div class="s-property-content">
									<p>Nulla quis dapibus nisl. Suspendisse ultricies Nulla
										quis dapibus nisl. Suspendisse ultricies commodo arcu nec
										pretium. Nullam sed arcu ultricies commodo arcu nec pretium.
										Nullam sed arcu ultricies Nulla quis dapibus nisl. Suspendisse
										ultricies commodo arcu nec pretium. Nullam sed arcu ultricies
										Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu
										nec pretium. Nullam sed arcu ultricies</p>
								</div>
							</div>
							<!-- End description area  -->

							<div class="section additional-details">

								<h4 class="s-property-title">Additional Details</h4>

								<ul class="additional-details-list clearfix">
									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Built
											In</span> <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2003</span>
									</li>
									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Parking</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2
											Or More Spaces,Covered Parking,Valet Parking</span></li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Yes</span>
									</li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">View</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal
											View,Direct ew</span></li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Waterfront
											Description:</span> <span
										class="col-xs-6 col-sm-8 col-md-8 add-d-entry">Intracoastal
											Front,Ocean Access</span></li>

								</ul>
							</div>
							<!-- End additional-details area  -->

							<div class="section property-features">

								<h4 class="s-property-title">Features</h4>
								<ul>
									<li><a href="properties.jsp">Swimming Pool</a></li>
									<li><a href="properties.jsp">3 Stories</a></li>
									<li><a href="properties.jsp">Central Cooling</a></li>
									<li><a href="properties.jsp">Jog Path 2</a></li>
									<li><a href="properties.jsp">2 Lawn</a></li>
									<li><a href="properties.jsp">Bike Path</a></li>
								</ul>

							</div>
							<!-- End features area  -->

							<div class="section property-video">
								<h4 class="s-property-title">Property Video</h4>
								<div class="video-thumb">
									<a class="video-popup" href="yout" title="Virtual Tour"> <img
										src="assets/img/property-video.jpg"
										class="img-responsive wp-post-image" alt="Exterior">
									</a>
								</div>
							</div>
							<!-- End video area  -->

							<div class="section property-share">
								<h4 class="s-property-title">Share width your friends</h4>
								<div class="roperty-social">
									<ul>
										<li><a title="Share this on dribbble " href="#"><img
												src="assets/img/social_big/dribbble_grey.png"></a></li>
										<li><a title="Share this on facebok " href="#"><img
												src="assets/img/social_big/facebook_grey.png"></a></li>
										<li><a title="Share this on delicious " href="#"><img
												src="assets/img/social_big/delicious_grey.png"></a></li>
										<li><a title="Share this on tumblr " href="#"><img
												src="assets/img/social_big/tumblr_grey.png"></a></li>
										<li><a title="Share this on digg " href="#"><img
												src="assets/img/social_big/digg_grey.png"></a></li>
										<li><a title="Share this on twitter " href="#"><img
												src="assets/img/social_big/twitter_grey.png"></a></li>
										<li><a title="Share this on linkedin " href="#"><img
												src="assets/img/social_big/linkedin_grey.png"></a></li>
									</ul>
								</div>
							</div>
							<!-- End video area  -->
						</div>
					</div>

					<div class="similar-post-section padding-top-40">
						<div id="prop-smlr-slide_0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.jsp"><img
										src="assets/img/similar/property-1.jpg"></a>
								</div>
								<div class="item-entry overflow">
									<h5>
										<a href="property-1.jsp"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
								</div>
							</div>
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.jsp"><img
										src="assets/img/similar/property-2.jpg"></a>
								</div>
								<div class="item-entry overflow">
									<h5>
										<a href="property-1.jsp"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
								</div>
							</div>
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.jsp"><img
										src="assets/img/similar/property-3.jpg"></a>
								</div>
								<div class="item-entry overflow">
									<h5>
										<a href="property-1.jsp"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
								</div>
							</div>
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.jsp"><img
										src="assets/img/similar/property-1.jpg"></a>
								</div>
								<div class="item-entry overflow">
									<h5>
										<a href="property-1.jsp"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 p0">
					<aside
						class="sidebar sidebar-property blog-asside-right property-style2">
						<div class="dealer-widget">
							<div class="dealer-content">
								<div class="inner-wrapper">
									<div class="single-property-header">
										<h1 class="property-title">Villa in Coral Gables</h1>
										<span class="property-price">$825,000</span>
									</div>

									<div class="property-meta entry-meta clearfix ">

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-tag"> <img
												src="assets/img/icon/sale-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Status</span> <span
												class="property-info-value">For Sale</span>
											</span>
										</div>

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info icon-area"> <img
												src="assets/img/icon/room-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Area</span> <span
												class="property-info-value">3500<b
													class="property-info-unit">Sq Ft</b></span>
											</span>
										</div>

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-bed"> <img
												src="assets/img/icon/bed-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Bedrooms</span> <span
												class="property-info-value">3</span>
											</span>
										</div>

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-bath"> <img
												src="assets/img/icon/cars-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Bathrooms</span> <span
												class="property-info-value">3.5</span>
											</span>
										</div>
										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-bath"> <img
												src="assets/img/icon/os-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Bathrooms</span> <span
												class="property-info-value">3.5</span>
											</span>
										</div>

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-garage"> <img
												src="assets/img/icon/room-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Garages</span> <span
												class="property-info-value">2</span>
											</span>
										</div>

										<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
											<span class="property-info-icon icon-garage"> <img
												src="assets/img/icon/shawer-orange.png">
											</span> <span class="property-info-entry"> <span
												class="property-info-label">Garages</span> <span
												class="property-info-value">2</span>
											</span>
										</div>


									</div>
									<div class="dealer-section-space">
										<span>Dealer information</span>
									</div>
									<div class="clear">
										<div class="col-xs-4 col-sm-4 dealer-face">
											<a href=""> <img src="assets/img/client-face1.png"
												class="img-circle">
											</a>
										</div>
										<div class="col-xs-8 col-sm-8 ">
											<h3 class="dealer-name">
												<a href="">Nathan James</a> <span>Real Estate Agent</span>
											</h3>
											<div class="dealer-social-media">
												<a class="twitter" target="_blank" href=""> <i
													class="fa fa-twitter"></i>
												</a> <a class="facebook" target="_blank" href=""> <i
													class="fa fa-facebook"></i>
												</a> <a class="gplus" target="_blank" href=""> <i
													class="fa fa-google-plus"></i>
												</a> <a class="linkedin" target="_blank" href=""> <i
													class="fa fa-linkedin"></i>
												</a> <a class="instagram" target="_blank" href=""> <i
													class="fa fa-instagram"></i>
												</a>
											</div>

										</div>
									</div>

									<div class="clear">
										<ul class="dealer-contacts">
											<li><i class="pe-7s-map-marker strong"> </i> 9089 your
												adress her</li>
											<li><i class="pe-7s-mail strong"> </i>
												email@yourcompany.com</li>
											<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
										</ul>
										<p>Duis mollis blandit tempus porttitor curabiturDuis
											mollis blandit tempus porttitor curabitur , est non…</p>
									</div>

								</div>
							</div>
						</div>


						<div
							class="panel panel-default sidebar-menu wow fadeInRight animated">
							<div class="panel-heading">
								<h3 class="panel-title">Ads her</h3>
							</div>
							<div class="panel-body recent-property-widget">
								<img src="assets/img/ads.jpg">
							</div>
						</div>

					</aside>
				</div>

			</div>

		</div>
	</div>


	<!-- Footer area-->
	<%@include file="/include/footer.jsp"%>


	<script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
	<script type="text/javascript" src="assets/js/lightslider.min.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		$(document).ready(function() {

			$('#image-gallery').lightSlider({
				gallery : true,
				item : 1,
				thumbItem : 9,
				slideMargin : 0,
				speed : 500,
				auto : true,
				loop : true,
				onSliderLoad : function() {
					$('#image-gallery').removeClass('cS-hidden');
				}
			});
		});
	</script>

</body>
</html>