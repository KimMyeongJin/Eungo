<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | Service page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/lightslider.min.css">

<!-- Start header -->
<%@include file="../include/header.jsp"%>
<!-- End of header -->

<!-- Start nav bar -->
<%@include file="../include/navbar.jsp"%>
<!-- End of nav bar -->

<div class="page-head">
	<div class="container">
		<div class="row">
			<div class="page-head-content">
				<h1 class="page-title">
					${board.lcategory}
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- End page header -->

<!-- property area -->
<div class="content-area single-property"
	style="background-color: #FCFCFC;">
	<div class="container">

		<div class="clearfix padding-top-40">
			<div class="col-md-8 single-property-content ">
				<div class="row">
					<div class="light-slide-item">
						<div class="clearfix">
							<div class="favorite-and-print">
								<a class="add-to-fav" href="#login-modal" data-toggle="modal">
									<i class="fa fa-star-o"></i>
								</a> <a class="printer-icon " href="javascript:window.print()">
									<i class="fa fa-print"></i>
								</a>
							</div>

							<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
								<li data-thumb="${board.limage }"><img
									src="${board.limage }" /></li>
								<c:if test="${board.limage2 != null }">
									<li data-thumb="${board.limage2 }"><img
										src="${board.limage2 }" /></li>
								</c:if>
								<c:if test="${board.limage3 != null }">
									<li data-thumb="${board.limage3 }"><img
										src="${board.limage3 }" /></li>
								</c:if>
								<c:if test="${board.limage4 != null }">
									<li data-thumb="${board.limage4 }"><img
										src="${board.limage4 }" /></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>

				<div class="single-property-wrapper">
					<div class="single-property-header">
						<h1 class="property-title pull-left"><a
						href="<%=request.getContextPath()%>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=${board.lcategory}">${board.lcategory}</a> > <a href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${board.lnumber}">${board.ltitle }</a></h1>
						
					</div>

					<div class="property-meta entry-meta clearfix ">

						<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
							<span class="property-info-icon icon-tag"> <svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 48 48">
                                        <path class="meta-icon"
										fill-rule="evenodd" clip-rule="evenodd" fill="#FFA500"
										d="M47.199 24.176l-23.552-23.392c-.504-.502-1.174-.778-1.897-.778l-19.087.09c-.236.003-.469.038-.696.1l-.251.1-.166.069c-.319.152-.564.321-.766.529-.497.502-.781 1.196-.778 1.907l.092 19.124c.003.711.283 1.385.795 1.901l23.549 23.389c.221.218.482.393.779.523l.224.092c.26.092.519.145.78.155l.121.009h.012c.239-.003.476-.037.693-.098l.195-.076.2-.084c.315-.145.573-.319.791-.539l18.976-19.214c.507-.511.785-1.188.781-1.908-.003-.72-.287-1.394-.795-1.899zm-35.198-9.17c-1.657 0-3-1.345-3-3 0-1.657 1.343-3 3-3 1.656 0 2.999 1.343 2.999 3 0 1.656-1.343 3-2.999 3z"></path>
                                        </svg>
							</span> <span class="property-info-entry"> <span
								class="property-info-label">Status</span> <span
								class="property-info-value">For Sale</span>
							</span>
						</div>

						<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
							<span class="property-info icon-area"> <svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 48 48">
                                        <path class="meta-icon"
										fill="#FFA500"
										d="M46 16v-12c0-1.104-.896-2.001-2-2.001h-12c0-1.103-.896-1.999-2.002-1.999h-11.997c-1.105 0-2.001.896-2.001 1.999h-12c-1.104 0-2 .897-2 2.001v12c-1.104 0-2 .896-2 2v11.999c0 1.104.896 2 2 2v12.001c0 1.104.896 2 2 2h12c0 1.104.896 2 2.001 2h11.997c1.106 0 2.002-.896 2.002-2h12c1.104 0 2-.896 2-2v-12.001c1.104 0 2-.896 2-2v-11.999c0-1.104-.896-2-2-2zm-4.002 23.998c0 1.105-.895 2.002-2 2.002h-31.998c-1.105 0-2-.896-2-2.002v-31.999c0-1.104.895-1.999 2-1.999h31.998c1.105 0 2 .895 2 1.999v31.999zm-5.623-28.908c-.123-.051-.256-.078-.387-.078h-11.39c-.563 0-1.019.453-1.019 1.016 0 .562.456 1.017 1.019 1.017h8.935l-20.5 20.473v-8.926c0-.562-.455-1.017-1.018-1.017-.564 0-1.02.455-1.02 1.017v11.381c0 .562.455 1.016 1.02 1.016h11.39c.562 0 1.017-.454 1.017-1.016 0-.563-.455-1.019-1.017-1.019h-8.933l20.499-20.471v8.924c0 .563.452 1.018 1.018 1.018.561 0 1.016-.455 1.016-1.018v-11.379c0-.132-.025-.264-.076-.387-.107-.249-.304-.448-.554-.551z"></path>
                                        </svg>
							</span> <span class="property-info-entry"> <span
								class="property-info-label">Area</span> <span
								class="property-info-value">3500<b
									class="property-info-unit">Sq Ft</b></span>
							</span>
						</div>

						<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
							<span class="property-info-icon icon-bed"> <svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 48 48">
                                        <path class="meta-icon"
										fill="#FFA500"
										d="M21 48.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v31c0 1.104-.895 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v7.001c0 1.104-.895 1.999-2 1.999zm25 37.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v31c0 1.104-.896 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v7.001c0 1.104-.896 1.999-2 1.999z"></path>
                                        </svg>
							</span> <span class="property-info-entry"> <span
								class="property-info-label">Bedrooms</span> <span
								class="property-info-value">3</span>
							</span>
						</div>

						<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
							<span class="property-info-icon icon-bath"> <svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 48 48">
                                        <path class="meta-icon"
										fill="#FFA500"
										d="M37.003 48.016h-4v-3.002h-18v3.002h-4.001v-3.699c-4.66-1.65-8.002-6.083-8.002-11.305v-4.003h-3v-3h48.006v3h-3.001v4.003c0 5.223-3.343 9.655-8.002 11.305v3.699zm-30.002-24.008h-4.001v-17.005s0-7.003 8.001-7.003h1.004c.236 0 7.995.061 7.995 8.003l5.001 4h-14l5-4-.001.01.001-.009s.938-4.001-3.999-4.001h-1s-4 0-4 3v17.005000000000003h-.001z"></path>
                                        </svg>
							</span> <span class="property-info-entry"> <span
								class="property-info-label">Bathrooms</span> <span
								class="property-info-value">3.5</span>
							</span>
						</div>

						<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
							<span class="property-info-icon icon-garage"> <svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									viewBox="0 0 48 48">
                                        <path class="meta-icon"
										fill="#FFA500"
										d="M44 0h-40c-2.21 0-4 1.791-4 4v44h6v-40c0-1.106.895-2 2-2h31.999c1.106 0 2.001.895 2.001 2v40h6v-44c0-2.209-1.792-4-4-4zm-36 8.001h31.999v2.999h-31.999zm0 18h6v5.999h-2c-1.104 0-2 .896-2 2.001v6.001c0 1.103.896 1.998 2 1.998h2v2.001c0 1.104.896 2 2 2s2-.896 2-2v-2.001h11.999v2.001c0 1.104.896 2 2.001 2 1.104 0 2-.896 2-2v-2.001h2c1.104 0 2-.895 2-1.998v-6.001c0-1.105-.896-2.001-2-2.001h-2v-5.999h5.999v-3h-31.999v3zm8 12.999c-1.104 0-2-.895-2-1.999s.896-2 2-2 2 .896 2 2-.896 1.999-2 1.999zm10.5 2h-5c-.276 0-.5-.225-.5-.5 0-.273.224-.498.5-.498h5c.275 0 .5.225.5.498 0 .275-.225.5-.5.5zm1-2h-7c-.275 0-.5-.225-.5-.5s.226-.499.5-.499h7c.275 0 .5.224.5.499s-.225.5-.5.5zm-6.5-2.499c0-.276.224-.5.5-.5h5c.275 0 .5.224.5.5s-.225.5-.5.5h-5c-.277 0-.5-.224-.5-.5zm11 2.499c-1.104 0-2.001-.895-2.001-1.999s.896-2 2.001-2c1.104 0 2 .896 2 2s-.896 1.999-2 1.999zm0-12.999v5.999h-16v-5.999h16zm-24-13.001h31.999v3h-31.999zm0 5h31.999v3h-31.999z"></path>
                                        </svg>
							</span> <span class="property-info-entry"> <span
								class="property-info-label">Garages</span> <span
								class="property-info-value">2</span>
							</span>
						</div>


					</div>
					<!-- .property-meta -->

					<div class="section">
						<h4 class="s-property-title">서비스 설명</h4>
						<div class="s-property-content">
							<p>Nulla quis dapibus nisl. Suspendisse ultricies Nulla quis
								dapibus nisl. Suspendisse ultricies commodo arcu nec pretium.
								Nullam sed arcu ultricies commodo arcu nec pretium. Nullam sed
								arcu ultricies Nulla quis dapibus nisl. Suspendisse ultricies
								commodo arcu nec pretium. Nullam sed arcu ultricies Nulla quis
								dapibus nisl. Suspendisse ultricies commodo arcu nec pretium.
								Nullam sed arcu ultricies</p>
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
								<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or
									More Spaces,Covered Parking,Valet Parking</span></li>

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
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">Swimming
									Pool</a></li>
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">3
									Stories</a></li>
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">Central
									Cooling</a></li>
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">Jog
									Path 2</a></li>
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">2
									Lawn</a></li>
							<li><a
								href="<%=request.getContextPath()%>/service/services.jsp">Bike
									Path</a></li>
						</ul>

					</div>
					<!-- End features area  -->
					<c:if test="${board.youtube != ''}">
					<div class="section property-video">
						<h4 class="s-property-title">Service Video</h4>
						<div class="video-thumb">
							<a class="video-popup" href="yout" title="Virtual Tour"> <img
								src="<%=request.getContextPath()%>/assets/img/property-video.jpg"
								class="img-responsive wp-post-image" alt="Exterior">
							</a>
						</div>
					</div>
					</c:if>
					<!-- End video area  -->
				</div>
			</div>

			<div class="col-md-4 p0">
				<aside class="sidebar sidebar-property blog-asside-right">
					<div class="dealer-widget">
						<div class="dealer-content">
							<div class="inner-wrapper">

								<div class="clear">
									<div class="col-xs-4 col-sm-4 dealer-face">
									<c:choose>
										<c:when test="${seller.filename != null }">
										<a href="#"> <img
											src="<%=request.getContextPath()%>/assets/img/client-face1.png"
											class="img-circle">
										</a>
										</c:when>
										<c:otherwise>
										<a href="#"> <img
											src="<%=request.getContextPath()%>/assets/img/no_image.png"
											class="img-circle">
										</a>
										</c:otherwise>
										</c:choose>
									</div>
									<div class="col-xs-8 col-sm-8 ">
										<h3 class="dealer-name">
											<a href="#">${board.ltitle }</a> <span>${board.email }</span>
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
									<c:if test="${seller.address != null }">
										<li><i class="pe-7s-map-marker strong"> </i> 9089 your
											adress her</li>
									</c:if>
										<li><i class="pe-7s-mail strong"> </i>
											${board.email }</li>
										
										<li><i class="pe-7s-call strong"> </i> ${board.lphone_number }</li>
										<li><i class="pe-7s-user strong"> </i><a
											href="<%=request.getContextPath()%>/account/faq.jsp"
											style="color: #FFF"> FAQ </a></li>
									</ul>
									<h5>전문가 소개</h5>
									<p>소개자료 나중에 띄울거임</p>
								</div>
							</div>
						</div>
					</div>
					
					<!-- payment -->
					<div class="panel panel-default sidebar-menu wow fadeInRight animated">
	<div class="panel-heading">
		<h3 class="panel-title">구매하기</h3>
	</div>
	<div class="panel-body search-widget">
		<form id="smart_search" action="<%=request.getContextPath()%>/board" method="get" class=" form-inline">
					<input type="hidden" name="cmd" value="smart_search">
			<c:when test="">
			<fieldset>
				<div class="row">
					<div class="col-xs-12">
						<select id="lunchBegins" class="selectpicker" name="search_category" form="smart_search"
							data-live-search="true" data-live-search-style="begins"
							title="Select Your Categroy">
							<option>워드프레스</option>
							<option>웹사이트 개발</option>
							<option>쇼핑몰·커머스</option>
							<option>모바일앱·웹</option>
							<option>프로그램 개발</option>
							<option>게임</option>
							<option>데이터베이스</option>
							<option>데이터분석·리포트</option>
							<option>서버 및 기술지원</option>
							<option>QA·테스트</option>
							<option>파일변환</option>
							<option>챗봇</option>
							<option>기타</option>
						</select>
					</div>
				</div>
			</fieldset>
			</c:when>	
			<fieldset>
				<div class="row">
					<div class="col-xs-12">
						<input class="button btn largesearch-btn" value="${board.lprice } 원/VAT포함"
							type="submit">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>
					<!-- End of payment -->

				</aside>
			</div>
		</div>
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/lightslider.min.js"></script>

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