<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String cp = request.getContextPath(); //--ContextPath 선언 --
	String id = null;
	if (request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Replenish HR Management Category Bootstrap responsive Web
	Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- 스크립트1 -->
<%@include file="/include/headerScript.jsp"%>

</head>

<body>
	<script
		src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script src="//m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
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
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-30027142-1', 'w3layouts.com');
		ga('send', 'pageview');
	</script>
<body>
	<!-- banner-inner -->
	<div id="demo-1"
		data-zs-src='["<%=request.getContextPath()%>/images/1.jpg", "<%=request.getContextPath()%>/images/2.jpg","<%=request.getContextPath()%>/images/3.jpg", "<%=request.getContextPath()%>/images/4.jpg"]'
		data-zs-overlay="dots">
		<div class="demo-inner-content">
			<div class="header-top">
				<header>
					<div class="top-head ml-lg-auto text-center">
						<div class="row">

							<div class="col-md-4">
								<span>Welcome Back!</span>
							</div>
							<%
								if (id == null) {
							%>
							<div class="col-md-3 sign-btn">
								<a href="/index.jsp" data-toggle="modal"
									data-target="#exampleModalCenter"> <i class="fas fa-lock"></i>
									로그인
								</a>
							</div>
							<div class="col-md-3 sign-btn">
								<a href="#" data-toggle="modal"
									data-target="#exampleModalCenter2"> <i class="far fa-user"></i>
									회원가입
								</a>
							</div>
							<%
								} else {
							%>
							<div class="col-md-3 sign-btn">
								<a href="#" data-toggle="modal"
									data-target="#exampleModalCenter"> <i class="fas fa-lock"></i>
									로그아웃
								</a>
							</div>
							<div class="col-md-3 sign-btn">
								<a href="#" data-toggle="modal"
									data-target="#exampleModalCenter2"> <i class="far fa-user"></i>
									회원정보
								</a>
							</div>
							<%
								}
							%>
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
										<input class="form-control" type="search"
											placeholder="Search here..." required="">
										<button type="submit" class="btn btn-primary submit">
											<i class="fas fa-search"></i>
										</button>
									</form>
								</div>
								<!-- open/close -->
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<nav class="navbar navbar-expand-lg navbar-light">
						<div class="logo">
							<h1>
								<a class="navbar-brand" href="index.html"> <i
									class="fab fa-codepen"></i> 제목
								</a>
							</h1>
						</div>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"> <i class="fas fa-bars"></i>
							</span>

						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav ml-lg-auto text-center">
								<li class="nav-item"><a class="nav-link" href="index.html">홈버튼
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="how.html">How
										it works</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Candidates <i
										class="fas fa-angle-down"></i>
								</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="services.html">Candidates</a> <a
											class="dropdown-item" href="candidates_list.html" title="">Candidates
											List 1</a> <a class="dropdown-item" href="candidates_list.html"
											title="">Candidates List 2</a> <a class="dropdown-item"
											href="candidates_list.html" title="">Candidates List 3</a> <a
											class="dropdown-item" href="candidates_single.html" title="">Candidates
											Single 1</a>


									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="pricing.html">Pricing</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Employers <i
										class="fas fa-angle-down"></i>
								</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="employer_list.html">
											Employer List 1</a> <a class="dropdown-item"
											href="employer_list.html">Employer List 2</a> <a
											class="dropdown-item" href="employer_list.html">Employer
											List 3</a> <a class="dropdown-item" href="employer_list.html">Employer
											List 4</a> <a class="dropdown-item" href="employer_single.html">Employer
											Single 1</a>
									</div></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.html">Contact</a></li>
							</ul>

						</div>
					</nav>
				</header>
			</div>
			<!--/banner-info-w3layouts-->
			<div class="banner-info-w3layouts text-center">

				<h3>
					<span>S e a r c h</span>
				</h3>
				<p>본인이 원하는 해당분야를 선택하여 검색</p>

				<form action="#" method="post" class="ban-form row">
					<div class="col-md-3 banf" style="flex: 0 0 75%; max-width: 75%">
						<input class="form-control" type="text" name="Name"
							placeholder="Name" required="">
					</div>
					<!--                   <div class="col-md-3 banf">
                        <select class="form-control" id="country12">
                            <option>종목1</option>
                            <option>종목2</option>
                            <option>종목3</option>
                            <option>종목4</option>
                            <option>종목5</option>
                        </select>
                    </div>                   
 					 <div class="col-md-3 banf">
                        <select id="country13" class="form-control">
                            <option>세부종목1</option>
                            <option>세부종목2</option>
                            <option>세부종목3</option>
                            <option>세부종목4</option>
                            <option>세부종목5</option>
                        </select>
                    </div> -->
					<div class="col-md-3 banf">
						<button class="btn1" type="submit">
							상세 검색 <i class="fas fa-search"></i>
						</button>
					</div>
				</form>
			</div>
			<!--//banner-info-w3layouts-->
		</div>
	</div>
	<section class="banner-bottom-wthree pb-lg-5 pb-md-4 pb-3">
		<div class="container">
			<table>
				<tbody>
					<tr>
						<td id="tb1" style="width: 25%; padding-right: 90px;">
							<div class="col-xs-2 padding-right-5">


								<div class="row">
									<div class="col-xs-12">
										<div class="container">
											<div class="col-xs-12">
												<div
													class="left-menu-title-wrapper margin-top-20 padding-side-20">
													<h4 class="left-menu-title">C a t e g o r y</h4>
													<br>
													<div class="row">
														<div class="col-xs-12">

															<ul class="margin-none list-unstyled">
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		워드프레스 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper"
																			style="fontsize: 13px;">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작(CMS) </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 개선 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					HTML·CSS 퍼블리싱 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					버그 수정 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					랜딩페이지 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					퍼포먼스·SEO </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					보안 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		웹사이트 개발 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작(CMS) </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 개선 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					HTML·CSS 퍼블리싱 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					버그 수정 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					랜딩페이지 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					퍼포먼스·SEO </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					보안 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		쇼핑몰·커머스 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 제작(CMS) </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹사이트 개선 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					버그 수정 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					랜딩페이지 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					퍼포먼스·SEO </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					보안 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		모바일앱·웹 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					네이티브앱 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					웹앱 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					앱 개선 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					버그 수정 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		프로그램 개발 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					일반 프로그램 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					임베디드 시스템 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz"
																					href="https://kmong.com/category/60502"
																					data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					프로그램 개선 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					버그 수정 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		게임 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					2D </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					3D </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					AR·VR </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					서버 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					기타 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		데이터베이스 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					최적화·설계 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					쿼리 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		데이터분석·리포트 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데이터 분석 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데이터 모델링 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데이터 시각화 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데이터 입력·클리닝 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데이터 마이닝·크롤링 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					VBA·매크로 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		서버 및 기술지원 </a>

																	<div class="toggle-btn inline-block pull-right">
																		<img
																			src="<%=request.getContextPath()%>/images/close.png"
																			class="cursor cat-open"
																			style="width: 12px; transform: rotate(-180deg);">
																		<img
																			src="<%=request.getContextPath()%>/images/open.png"
																			class="cursor cat-close"
																			style="width: 12px; display: none;">
																	</div>



																	<div class="toggle-list"
																		style="display: none; margin-left: 15px; font-size: 13px;">
																		<div class="third-category-wrapper">
																			<div class="category-list-item third-category ">
																				<a class="plain" href="#" style="color: black">전체</a>

																			</div>

																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					서버·호스팅 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					데스크탑·노트북 </a>
																			</div>
																			<div class="category-list-item third-category ">
																				<a class="plain sendGATriggerClz" href="#"
																					style="color: black" data-ga-category="1차 카테고리 리스트"
																					data-ga-label="좌측 날개_카테고리" data-ga-action="3차 카테고리">
																					모바일 </a>
																			</div>
																		</div>
																	</div></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		QA·테스트 </a></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		파일변환 </a></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		챗봇 </a></li>
																<li class="nav-link dropdown-toggle"><a
																	class="plain sendGATriggerClz " href="#"
																	style="color: black" data-ga-category="1차 카테고리 리스트"
																	data-ga-label="좌측 날개_카테고리" data-ga-action="2차 카테고리">
																		기타 </a></li>

																<script>
																	var toggleBtn = $('.toggle-btn');
																	var close = '.cat-close';
																	var open = '.cat-open';

																	$(toggleBtn)
																			.unbind(
																					'click')
																			.click(
																					function(
																							e) {

																						if ($(
																								this)
																								.next()
																								.css(
																										'display') === 'block') {

																							$(
																									'.toggle-list')
																									.css(
																											'display',
																											'none');
																							$(
																									this)
																									.next()
																									.css(
																											'display',
																											'none');

																						} else {
																							$(
																									'.toggle-list')
																									.css(
																											'display',
																											'none');
																							$(
																									close)
																									.css(
																											'display',
																											'none');
																							$(
																									open)
																									.css(
																											'display',
																											'inline-block');

																							$(
																									this)
																									.next()
																									.css(
																											'display',
																											'block');
																						}

																						if ($(
																								this)
																								.children(
																										open)
																								.css(
																										'display') === 'inline-block') {
																							$(
																									this)
																									.children(
																											open)
																									.css(
																											'display',
																											'none');
																							$(
																									this)
																									.children(
																											close)
																									.css(
																											'display',
																											'inline-block');
																						} else {
																							$(
																									this)
																									.children(
																											open)
																									.css(
																											'display',
																											'inline-block');
																							$(
																									this)
																									.children(
																											close)
																									.css(
																											'display',
																											'none');
																						}
																						//
																					});
																</script>
															</ul>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</td>
						<td id="tb2" style="width: 75%;">

							<div class="inner-sec-w3ls py-lg-5  py-3">
								<h3 class="tittle text-center mb-lg-5 mb-3">
									<span>Some Info</span> QnA
								</h3>
								<div class="row mt-5">

									<div class="card-deck">
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g1.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문예제1</h5>
												<p class="card-text">질문내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">글 업데이트 시간 반영</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g2.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문내용 2</h5>
												<p class="card-text">질문 내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">글 업데이트 시간 반영</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g3.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문 예제3</h5>
												<p class="card-text">글내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">업데이트</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g3.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문 예제4</h5>
												<p class="card-text">글내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">업데이트</small>
											</div>
										</div>
									</div>
								</div>

								<!--  두번째 질문내용 라벨 -->
								<div class="row mt-5">

									<div class="card-deck">
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g1.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문예제1</h5>
												<p class="card-text">질문내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">글 업데이트 시간 반영</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g2.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문내용 2</h5>
												<p class="card-text">질문 내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">글 업데이트 시간 반영</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g3.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문 예제3</h5>
												<p class="card-text">글내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">업데이트</small>
											</div>
										</div>
										<div class="card">
											<img src="<%=request.getContextPath()%>/images/g3.jpg"
												alt="Card image cap" class="img-fluid card-img-top">
											<div class="card-body">
												<h5 class="card-title">질문 예제4</h5>
												<p class="card-text">글내용</p>
											</div>
											<div class="card-footer">
												<small class="text-muted">업데이트</small>
											</div>
										</div>
									</div>
								</div>
								<div class="row mt-5">
									<ul class="pagination">
										<li class="page-item disabled"><a class="page-link"
											href="#" tabindex="-1">Previous</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item active"><a class="page-link"
											href="#">2 <span class="sr-only">(current)</span></a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">6</a></li>
										<li class="page-item"><a class="page-link" href="#">7</a></li>
										<li class="page-item"><a class="page-link" href="#">8</a></li>
										<li class="page-item"><a class="page-link" href="#">9</a></li>
										<li class="page-item"><a class="page-link" href="#">10</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a>
										</li>
									</ul>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

	</section>


	<!--footer -->
	<footer class="footer-emp-w3layouts bg-dark dotts py-lg-5 py-3">
		<div class="container-fluid px-lg-5 px-3">
			<div class="row footer-top">
				<div class="col-lg-3 footer-grid-wthree-w3ls">
					<div class="footer-title">
						<h3>상세문의</h3>
					</div>
					<div class="footer-text">
						<p>Curabitur non nulla sit amet nislinit tempus convallis quis
							ac lectus. lac inia eget consectetur sed, convallis at tellus.
							Nulla porttitor accumsana tincidunt.</p>
						<ul class="footer-social text-left mt-lg-4 mt-3">

							<li class="mx-2"><a href="#"> <span
									class="fab fa-facebook-f"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-twitter"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-google-plus-g"></span>
							</a></li>
							<li class="mx-2"><a href="#"> <span
									class="fab fa-linkedin-in"></span>
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
						<p>By subscribing to our mailing list you will always get
							latest news and updates from us.</p>
						<form action="#" method="post">
							<input class="form-control" type="email" name="Email"
								placeholder="Enter your email..." required="">
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
					&copy; 2018 Replenish. All Rights Reserved | Design by <a
						href="http://w3layouts.com/"> W3layouts </a>
				</p>
			</div>
		</div>
	</footer>
	<!-- //footer -->

	<!--model-forms-->
	<!--/Login-->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div class="login px-4 mx-auto mw-100">
						<h5 class="text-center mb-4">Login Now</h5>
						<form action="./home.jsp" method="post">
							<div class="form-group">
								<label class="mb-2">Email address</label> <input type="email"
									name="id" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="" required="">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label class="mb-2">Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1" placeholder=""
									required="">
							</div>
							<div class="form-check mb-2">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary submit mb-4">Sign
								In</button>
							<p class="text-center pb-4">
								<a href="#" data-toggle="modal2"
									data-target="#exampleModalCenter"> Don't have an account?</a>
							</p>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!--//Login-->
	<!--/Register-->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login px-4 mx-auto mw-100">
						<h5 class="text-center mb-4">Register Now</h5>
						<form action="#" method="post">
							<div class="form-group">
								<label>이름</label> <input type="text" class="form-control"
									id="validationDefault01" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>이메일</label> <input type="text" class="form-control"
									id="validationDefault02" placeholder="" required="">
							</div>

							<div class="form-group">
								<label class="mb-2">패스워드</label> <input type="password"
									class="form-control" id="password1" placeholder="" required="">
							</div>
							<div class="form-group">
								<label>패스워드 확인</label> <input type="password"
									class="form-control" id="password2" placeholder="" required="">
							</div>

							<button type="submit" class="btn btn-primary submit mb-4">가입하기</button>
							<p class="text-center pb-4">
								<a href="#">By clicking Register, I agree to your terms</a>
							</p>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!--//Register-->

	<!--//model-form-->

	<!-- 스크립트2 -->
	<%@include file="/include/footerScript.jsp"%>
</body>

</html>
