<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Service page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/lightslider.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	function fnMove(seq) {
		var offset = $("#div" + seq).offset();
		$('html, body').animate({
			scrollTop : offset.top
		}, 400);
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
				<h1 class="page-title">${board.lcategory}</h1>
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
						<h1 class="property-title pull-left">
							<a
								href="<%=request.getContextPath()%>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=${board.lcategory}">${board.lcategory}</a>
							> <a
								href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${board.lnumber}">${board.ltitle }</a>
						</h1>

					</div>

					<div class="property-meta entry-meta clearfix ">
						<div class="row" style="margin-left: 1%;">
							<button onclick="fnMove('1')" style="width: 20%;">서비스설명</button>
							<button onclick="fnMove('2')" style="width: 25%;">가격정보</button>
							<button onclick="fnMove('3')" style="width: 25%;">취소및환불규정</button>
							<button onclick="fnMove('4')" style="width: 25%;">서비스평가</button>
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
								<%-- <a class="video-popup" href="yout" title="Virtual Tour"> <img
									src="<%=request.getContextPath()%>/assets/img/property-video.jpg"
									class="img-responsive wp-post-image" alt="Exterior">
								</a> --%>
								<iframe id="player" type="text/html" width="90%" height="409"
									src="http://www.youtube.com/embed/${board.youtube }"
									frameborder="0" webkitallowfullscreen="" mozallowfullscreen=""
									allowfullscreen=""></iframe>
								"

							</div>
						</div>
					</c:if>
					<!-- End video area  -->
					<div class="section additional-details" id="div2">

						<h4 class="s-property-title">가격 정보</h4>
						<c:if
							test="${price.deluxe_price ne '0' && price.premium_price ne '0' }">
							<ul class="additional-details-list clearfix">
								<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-title"></span>
									<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">STANDARD<br>${price.standard_price}<br>(VAT포함)
								</span> <span class="col-xs-6 col-sm-4 col-md-3 add-d-title">DELUXE<br>${price.deluxe_price}<br>(VAT포함)
								</span> <span class="col-xs-6 col-sm-4 col-md-3 add-d-title">PREMIUM<br>${price.premium_price}<br>(VAT포함)
								</span></li>
								<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">패키지
										설명</span> <span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_title }<br>${price.standard_content}</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_title }<br>${price.deluxe_content}</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_title }<br>${price.premium_content}</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">수정
										횟수</span> <span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_modify }</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_modify }</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_modify }</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">작업
										시간</span> <span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.standard_time }</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.deluxe_time }</span>
									<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">${price.premium_time }</span>
								</li>
							</ul>
						</c:if>
						<c:if
							test="${price.deluxe_price == '0' && price.premium_price == '0'}">
							<ul class="additional-details-list clearfix">
								<li><span class="col-xs-6 col-sm-4 col-md-6 add-d-title"></span>
									<span class="col-xs-6 col-sm-4 col-md-6 add-d-title">STANDARD<br>${price.standard_price}<br>(VAT포함)
								</span></li>
								<li><span class="col-xs-6 col-sm-4 col-md-6 add-d-entry">패키지
										설명</span> <span class="col-xs-6 col-sm-8 col-md-6 add-d-entry">${price.standard_title }<br>${price.standard_content}</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-6 add-d-entry">수정
										횟수</span> <span class="col-xs-6 col-sm-8 col-md-6 add-d-entry">${price.standard_modify }</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-6 add-d-entry">작업
										시간</span> <span class="col-xs-6 col-sm-8 col-md-6 add-d-entry">${price.standard_time }</span>
								</li>
							</ul>
						</c:if>

						<c:if test="${price.premium_price == '0' && price.deluxe_price ne '0' }">
							<ul class="additional-details-list clearfix">
								<li><span class="col-xs-6 col-sm-4 col-md-4.5 add-d-title"></span>
									<span class="col-xs-6 col-sm-4 col-md-4.5 add-d-title">STANDARD<br>${price.standard_price}<br>(VAT포함)
								</span> <span class="col-xs-6 col-sm-4 col-md-4.5 add-d-title">DELUXE<br>${price.deluxe_price}<br>(VAT포함)
								</span></li>
								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-entry">패키지
										설명</span> <span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.standard_title }<br>${price.standard_content}</span>
									<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.deluxe_title }<br>${price.deluxe_content}</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-entry">수정
										횟수</span> <span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.standard_modify }</span>
									<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.deluxe_modify }</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-entry">작업
										시간</span> <span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.standard_time }</span>
									<span class="col-xs-6 col-sm-8 col-md-4 add-d-entry">${price.deluxe_time }</span>
								</li>
							</ul>
						</c:if>
					</div>
					<!-- End additional-details area  -->
					<br> <br>
					<div class="section property-features" id="div3">

						<h4 class="s-property-title">취소 및 환불 규정</h4>
						<br>
						<ul>
							<li>${board.cancel_rule }</li>
						</ul>

					</div>
					<!-- End features area  -->

					<div class="section" id="div4">
						<h5 class="s-property-title">서비스 평가</h5>
						<div style="text-align: center;">
							<c:forEach var="i" begin="1" end="${board.good }" step="1">
  								<span class="starR on">별${i}</span>
  							</c:forEach>
  							<c:forEach var="i" begin="1" end="${5 - board.good }" step="1">
  									<span class="starR">별${i}</span>
  							</c:forEach>									
								</div>
								<hr>
						<div id="del1">		
							<c:if
								test="${sessionScope.email ne null && sessionScope.email eq pur.email}">								
								<div class="starRev">
  									<span class="starR" id="star1">별1</span>
  									<span class="starR" id="star2">별2</span>
  									<span class="starR" id="star3">별3</span>
 									<span class="starR" id="star4">별4</span>
  									<span class="starR" id="star5">별5</span>	
								</div>
								<br>
								<div class="form-group">
									<textarea class="form-control" id="replyData" rows="3"></textarea>
								</div>								
								<button class="btn btn-default" type="submit"
									onclick="sendReply()">입력</button>
							</c:if>
						</div>
					</div>
					<div id="reply">
						<c:forEach var="re_list" items="${re_list }">
							<div class="media mb-4" id="${re_list.reply_number }reply">
								<c:if test="${re_list.email eq sessionScope.email}">
									<a href="javascript:;"
										onclick="replyDelete('${re_list.reply_number}')"> <img
										class="d-flex mr-3 rounded-circle"
										src="<%=request.getContextPath()%>/assets/img/check/clear.png">
									</a>
									<small>리뷰</small>
								</c:if>
								<c:if test="${sessionScope.email eq seller.email}">
									<a href="javascript:;"
										onclick="replyDelete('${re_list.reply_number}')"> <img
										class="d-flex mr-3 rounded-circle"
										src="<%=request.getContextPath()%>/assets/img/check/clear.png">
									</a>
									<small>리뷰</small>
								</c:if>
								<div class="media-body"
									id="${re_list.reply_number }answer_locate">
									<h5 class="mt-0">${re_list.reply_comment}</h5>
									<small>${re_list.email }</small> ${re_list.re_date }<br>
									<div>
										<c:forEach var="i" begin="1" end="${re_list.star }" step="1">
  											<span class="starR on">별${i}</span>
  										</c:forEach>
  										<c:forEach var="i" begin="1" end="${5 - re_list.star }" step="1">
  											<span class="starR">별${i}</span>
  										</c:forEach>									
									</div>
								</div>
								<div id="del2">
									<c:if
										test="${sessionScope.email eq seller.email && re_list.reply_answer eq null}">
										<div class="form-group">
											<textarea class="form-control" id="answerData" rows="3"></textarea>
										</div>
										<button class="btn btn-default"
											onclick="sendAnswer('${re_list.reply_number}')">입력</button>
									</c:if>
								</div>
								<div class="media mb-4" id="${re_list.reply_number }answer"
									style="text-align: right;">
									<c:if
										test="${sessionScope.email eq seller.email && re_list.reply_answer ne null}">
										<a href="javascript:;"
											onclick="answerDelete('${re_list.reply_number}')"> <img
											class="d-flex mr-3 rounded-circle"
											src="<%=request.getContextPath()%>/assets/img/check/clear.png">
										</a>
										<small>답글</small>
									</c:if>
									<div class="media-body">
										<h5 class="mt-0">${re_list.reply_answer}</h5>
										${re_list.an_date }
									</div>
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
												<a href="#"> <img src="${seller.profile }"
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
											<li><i class="pe-7s-map-marker strong"> </i>${seller.address}</li>
										</c:if>
										<li><i class="pe-7s-mail strong"> </i> ${board.email }</li>

										<li><i class="pe-7s-call strong"> </i>
											${board.lphone_number }</li>
										<li><i class="pe-7s-user strong"> </i><a
											href="<%=request.getContextPath()%>/account/faq.jsp"
											style="color: #FFF"> FAQ </a></li>
										<li><h5>전문가 소개</h5></li>
										<li><p>${seller_intro.seller_intro }</p></li>
										<c:if test="${sessionScope.email eq seller.email}">
											<li><a type="button"
												href="<%=request.getContextPath()%>/board?cmd=service_modify&lnumber=${board.lnumber}"
												class="btn btn-default">수정하기</a> <a type="button"
												href="<%=request.getContextPath()%>/board?cmd=service_delete&lnumber=${board.lnumber}"
												class="btn btn-default">삭제하기</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<!-- payment -->
					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">구매하기</h3>
						</div>
						<div class="panel-body search-widget">
							<form
								action="<%=request.getContextPath()%>/purchase?cmd=purchase"
								method="post" class=" form-inline">
								<details open>
									<summary style="font-size: large;">${price.standard_price }원
										STANDARD</summary>
									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<div style="margin-left: 7%; color: cornflowerblue;">${price.standard_title }</div>
												<div style="margin-left: 7%; color: cornflowerblue;">${price.standard_content }</div>
												<input type="hidden" name="lnumber"
													value="${board.lnumber }"> <input type="hidden"
													name="email" value="${seller.email }"> <input
													type="hidden" name="standard_price"
													value="${price.standard_price }"> <input
													type="hidden" name="standard_title"
													value="${price.standard_title }"> <input
													type="hidden" name="standard_time"
													value="${price.standard_time }"> <input
													class="button btn largesearch-btn"
													value="${price.standard_price } 원/VAT포함" type="submit">
												<div style="float: right;">
													<span>${price.standard_modify }회(수정) </span><span>
														/${price.standard_time }</span>
												</div>


											</div>
										</div>
									</fieldset>
								</details>
							</form>
							<c:if test="${price.deluxe_price ne '0' }">
							<form
								action="<%=request.getContextPath()%>/purchase?cmd=purchase"
								method="post" class=" form-inline">
								<details>
									<summary style="font-size: large;">${price.deluxe_price }원
										DELUXE</summary>
									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<div style="margin-left: 7%; color: cornflowerblue;">${price.deluxe_title }</div>
												<div style="margin-left: 7%; color: cornflowerblue;">${price.deluxe_content }</div>
												<input type="hidden" name="lnumber"
													value="${board.lnumber }"> <input type="hidden"
													name="email" value="${seller.email }"> <input
													type="hidden" name="deluxe_price"
													value="${price.deluxe_price }"> <input
													type="hidden" name="deluxe_title"
													value="${price.deluxe_title }"> <input
													type="hidden" name="deluxe_time"
													value="${price.deluxe_time }"> <input
													class="button btn largesearch-btn"
													value="${price.deluxe_price } 원/VAT포함" type="submit">
												<div style="float: right;">
													<span>${price.deluxe_modify }회(수정) </span><span>
														/${price.deluxe_time }</span>
												</div>

											</div>
										</div>
									</fieldset>
								</details>
							</form>
							</c:if>
							<c:if test="${price.premium_price ne '0' }">
								<form
									action="<%=request.getContextPath()%>/purchase?cmd=purchase"
									method="post" class=" form-inline">
									<details>
										<summary style="font-size: large;">${price.premium_price }원
											PREMIUM</summary>
										<fieldset>
											<div class="row">
												<div class="col-xs-12">
													<div style="margin-left: 7%; color: cornflowerblue;">${price.premium_title }</div>
													<div style="margin-left: 7%; color: cornflowerblue;">${price.premium_content }</div>
													<input type="hidden" name="lnumber"
														value="${board.lnumber }"> <input type="hidden"
														name="email" value="${seller.email }"> <input
														type="hidden" name="premium_price"
														value="${price.premium_price }"> <input
														type="hidden" name="premium_title"
														value="${price.premium_title }"> <input
														type="hidden" name="premium_time"
														value="${price.premium_time }"> <input
														class="button btn largesearch-btn"
														value="${price.premium_price } 원/VAT포함" type="submit">
													<div style="float: right;">
														<span>${price.premium_modify }회(수정) </span><span>
															/${price.premium_time }일</span>
													</div>
												</div>
											</div>
										</fieldset>
									</details>
								</form>
							</c:if>
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

