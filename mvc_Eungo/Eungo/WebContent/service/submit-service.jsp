<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Submit Service Page</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/editor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>

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
				<h1 class="page-title">새로운 서비스 등록하기</h1>
			</div>
		</div>
	</div>
</div>

<!-- property area -->
<div class="content-area submit-property"
	style="background-color: #FCFCFC;">
	&nbsp;
	<div class="container">
		<div class="clearfix">
			<div class="wizard-container">
				<div class="wizard-card ct-wizard-orange" id="wizardProperty">
					<form id="submit_form" name="w_form"
						action="<%=request.getContextPath()%>/board?cmd=submit_service"
						method="post" enctype="multipart/form-data">
						<div class="wizard-header">
							<h3>
								<b>새로운</b> 서비스 등록 <br>
							</h3>
						</div>
						<ul>
							<li><a href="#step1" data-toggle="tab">Step 1 </a></li>
							<li><a href="#step2" data-toggle="tab">Step 2 </a></li>
							<li><a href="#step3" data-toggle="tab">Step 3 </a></li>
							<li><a href="#step4" data-toggle="tab">Finished </a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane" id="step1">
								<div class="row p-b-15  ">
									<h4 class="info-text"></h4><br>
									<div class="col-sm-4 col-sm-offset-1">
										<div class="picture-container">
											<div class="picture">
												<img
													src="<%=request.getContextPath()%>/assets/img/default-property.jpg"
													class="picture-src" id="wizardPicturePreview" title="" />
												<input type="file" id="wizard-picture" name="limage"
													required="required">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>서비스 제목 <small>(required)</small></label> <input
												name="ltitle" type="text" class="form-control"
												required="required">
										</div>
										<div class="col-sm-6" style="padding-left: 0px;">
											<div class="form-group">
												<label>서비스 카테고리 : <small>(required)</small></label>
												<select name="lcategory" id="lunchBegins"
													required="required" class="selectpicker"
													data-live-search="true" data-live-search-style="begins"
													title="Select category" form="submit_form">
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
										<div class="col-sm-6" style="padding-left: 30px; padding-right: 0px" >
											<div class="form-group">
												<label>연락처 </label> <input name="lphone_number"
													type="tel" placeholder="01012345678"
													pattern="(02|[0-9]{3})[0-9]{3,4}[0-9]{4}"
													class="form-control" value="${phonenumber }"
													required="required">
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group">
										<label>서비스 설명 :</label>
										<textarea id="textAreaContent" name="lcontent" rows="15"
											cols="80" style="width: 100%"></textarea>
									</div>
								</div>
							</div>
							<!--  End step 1 -->

							<div class="tab-pane" id="step2">
								<h4 class="info-text">이미지 및 동영상 추가</h4>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="property-images">이미지 추가 :</label> <input
												class="form-control" type="file" id="service-image1"
												name="limage2">
										</div>
										<div class="form-group">
											<input class="form-control" type="file" id="service-image2"
												name="limage3">
										</div>
										<div class="form-group">
											<input class="form-control" type="file" id="service-image3"
												name="limage4">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="property-video">동영상 추가(YouTube) :</label> <input
												class="form-control" value=""
												placeholder="http://www.youtube.com, http://vimeo.com"
												name="youtube" type="text">
										</div>
									</div>
								</div>
							</div>
							<!-- End step 2 -->

							<div class="tab-pane" id="step3">
								<h4 class="info-text">
									가격 책정 <small> 가격을 먼저 입력해주세요</small>
								</h4>
								<div class="row">
									<div class="col-sm-12">
										<ul class="additional-details-list clearfix" style=" text-align: -webkit-center;">
											<li><span class="col-xs-6 col-sm-4 col-md-3 add-d-title"></span>
												<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">STANDARD<br>
												<input type="number" value="0" name="standard_price"
													id="standard_price" required><br>(VAT포함)(단위/원)
											</span>
												<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">DELUXE<br>
												<input type="number" value="0" name="deluxe_price"
													id="deluxe_price"><br>(VAT포함)(단위/원)
											</span>
											
											<span class="col-xs-6 col-sm-4 col-md-3 add-d-title">PREMIUM<br>
												<input type="number" value="0" name="premium_price"
													id="premium_price"><br>(VAT포함)(단위/원)
											</span>


											<li>
													<h4><span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">패키지 제목</span></h4>
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<b><input type="text" value="입력"name="standard_title" id="standard_title" readonly="readonly"></b>
													</span> 
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<b><input type="text" value="입력"name="deluxe_title" id="deluxe_title" readonly="readonly"></b>
													</span> 
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<b><input type="text" value="입력"name="premium_title" id="premium_title" readonly="readonly"></b>
													</span>
													
													<span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">상세설명</span>
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" value="상세" type="text"  name="standard_content" id="standard_content">
													</span>
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" value="상세" type="text"  name="deluxe_content" id="deluxe_content">
													</span>
													<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" value="상세" type="text"  name="premium_content" id="premium_content">
													</span>
											
											</li>
											
											<li>
											<span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">수정횟수</span> 
												<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" type="number" name="standard_modify" value="0" id="standard_modify">
												</span>
												<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" type="number" name="deluxe_modify" value="0" id="deluxe_modify">
												</span>
												<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry">
													<input readonly="readonly" type="number" name="premium_modify" value="0" id="premium_modify">
												</span>
											</li>
											
											<li>
											<span class="col-xs-6 col-sm-4 col-md-3 add-d-entry">작업시간</span> 
											<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry"><input type="text" name="standard_time" value="0" id="standard_time" readonly="readonly"></span>
											<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry"><input type="text" name="deluxe_time" value="0" id="deluxe_time" readonly="readonly"></span>
											<span class="col-xs-6 col-sm-8 col-md-3 add-d-entry"><input type="text" name="premium_time" value="0" id="premium_time" readonly="readonly"></span>
											</li>
										</ul>
										
									</div>
								</div>
							</div>
							<!--  End step 3 -->


							<div class="tab-pane" id="step4">
								<div class="row">
									<div class="col-sm-12">
										<div class="form-group">
											<h4 class="info-text">취소 및 환불 규정</h4>
											<textarea id="cancel_rule" name="cancel_rule" rows="15"
												cols="80" style="width: 100%" required></textarea>
										</div>
									</div>
								</div>
							</div>
							<!--  End step 4 -->

						</div>

						<div class="wizard-footer">
							<div class="pull-right">
								<input type='button' class='btn btn-next btn-primary'
									name='next' value='Next' /> <input type="submit"
									class='btn btn-finish btn-primary ' name='finish'
									value='Finish' onclick="submitContents(this)" />
							</div>

							<div class="pull-left">
								<input type='button' class='btn btn-previous btn-default'
									name='previous' value='Previous' />
							</div>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
				<!-- End submit form -->
			</div>
		</div>
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/wizard.js"></script>

