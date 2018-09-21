<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | Submit property Page</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

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
				<h1 class="page-title">Submit new service</h1>
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
								<b>Submit</b> YOUR SERVICE <br> <small>Lorem ipsum
									dolor sit amet, consectetur adipisicing.</small>
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
									<h4 class="info-text">Let's start with the basic
										information (with validation)</h4>
									<div class="col-sm-4 col-sm-offset-1">
										<div class="picture-container">
											<div class="picture">
												<img
													src="<%=request.getContextPath()%>/assets/img/default-property.jpg"
													class="picture-src" id="wizardPicturePreview" title="" />
												<input type="file" id="wizard-picture" name="limage" required="required">
											</div>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>Service name <small>(required)</small></label> <input required="required"
												name="ltitle" type="text" class="form-control"
												>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Property price <small>(required)</small></label> <input
													name="lprice" type="number" class="form-control" required="required">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Service category : <small>(required)</small></label>
												<select name="lcategory" id="lunchBegins" required
													class="selectpicker" data-live-search="true"
													data-live-search-style="begins" title="Select category"
													form="submit_form">
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
										<div class="form-group">
											<label>Phonenumber <small>(empty if you wanna
													use default phone number)</small></label> <input name="lphone_number" type="tel" placeholder="01012345678" pattern="[0-9]{11}"
												class="form-control" value="${phonenumber }" required="required">
										</div>
										<div class="form-group">
												<div class="checkbox">
													<label> <input type="checkbox"> 세금계산서
													</label>
												</div>
											</div>
									</div>
								</div>
							</div>
							<!--  End step 1 -->

							<div class="tab-pane" id="step2">
								<h4 class="info-text">How much your Property is Beautiful ?</h4>
								<div class="row">									
										<div class="col-sm-12">
											<div class="form-group">
												<label>Service Description :</label>
												<textarea id="textAreaContent" name="lcontent" rows="15"
													cols="80" ></textarea>
											</div>
										</div>				
									<br>
								</div>
							</div>
							<!-- End step 2 -->

							<div class="tab-pane" id="step3">
								<h4 class="info-text">Give us somme images and videos ?</h4>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="property-images">Chose Images :</label> <input
												class="form-control" type="file" id="service-image1" name="limage2">
										</div>
										<div class="form-group">
											<input class="form-control" type="file" id="service-image2" name="limage3">
										</div>
										<div class="form-group">
											<input class="form-control" type="file" id="service-image3" name="limage4">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="property-video">Property video :</label> <input
												class="form-control" value=""
												placeholder="http://www.youtube.com, http://vimeo.com"
												name="youtube" type="text">
										</div>
									</div>
								</div>
							</div>
							<!--  End step 3 -->


							<div class="tab-pane" id="step4">
								<h4 class="info-text">Finished and submit</h4>
								<div class="row">
									<div class="col-sm-12">
										<div class="">
											<p>
												<label><strong>Terms and Conditions</strong></label> By
												accessing or using GARO ESTATE services, such as posting
												your property advertisement with your personal information
												on our website you agree to the collection, use and
												disclosure of your personal information in the legal proper
												manner
											</p>

											<div class="checkbox">
												<label> <input type="checkbox" name="submit" required="required"/> <strong>Accept
														termes and conditions.</strong>
												</label>
											</div>

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
									name='previous' value='Previous'/>
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
      oAppRef: oEditors,
      elPlaceHolder: "textAreaContent",
      sSkinURI: "<%=request.getContextPath()%>/editor/SmartEditor2Skin.html",
      fCreator: "createSEditor2"
     
  });
  
  
 
  //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
  function submitContents(elClickedObj) {
      // 에디터의 내용이 textarea에 적용된다.
      oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
   
      // 에디터의 내용에 대한 값 검증은 이곳에서
      // document.getElementById("textAreaContent").value를 이용해서 처리한다.
    
      try {
          elClickedObj.form.submit();
      } catch(e) {
       
      }
  }
  document.getElementById("smart_editor2").setAttribute('style','width:'+editorArea.parentNode.offsetWidth+'px');

 
  // textArea에 이미지 첨부
  function pasteHTML(filepath){
      var sHTML = '<img src=../editor/upload/'+filepath+'>';
      oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
  }	
</script>
<script type="text/javascript">
	$("[name=submit]").attr("required".true);
	
</script>
</body>
</html>