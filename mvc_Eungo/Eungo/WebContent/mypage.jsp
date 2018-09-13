<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath();
%>
<%--ContextPath 선언 --%>
<!DOCTYPE html>
<html lang="zxx">

<head>



<title>Replenish HR Management Category Bootstrap responsive Web Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<%
	String id = null;
	if (request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
%>

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/zoomslider.css" rel='stylesheet' type='text/css' />
<link href="css/style6.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/mypage.css" rel='stylesheet' type='text/css' />
<link href="css/fontawesome-all.css" rel="stylesheet">
<link href="css/table.css" rel='stylesheet' type='text/css' />
<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();a = s.createElement(o),
			m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-30027142-1', 'w3layouts.com');
		ga('send', 'pageview');
	</script>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/Eungo/WebContent/mypage.jsp" style="">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/Eungo/WebContent/mypage.jsp"></script>
	<script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();a = s.createElement(o),
			m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-30027142-1', 'w3layouts.com');
		ga('send', 'pageview');
	</script>

	<!-- banner-inner -->
	<header class="header">
		<div id="demo-1">
			<div class="demo-inner-content">
				<div class="header-top">

					<div class="top-head ml-lg-auto text-center">
						<div class="row">

							<div class="col-md-4">
								<span>나의 페이지</span>
							</div>

							<div class="col-md-3 sign-btn ">
								<a href="/index.jsp" data-toggle="modal" data-target="#exampleModalCenter"> <i class="fas fa-lock"></i> 로그인
								</a>
							</div>
							<div class="col-md-3 sign-btn">
								<a href="#" data-toggle="modal" data-target="#exampleModalCenter2"> <i class="far fa-user"></i> 나의정보
								</a>
							</div>

							<div class="search col-md-2">
								<div class="mobile-nav-button">
									<button id="trigger-overlay" type="button">
										<i class="fas fa-search"></i>
									</button>
								</div>
								<!-- open/close -->
								<div class="overlay overlay-door">
									<button type="button" class="overlay-close">
										<i class="fa fa-times" aria-hidden="true"></i>
									</button>
									<form action="#" method="post" class="d-flex">
										<input class="form-control" type="search" placeholder="Search here..." required="">
										<button type="submit" class="btn btn-primary submit">
											<i class="fas fa-search"></i>
										</button>
									</form>
								</div>
							</div>

							<!-- open/close -->
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="navbar navbar-expand-lg navbar-light">
					<div class="logo">
						<h1>
							<a class="navbar-brand" href="index.html"> <i class="fab fa-codepen"></i> Eungo
							</a>
						</h1>
					</div>

					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"> <i class="fas fa-bars"></i>
						</span>

					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-lg-auto text-center">
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 구매관리 <i
									class="fas fa-angle-down"></i>
							</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="employer_list.html"> 구매관리</a> <a class="dropdown-item" href="employer_list.html">결제내역</a> <a class="dropdown-item" href="employer_list.html">은고캐시</a> <a
										class="dropdown-item" href="employer_list.html">캐시충전</a> <a class="dropdown-item" href="employer_single.html">쿠폰</a>
								</div></li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 판매관리 <i
									class="fas fa-angle-down"></i>
							</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="services.html">판매관리</a> <a class="dropdown-item" href="candidates_list.html" title="">나의 서비스</a> <a class="dropdown-item" href="candidates_list.html" title="">수익관리</a>
									<a class="dropdown-item" href="candidates_list.html" title="">서비스 등록</a> <a class="dropdown-item" href="candidates_single.html" title="">광고 신청</a>


								</div></li>
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 메시지 <i
									class="fas fa-angle-down"></i>
							</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="employer_list.html">문의메시지</a> <a class="dropdown-item" href="employer_list.html">거래알림</a>

								</div></li>
							<li class="nav-item"><a class="nav-link" href="index.html">계정설정 <span class="sr-only">(current)</span>
							</a></li>
						</ul>

					</div>

				</div>
				<div class="1-row" style="margin: 5%; margin-left: 10%;">
					<div class="row">
						<div class="col-xs-3">


							<div class="row margin-top-10">
								<div class="col-xs-12">
									<div class="panel panel-default border-radius-none margin-none">
										<div class="panel-body position-relative padding-bottom-0">
											<div class="row">
												<div class="col-xs-6 dashboard-profile text-center">
													<div class="dashboard-profile-body">
														<img id="thumbnail" src="https://d2v80xjmx68n4w.cloudfront.net/members/thumbs/dGtUrgNUJrKE1536045047.jpg" title="yd474900"
															onerror="this.onerror=null;this.src='/img/tools/main_user_gray.png';" class="border-round">

													</div>
												</div>
											</div>
											<div class="row margin-top-20 dashboard-user-information">
												<div class="col-xs-12">
													<div class=" has-tooltip" aria-describedby="tooltip_k63wy83huv">
														<h5 class="header-margin-none">
															응답률 <span class="pull-right"><b>0%</b></span>
														</h5>
													</div>
												</div>
											</div>
											<div class="row dashboard-user-information-progress margin-top-5 border-bottom-solid">
												<div class="bg-color-danger" style="width: 0%;"></div>
											</div>
											<div class="row margin-top-20 dashboard-user-information">
												<div class="col-xs-12">
													<div class=" has-tooltip" aria-describedby="tooltip_9dxo9556j9">
														<h5 class="header-margin-none">
															주문 성공률 <span class="pull-right"><b>100%</b></span>
														</h5>
													</div>
												</div>
											</div>
											<div class="row dashboard-user-information-progress margin-top-5 border-bottom-solid">
												<div class="bg-color-success" style="width: 100%;"></div>
											</div>
											<div class="row margin-top-20 dashboard-user-information">
												<div class="col-xs-12">
													<div class=" has-tooltip">
														<h5 class="header-margin-none">
															작업일 준수율 <span class="pull-right"><b>100%</b></span>
														</h5>
													</div>
												</div>
											</div>
											<div class="row dashboard-user-information-progress margin-top-5 border-bottom-solid">
												<div class="bg-color-success" style="width: 100%;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-3" style="margin-left: 5%;">
							<div class="container">
								<table class="table">
									<thead>
										<tr>
											<th>판매 중인 건</th>
											<th>이달의 수익금</th>
											<th>구매 중인 건</th>
											<th>운고 캐시</th>
											<th>보유 쿠폰 수</th>
										</tr>
									</thead>
									<tbody>
									<tr>
										<td>0건</td>
										<td>0원</td>
										<td>0건</td>
										<td>0원</td>
										<td>0개</td>
									</tr>
									</tbody>
								</table>
							</div>




						</div>
					</div>
				</div>
			</div>
		</div>


	</header>
	<!--/banner-info-w3layouts-->

	<!--//banner-info-w3layouts-->

	<!-- banner-text -->

	<!--footer -->
	<footer class="footer">
		<div class="container-fluid px-lg-5 px-3">
			<div class="row footer-top">
				<div class="col-lg-3 footer-grid-wthree-w3ls">
					<div class="footer-title">
						<h3>상세문의</h3>
					</div>
					<div class="footer-text">
						<p>Curabitur non nulla sit amet nislinit tempus convallis quis ac lectus. lac inia eget consectetur sed, convallis at tellus. Nulla porttitor accumsana tincidunt.</p>
						<ul class="footer-social text-left mt-lg-4 mt-3">

							<li class="mx-2"><a href="#"> <span class="fab fa-facebook-f"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fab fa-twitter"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fab fa-google-plus-g"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fab fa-linkedin-in"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fas fa-rss"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span class="fab fa-vk"></span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-wthree-w3ls">
					<div class="footer-title">
						<h3>Get in touch</h3>
					</div>
					<div class="contact-info">
						<h4>Location :</h4>
						<p>0926k 4th block building, king Avenue, New York City.</p>
						<div class="phone">
							<h4>Contact :</h4>
							<p>Phone : +121 098 8907 9987</p>
							<p>
								Email : <a href="mailto:info@example.com">info@example.com</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 footer-grid-wthree-w3ls">
					<div class="footer-title">
						<h3>Quick Links</h3>
					</div>
					<ul class="links">
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="404.html">Error</a></li>
						<li><a href="pricing.html">Job Packages</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
					<ul class="links">
						<li><a href="how.html">How it works</a></li>
						<li><a href="contact.html">Support</a></li>
						<li><a href="employer_list.html">For Employers</a></li>
					</ul>

					<div class="clearfix"></div>
				</div>
				<div class="col-lg-3 footer-grid-wthree-w3ls">
					<div class="footer-title">
						<h3>Sign up for your offers</h3>
					</div>
					<div class="footer-text">
						<p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
						<form action="#" method="post">
							<input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
							<button class="btn2">
								<i class="far fa-envelope" aria-hidden="true"></i>
							</button>
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="copyright mt-4">
				<p class="copy-right text-center ">
					© 2018 Replenish. All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a>
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->

	<!--model-forms-->




	<!--//model-form-->
	<!-- js -->
	<!--/slider-->
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/jquery.zoomslider.min.js"></script>
	<!--//slider-->
	<!--search jQuery-->
	<script src="js/classie-search.js"></script>
	<script src="js/demo1-search.js"></script>
	<!--//search jQuery-->

	<script>
		$(document).ready(function() {
			$(".dropdown").hover(
				function() {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function() {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //dropdown nav -->
	<!-- password-script -->
	<script>
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
	
		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
		//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->

	<!-- //js -->
	<script src="js/bootstrap.js"></script>
	<!--/ start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			/*
									var defaults = {
										  containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
									 };
									*/
	
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
	
		});
	</script>

	<!--// end-smoth-scrolling -->


	<a href="#" id="toTop" style="display: none;"><span id="toTopHover"></span>To Top</a>
	<div id="cl-dashboard" class="bootstrap-iso-codelive">
		<div id="cl-toolbar" class="cl-panel" style="background-color: white;">
			<div id="cl-normal-buttons">
				<div class="cl-btn" id="cl-product-container">
					<span>
						<div>
							<div class="cl-product-image cl-product-image-webclipse">&nbsp;</div>
							<div id="cl-collapse-dashboard-container">
								<span class="cl-mdi cl-mdi-play"> </span>
							</div>
						</div>
					</span>
					<div class="cl-popover cl-show-only-transition cl-left" style="top: -12.5px; left: -230px; display: none;">
						<div class="cl-arrow"></div>
						<h3 class="cl-popover-title" style="display: none;"></h3>
						<div class="cl-popover-content">
							<div slot="content" style="width: 200px">Click to show and hide the panel.</div>
						</div>
					</div>
				</div>
				<div>
					<hr class="cl-toolbar-separator">
					<span>
						<button id="cl-dashboard-main-panel-button" type="button" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button" aria-label="Info Sign">
							<span class="cl-mdi cl-mdi-menu" aria-hidden="true"></span>
						</button>
					</span>
					<div class="cl-popover cl-show-only-transition cl-left" style="top: -3px; left: -231px; display: none;">
						<div class="cl-arrow"></div>
						<h3 class="cl-popover-title" style="display: none;"></h3>
						<div class="cl-popover-content">
							<div slot="content" style="width: 200px">Open the CodeLive panel to view files loaded from your IDE, open files in the IDE, and enable Live Preview.</div>
						</div>
					</div>
					<hr class="cl-toolbar-separator">
					<span>
						<button id="cl-dashboard-inspector-button" type="button" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button" aria-label="Edit" style="">
							<span class="cl-mdi cl-mdi-auto-fix" aria-hidden="true"></span>
						</button>
					</span>
					<div class="cl-popover cl-show-only-transition cl-left" style="top: 36px; left: -231px; display: none;">
						<div class="cl-arrow"></div>
						<h3 class="cl-popover-title" style="display: none;"></h3>
						<div class="cl-popover-content">
							<div slot="content" style="width: 200px">Hover on an element to see where it comes from, and click to open it in your IDE</div>
						</div>
					</div>
					<hr class="cl-toolbar-separator">
				</div>
			</div>
			<div id="cl-mini-buttons">
				<div class="cl-container-fluid cl-text-center">
					<div class="cl-row cl-clearfix">
						<div class="cl-col-xs-6">
							<span>
								<button id="cl-connection-indicator" type="button" aria-label="Edit" class="cl-btn cl-btn-default cl-disabled cl-btn-block cl-toolbar-button cl-btn-xs cl-connected cl-status-connected">
									<span aria-hidden="true" class="cl-mdi cl-mdi-cast-connected"></span>
								</button>
							</span>
							<div class="cl-popover cl-show-only-transition cl-left" style="top: -34px; left: -182px; display: none;">
								<div class="cl-arrow"></div>
								<h3 class="cl-popover-title" style="display: none;"></h3>
								<div class="cl-popover-content">
									<div slot="content" style="width: 150px">
										<span> Connected to the IDE using CodeLive. </span>
									</div>
								</div>
							</div>
						</div>
						<div class="cl-col-xs-6">
							<span>
								<button id="cl-refresh-indicator" type="button" aria-label="Edit" class="cl-status-off cl-btn cl-disabled cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs">
									<span class="cl-mdi cl-mdi-refresh" aria-hidden="true"></span>
								</button>
							</span>
							<div class="cl-popover cl-show-only-transition cl-left" style="top: -14px; left: -276px; display: none;">
								<div class="cl-arrow"></div>
								<h3 class="cl-popover-title" style="display: none;"></h3>
								<div class="cl-popover-content">
									<div slot="content">
										<div style="width: 250px">No need to reload the page at this time.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cl-row cl-clearfix">
						<div class="cl-col-xs-6">
							<span>
								<button id="cl-notification-indicator" type="button" aria-label="Edit" class="cl-status-off cl-btn cl-disabled cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs">
									<span class="cl-mdi cl-mdi-alert-circle-outline" aria-hidden="true"></span>
								</button>
							</span>
							<div class="cl-popover cl-show-only-transition cl-left" style="top: -14px; left: -182px; display: none;">
								<div class="cl-arrow"></div>
								<h3 class="cl-popover-title" style="display: none;"></h3>
								<div class="cl-popover-content">
									<div slot="content">
										<div style="width: 150px">No alerts at this time.</div>
									</div>
								</div>
							</div>
						</div>
						<div class="cl-col-xs-6">
							<div>
								<span>
									<button id="cl-lp-indicator" type="button" aria-label="Edit" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs cl-disabled cl-status-off">
										<span class="cl-mdi cl-mdi-eye" aria-hidden="true"></span>
									</button>
								</span>
								<div class="cl-popover cl-show-only-transition cl-left" style="top: -24px; left: -182px; display: none;">
									<div class="cl-arrow"></div>
									<h3 class="cl-popover-title" style="display: none;"></h3>
									<div class="cl-popover-content">
										<div slot="content" style="width: 150px">There are no files with Live Preview enabled.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bootstrap-iso-codelive">
		<div role="dialog" class="cl-modal fade" style="display: none;">
			<div role="document" class="cl-modal-dialog">
				<div class="cl-modal-content">
					<div id="ci-modal-main-panel-header" slot="modal-header" class="cl-modal-header">
						<div class="cl-clearfix">
							<div id="cl-modal-main-panel-title-container" class="cl-col-xs-10 cl-text-left">
								<span class="cl-mdi cl-mdi-menu"></span> <span class="cl-modal-title"> CodeLive Dashboard for Webclipse </span>
							</div>
							<div id="cl-close-main-panel-container" class="cl-col-xs-2 cl-text-right">
								<button id="cl-close-main-panel-button" type="button" class="cl-btn cl-btn-default cl-btn-borderless">
									<span class="cl-mdi cl-mdi-close" aria-hidden="true"></span>
								</button>
							</div>
						</div>
					</div>
					<div id="ci-file-list-modal-body" slot="modal-body" class="cl-modal-body"></div>
					<div slot="modal-footer"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>