<!-- Naver Smart Editor 2 -->
<script>
	var form = document.w_form;
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "textAreaContent",
		sSkinURI : "<%=request.getContextPath()%>/editor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});

	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents(elClickedObj) {
		// 에디터의 내용이 textarea에 적용된다.
		oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);

		// 에디터의 내용에 대한 값 검증은 이곳에서
		// document.getElementById("textAreaContent").value를 이용해서 처리한다.

		try {
			elClickedObj.form.submit();
		} catch (e) {}
	}

	/*  // textArea에 이미지 첨부 */
	function pasteHTML(filepath) {
		var sHTML = '<img src=/Eungo/editor/upload/'+filepath+'>';
		oEditors.getById["textAreaContent"].exec("PASTE_HTML", [ sHTML ]);
	}
</script>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("standard_price").onchange = standard_price;
		document.getElementById("deluxe_price").onchange = deluxe_price;
		document.getElementById("premium_price").onchange = premium_price;
	}
	function standard_price() {
		$("#standard_title").removeAttr("readonly");
		$("#standard_content").removeAttr("readonly");
		$("#standard_modify").removeAttr("readonly");
		$("#standard_time").removeAttr("readonly");
	}

	function deluxe_price() {
		$("#deluxe_title").removeAttr("readonly");
		$("#deluxe_content").removeAttr("readonly");
		$("#deluxe_modify").removeAttr("readonly");
		$("#deluxe_time").removeAttr("readonly");
	}

	function premium_price() {
		$("#premium_title").removeAttr("readonly");
		$("#premium_content").removeAttr("readonly");
		$("#premium_modify").removeAttr("readonly");
		$("#premium_time").removeAttr("readonly");
	}
</script>
</body>
</html>