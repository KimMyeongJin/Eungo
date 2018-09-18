<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | property User profile Page</title>

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
					Hello : <span class="orange strong">Kimaro kyoto</span>
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
				<form action="<%=request.getContextPath()%>/member?cmd=member_updateProc"
				 method="POST">
				
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
									<img src="assets/img/avatar.png" class="picture-src"
										id="wizardPicturePreview" title="" /> <input type="file"
										id="wizard-picture">
								</div>
								<h6>Choose Picture</h6>
							</div>
						</div>

						<div class="col-sm-3 padding-top-25">

							<div class="form-group">
								<label>Email <small>(required)</small></label> <input
									name="email" readonly="readonly" class="form-control"
									value="${member.email}">
							</div>
							<div class="form-group">
								<label>Phone Number<small>(required)</small></label> <input
									name="phonenumber" type="text" class="form-control"
									value="${member.phonenumber}">
							</div>
							<div class="form-group">
								<label>Gender </label>
								<input readonly="readonly" name="gender" class="form-control" value="${member.gender}" />
							</div>
							<div class="form-group">
								<label>Birth Day<small>(required)</small></label> <input
									name="birthday" type="text" class="form-control"
									value="${member.birthday}">
							</div>
						</div>
						<div class="col-sm-3 padding-top-25">
							<div class="form-group">
								<label>Password </label> <input
									name="password" type="password" id="password" class="form-control">
							</div>							
							<div class="form-group">
								<label>New password  </label> <input id="password1" name=""
									type="password" class="form-control">
							</div>
							<div class="form-group">
								<label>Confirm password </label> <input id="password2" name=""
									type="password" class="form-control">
									<small id="checkPwd"></small>
									
							</div>

						</div>

					</div>

					<div class="col-sm-5 col-sm-offset-1">
						<br> <button type="submit" class="btn btn-warning">Update</button>		
					</div>
					
				
				 </form>
			</div>
		</div>
		<!-- end row -->
	
	</div>
</div>

<script>
		window.onload = function() {
			document.getElementById("validationEmail").onchange = sendId;
			document.getElementById("password1").onchange = checkPwd;
			document.getElementById("password2").onchange = checkPwd;
		}

		/* function sendId() {
			var dom = document.getElementById("validationEmail");
			var result = dom.value;
			console.log("result : " + result);
			$.ajax({
				type : "POST",
				url : "../member?cmd=member_emailcheck",
				dataType : "text",
				contentType : "application/text;charset=utf-8",
				data : result,
				success : function(data) {
					var listView = document.getElementById('checkMsg');
					if (result == '') {
						listView.innerHTML = "Email을 입력해주세요";
						listView.style.color = "red";
						document.getElementById("validationEmail")
								.setCustomValidity("이메일을 입력해주세요.");
					} else if (data == 2) {
						listView.innerHTML = "사용 할 수 있는 Email 입니다";
						listView.style.color = "blue";
						document.getElementById("validationEmail")
								.setCustomValidity('');
					} else if (data == 1) {
						listView.innerHTML = "이미 등록된 Email 입니다";
						listView.style.color = "red";
						document.getElementById("validationEmail")
								.setCustomValidity("가입된 이메일입니다.");
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("에러 발생~~\n" + textStatus + ":" + errorThrown);
				}

			});
		} */
	</script>
	<!-- //email check -->
	
	<!-- password-script -->
	<script>
		/* function validatePassword() {
		    var pass2 = document.getElementById("password2").value;
		    var pass1 = document.getElementById("password1").value;
		    if (pass1 != pass2)
		        document.getElementById("password2").setCustomValidity("Passwords Don't Match");
		    else
		        document.getElementById("password2").setCustomValidity('');
		    //empty string means no validation error
		} */

		function checkPwd() {
			var f1 = document.forms[0];
			var pw1 = document.getElementById("password1").value;
			var pw2 = document.getElementById("password2").value;
			if (pw1 != pw2) {
				document.getElementById('checkPwd').style.color = "red";
				document.getElementById('password2').innerHTML = "동일한 암호를 입력하세요.";
				document.getElementById("password2").setCustomValidity(
						"동일한 암호를 입력하세요.");
			} else {
				document.getElementById('checkPwd').style.color = "black";
				document.getElementById('password2').innerHTML = "암호가 확인 되었습니다.";
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