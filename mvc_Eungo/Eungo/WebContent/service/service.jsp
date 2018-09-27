<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | Service page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/lightslider.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
    function fnMove(seq){
        var offset = $("#div" + seq).offset();
        $('html, body').animate({scrollTop : offset.top}, 400);
    }
</script>
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
						<div class="row">
							<button onclick="fnMove('1')">서비스설명</button>
							<button onclick="fnMove('2')">가격정보</button>
							<button onclick="fnMove('3')">취소및환불규정</button>
							<button onclick="fnMove('4')">서비스평가</button>
						</div>
					</div>
					<!-- .property-meta -->

					<div class="section" id="div1">
						<h4 class="s-property-title">서비스 설명</h4>
						<div class="s-property-content">
							<p>${board.lcontent }</p>
						</div>
					</div>
					<!-- End description area  -->
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
					<div class="section additional-details" id="div2">

						<h4 class="s-property-title">가격 정보</h4>

						<ul class="additional-details-list clearfix">
							<li>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-title"></span>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">STANDARD<br>${price.standard_price}<br>(VAT포함)</span>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">DELUXE<br>${price.deluxe_price}<br>(VAT포함)</span>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">PREMIUM<br>${price.premium_price}<br>(VAT포함)</span>
							</li>

							<li>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">패키지 설명</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_title }<br>${price.standard_content}</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_title }<br>${price.deluxe_content}</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_title }<br>${price.premium_content}</span>
							</li>
							<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">수정 횟수</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_modify }</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_modify }</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_modify }</span>
							</li>
							<li>
								<span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">작업 시간</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_time }</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_time }</span>
								<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_time }</span>
							</li>
						</ul>
					</div>
					<!-- End additional-details area  -->
					<br><br>
					<div class="section property-features" id="div3">

						<h4 class="s-property-title">취소 및 환불 규정</h4>
						<br>
						<ul>
							<li>
								${board.cancel_rule }
							</li>
						</ul>

					</div>
					<!-- End features area  -->
					
						<div class="card my-4" id="div4">
							
							<h5 class="s-property-title">서비스 평가</h5>
							<div class="card-body">
								<div class="form-group">
									<textarea class="form-control" id="replyData" rows="3"></textarea>
								</div>
								<c:choose>
									<c:when test="${empty sessionScope.email}">
										<input type="button" class="btn btn-primary" onclick="alert('로그인 후 이용가능합니다.')" value="Submit">
									</c:when>
									<c:otherwise>
										<input type="button" class="btn btn-primary" onclick="sendReply()" value="Submit">
									</c:otherwise>
								</c:choose>

							</div>
						</div>
						
						<div id="reply">
							<c:forEach var="item" items="">
								<div class="media mb-4">
									<c:choose>
										<c:when test="">
											<a href="#">	
											<img class="d-flex mr-3 rounded-circle" 
											src="<%=request.getContextPath()%>/assets/img/check/clear.png">
											</a>
										</c:when>
										<c:otherwise>
										<img class="d-flex mr-3 rounded-circle" 
											src="<%=request.getContextPath()%>/assets/img/check/reply.png">
										</c:otherwise>
									</c:choose>
								
									<div class="media-body">
										<h5 class="mt-0">내용</h5>
										email
									</div>
								</div>
							</c:forEach>							
						</div>
						<!-- Comments Form -->
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
										<c:when test="${seller.profile != null }">
										<a href="#"> <img
											src="${seller.profile }" class="img-circle">
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
										<li><i class="pe-7s-map-marker strong"> </i>${seller.address}</li>
									</c:if>
										<li><i class="pe-7s-mail strong"> </i>
											${board.email }</li>
										
										<li><i class="pe-7s-call strong"> </i> ${board.lphone_number }</li>
										<li><i class="pe-7s-user strong"> </i><a
											href="<%=request.getContextPath()%>/account/faq.jsp"
											style="color: #FFF"> FAQ </a></li>
									</ul>
									<h5>전문가 소개</h5>
									<p>seller_intro</p>
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
		<form action="<%=request.getContextPath()%>/purchase" method="get" class=" form-inline">								
		<details open>
			<summary>${price.standard_price }원 STANDARD</summary>		
			<fieldset>
				<div class="row">
					<div class="col-xs-12">					
					<div>${price.standard_title }</div>
						<div>${price.standard_content }</div><br>
						<div><span>${price.standard_modify }회	</span><span>	${price.standard_time }</span></div>
						<input class="button btn largesearch-btn" name="standard_price" value="${price.standard_price } 원/VAT포함"
							type="submit">
						
					</div>
				</div>
			</fieldset>
			</details>
			<details>
			<summary>${price.deluxe_price }원 DELUXE</summary>
			<fieldset>
				<div class="row">
					<div class="col-xs-12">					
					<div>${price.deluxe_title }</div>
						<div>${price.deluxe_content }</div><br>
						<div><span>${price.deluxe_modify }회	</span><span>	${price.deluxe_time }</span></div>
						<input class="button btn largesearch-btn" name="deluxe_price" value="${price.deluxe_price } 원/VAT포함"
							type="submit">
						
					</div>
				</div>
			</fieldset>
			</details>
			<details>
			<summary>${price.premium_price }원 PREMIUM</summary>		
			<fieldset>
				<div class="row">
					<div class="col-xs-12">					
					<div>${price.premium_title }</div>
						<div>${price.premium_content }</div><br>
						<div><span>${price.premium_modify }회	</span><span>	${price.premium_time }</span></div>
						<input class="button btn largesearch-btn" name="premium_price" value="${price.premium_price } 원/VAT포함"
							type="submit">
						
					</div>
				</div>
			</fieldset>
			</details>
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