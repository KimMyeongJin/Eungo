<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="com.google.gson.Gson"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | User profile Page</title>
<script language="javascript">
	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	//document.domain = "abc.go.kr";

	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("/Eungo/popup/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
	}
</script>
<script>


	function sendPw() {
				var pw = $("#password").val();
				if(pw != ''){	
				$.ajax({
					async : true,
					type : 'POST',
					data : pw,
					url : "<%=request.getContextPath()%>/member?cmd=member_pwcheck",
						dataType : "json",
						contentType : "application/json;charset=utf-8",
						success : function(data) {
							if (data == 1) {
								alert("비밀번호 확인.");
								$("#password1").removeAttr("readonly");
								$("#password2").removeAttr("readonly");
							} else if (data == -1) {
								alert("비밀번호가 틀렸습니다.");
							}
						},
						error : function(error) {
							alert("error : " + error);
						}
					});
		} else if (pw == '') {
			alert("비밀번호를 입력해주세요.");
		}

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
					Hello
				</h1>
			</div>
		</div>
	</div>
</div>
<!-- End page header -->

<!-- property area -->
<div class="content-area user-profiel"
	style="background-color: #FCFCFC;">
	&nbsp;
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 profiel-container">
				<form id="form" name="form"
					action="<%=request.getContextPath()%>/member?cmd=member_updateProc"
					enctype="multipart/form-data" method="POST">
					<div class="profiel-header">
						<h3>
							<b>BUILD</b> YOUR PROFILE <br> <small>This
								information will let us know more about you.</small>
						</h3>
						<hr>
					</div>

					<div class="clear">
						<div class="col-sm-3 col-sm-offset-1">

							<div class="picture-container">
								<div class="picture">
									<img class="picture-src" id="wizardPicturePreview"
										src="${member.profile }" /> <input name="profile" type="file"
										id="wizard-picture">
								</div>
								<h6>Choose Picture</h6>
							</div>
						</div>

						<div class="col-sm-3 padding-top-25">

							<div class="form-group">
								<label>Email </label> <input name="email" readonly="readonly"
									class="form-control" value="${member.email}">
							</div>
							<div class="form-group" style="margin-top: 28%">
								<label for="name">Phone Number</label> <input type="tel"
									value="${member.phonenumber }"
									pattern="(02|[0-9]{3})[0-9]{3,4}[0-9]{4}" class="form-control"
									name="phonenumber" id="phonenumber">
							</div>
							<div class="form-group">
								<label>Birth Day</label> <input name="birthday" type="text"
									class="form-control"
									pattern="[0-9]{4}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1}"
									value="${member.birthday}">
							</div>
						</div>
						<div class="col-sm-3 padding-top-25">
							<div class="form-group row" style="margin-left: 1%">
								<label>password </label> <input id="password" name="password"
									type="password" class="form-control" />
								<button id="pwck" name="pwck" type="button" onclick="sendPw()"
									class="btn btn-info" style="margin-top: 2%; float: right;">check</button>

							</div>
							<div class="form-group">
								<label>modify password </label> <input id="password1" readonly
									name="mod_password" type="password" class="form-control"
									style="width: 110%">

							</div>
							<div class="form-group">
								<label>Confirm password </label> <input id="password2" readonly
									name="check_password" type="password" class="form-control"
									style="width: 110%"> <small id="checkPwd"></small>
							</div>

						</div>
						<div class="col-sm-6 padding-top-25"
							style="float: right; margin-right: 14%;">
							<div class="form-group">
								<label>address </label>

								<div id="callBackDiv">
									<input id="roadFullAddr" name="roadFullAddr" type="text"
										class="form-control" maxlength="20" value="${member.address }"
										readonly>
								</div>
								<button class="btn btn-info float-right" onclick="goPopup()"
									type="button" style="float: right; margin: 2%;">주소입력</button>
							</div>

						</div>
						<c:if test="${seller}">
							<div class="col-sm-6 padding-top-25"
								style="float: right; margin-right: 14%;">
								<div class="form-group" style="margin-left: 71px">
									<label>판매자 소개</label>									
										<label for="name"></label>
										<textarea name="seller_intro" rows="5" cols="50">${seller_intro.seller_intro }</textarea>
								</div>
							</div>
						</c:if>
					</div>
					<div class="col-sm-5 col-sm-offset-1">
						<br>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- //email check -->

<!-- password-script -->
<script>
	window.onload = function() {
		document.getElementById("password1").onchange = checkPwd;
		document.getElementById("password2").onchange = checkPwd;
	}
	function checkPwd() {
		var f1 = document.forms[0];
		var pw1 = document.getElementById("password1").value;
		var pw2 = document.getElementById("password2").value;
		if (pw1 != pw2) {
			document.getElementById('checkPwd').style.color = "red";
			document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요.";
			document.getElementById("password2").setCustomValidity(
					"동일한 암호를 입력하세요.");
		} else {
			document.getElementById('checkPwd').style.color = "black";
			document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다.";
			document.getElementById("password2").setCustomValidity('');
		}
	}
</script>
<!-- Footer area-->
<%@include file="/include/footer.jsp"%>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.bootstrap.wizard.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/wizard.js"></script>
</body>
</html>