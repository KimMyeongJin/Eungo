<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | Home page</title>

<!-- Start header -->
<%@include file="/include/header.jsp"%>
<!-- End of header -->

<!-- Start nav bar -->
<%@include file="/include/navbar.jsp"%>
<!-- End of nav bar -->

<div class="slider-area">
	<div class="slider">
		<div id="bg-slider" class="owl-carousel owl-theme">

			<div class="item">
				<img src="assets/img/slide1/slider-image-1.jpg" alt="GTA V">
			</div>
			<div class="item">
				<img src="assets/img/slide1/slider-image-2.jpg" alt="The Last of us">
			</div>
			<div class="item">
				<img src="assets/img/slide1/slider-image-1.jpg" alt="GTA V">
			</div>

		</div>
	</div>
	<div class="slider-content">
		<div class="row">
			<div
				class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
				<h2>property Searching Just Got So Easy</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam
					velit adipisci quibusdam aliquam teneturo!</p>

				<div class="search-form wow pulse" data-wow-delay="0.8s">

					<form action="<%=request.getContextPath()%>/board"
						class=" form-inline">
						<div class="row">
							<div class="form-group">
								<input type="hidden" name="cmd" value="board_search"> <input
									type="text" name="search_text" class="form-control"
									placeholder="Key word">
							</div>
							<button class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- property area -->
<div class="content-area home-area-1 recent-property"
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
								src="assets/img/demo/property-1.jpg"></a>
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
								src="assets/img/demo/property-3.jpg"></a>

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
								src="assets/img/demo/property-2.jpg"></a>
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
								src="assets/img/demo/property-4.jpg"></a>
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
								src="assets/img/demo/property-3.jpg"></a>
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
							<h5 class="tree-sub-ttl">Show all Services</h5>
							<button class="btn border-btn more-black" value="All services">All
								Services</button>
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
					<div class="welcome_services wow fadeInRight" data-wow-delay="0.3s"
						data-wow-offset="100">
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
								<h5>Servcies in stock</h5>
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
						<a href="<%=request.getContextPath()%>/service/services.jsp"><span class="fa fa-angle-right"></span></a>
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
						<a href="<%=request.getContextPath()%>/service/services.jsp"><span class="fa fa-angle-right"></span></a>
					</div>
				</div>
			</div>
			<div class="col-xs-12">
				<p class="asks-call">
					QUESTIONS? CALL US : <span class="strong"> + 3-123- 424-5700</span>
				</p>
			</div>
		</div>
	</div>
</div>

<!-- Footer area-->
<%@include file="/include/footer.jsp"%>
</body>
</html>