function addDiv(reply_number, lnumber, email, reply_comment,re_date,star){
		var newDiv = document.createElement('div');
		newDiv.className = 'media mb-4';
		newDiv.id = reply_number+"reply";
		newDiv.innerHTML = "<a href='javascript:;' onclick='answerDelete("+reply_number+")'><img class='d-flex mr-3 rounded-circle' src='<%=request.getContextPath()%>/assets/img/check/clear.png'></a><div class='media-body'><h5 class='mt-0'>" + reply_comment + "</h5>" + email + re_date + star + "</div>";
		document.getElementById('reply').append(newDiv);
	}						

	function addDiv2(reply_number, lnumber, reply_answer, an_date){
		var newDiv = document.createElement('div');	
		newDiv.style = 'text-align: right';
		newDiv.className = 'media mb-4';
		newDiv.innerHTML = "<a href='javascript:;' onclick='replyDelete("+reply_number+")'><img class='d-flex mr-3 rounded-circle' src='<%=request.getContextPath()%>/assets/img/check/clear.png'></a><div class='media-body'><h5 class='mt-0'>" + reply_answer + "</h5>" + an_date + "</div>";
		document.getElementById(reply_number+'answer_locate').append(newDiv);
	}
	
	function sendReply() {
		var reply_comment = $("#replyData").val();		
		var star_value = 0;
		if (reply_comment == ' ') {
			alert('글을 입력하세요.');
			return false;
		}
		
		for(var i = 1;i<6;i++ ){
			if($("#star"+i).attr("class")=='starR on'){
				star_value++;
			}
		}
		
		var jsonData = {
			"star" : star_value,
			"reply_comment" : reply_comment,
			"email" : "${sessionScope.email}",
			"lnumber" : "${board.lnumber}",
			"pur_number" : "${pur.pur_number}"
		};

		var result = JSON.stringify(jsonData);

		replyData.value = ' ';

		$.ajax({
			async : true,
			type : "POST",
			url : "<%=request.getContextPath()%>/reply?cmd=reply_comment",
			dataType : "text",
			contentType : "application/text:charset=utf-8",
			data : result,
			success : function(data) {
				var result = JSON.parse(data);
				addDiv(result.reply_number, result.lnumber, result.email,
						result.reply_comment, result.re_date, result.star);
				$("#del1").hide();			
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("에러 발생~~\n" + textStatus + ":" + errorThrown);
			}
		});
	}
	
	function sendAnswer(reply_number) {
		var answerData = document.getElementById("answerData");
		var reply_number = reply_number;
		var reply_answer = answerData.value; //안녕
		if (reply_answer == ' ') {
			alert('글을 입력하세요.');
			return false;
		}

		var jsonData = {
			"reply_answer" : reply_answer,			
			"reply_number" : reply_number			
		};

		var result = JSON.stringify(jsonData);

		answerData.value = ' ';

		$.ajax({
			async : true,
			type : "POST",
			url : "<%=request.getContextPath()%>/reply?cmd=reply_answer",
			dataType : "text",
			contentType : "application/text:charset=utf-8",
			data : result,
			success : function(data) {
				var result = JSON.parse(data);
				addDiv2(result.reply_number, result.lnumber, result.reply_answer, result.an_date);
				$("#del2").hide();
				
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("에러 발생~~\n" + textStatus + ":" + errorThrown);
			}
		});
	}
	
	function replyDelete(reply_number) {
		var reply_number = reply_number;
		var id = reply_number+"reply";
		
		$.ajax({
			async : true,
			type : "POST",
			url : "<%=request.getContextPath()%>/reply?cmd=reply_delete",
			dataType : "text",
			contentType : "application/text:charset=utf-8",
			data : reply_number,
			success : function(data) {
				$('#' + id).remove();
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("에러 발생~~\n" + textStatus + ":" + errorThrown);
			}
		});
	}
	
	function answerDelete(reply_number) {
		var reply_number = reply_number;
		var id = reply_number+"answer";
		
		$.ajax({
			async : true,
			type : "POST",
			url : "<%=request.getContextPath()%>/reply?cmd=answer_delete",
			dataType : "text",
			contentType : "application/text:charset=utf-8",
			data : reply_number,
			success : function(data) {
				$('#' + id).remove();
			},
			error : function(jqXHR, textStatus, errorThrown) {
				console.log("에러 발생~~\n" + textStatus + ":" + errorThrown);
			}
		});
	}
	
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
</script>
</body>
</html>