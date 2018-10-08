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
<title>Mvc Eungo | Account page</title>
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
					<h1 class="page-title">Home New account / Sign in</h1>
				</div>
			</div>
		</div>
	</div>

	<!-- register-area -->
	<div class="register-area"
		style="background-color: rgb(249, 249, 249);">
		<div class="container">

			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 register-blocks">
						<h2>New account :</h2>
						<form
							action="<%=request.getContextPath()%>/member?cmd=member_join"
							method="post">

							<div class="form-group">
								<label for="email">Email</label> <input type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" autofocus="autofocus" required="required"
									class="form-control" name="email" id="validationEmail">
								<small id="checkMsg"></small>
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password" required="required"
									class="form-control" name="password" id="password1">								
							</div>
							<div class="form-group">
								<label for="password">Confirm Password</label> <input required="required"
									type="password" class="form-control" name="password_check"
									id="password2">
								<small id="checkPwd"></small>
							</div>
							<div class="form-group">
								<label for="name">Phone Number</label> <input type="tel" placeholder="01012345678" pattern="(02|[0-9]{3})[0-9]{3,4}[0-9]{4}"
									class="form-control" name="phonenumber" id="phonenumber">
							</div>
							<div class="form-group">
								<label>Gender <small>(required)</small></label><br> 
								<input type="radio" name="gender" class="form-control" value="M" required="required"><label>male</label>
								<input type="radio" name="gender" class="form-control" value="F" required="required"><label>female</label>
							</div>
							<div class="form-group">
								<label for="name">Birthday</label> <input type="date"
									class="form-control" name="birthday" id="birthday" max="">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-default">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks">
						<h2>Login :</h2>
						<form action="<%=request.getContextPath() %>/member?cmd=member_login" method="post">
							<div class="form-group">
								<label for="email">Email</label> <input type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required"
									class="form-control" name="email" id="validationEmail_login">								
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password" required="required"
									class="form-control" name="password" id="password">
							</div>							
							<div class="text-center">								
								<button type="submit" class="btn btn-default">Log in</button>
							</div>
							<!-- <a href="">아이디,비밀번호 찾기</a> -->
							</form>							
						<br>						


						<h2>Social login :</h2>

						<p class="login-select">
							<a class="login-social" href="../face.jsp"><i class="fa fa-facebook"></i>&nbsp;Facebook</a>
							<a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a>													
							<a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>
							<a class="login-social" href="<%=request.getContextPath()%>/member?cmd=naver_login"><i class="fa fa-Naver"></i>&nbsp;&nbsp;Naver&nbsp;&nbsp;</a>
						<p>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer area-->
	<%@include file="../include/footer.jsp"%>	
	<script>
		window.onload = function() {
			document.getElementById("validationEmail").onchange = sendId;			
			document.getElementById("password1").onchange = checkPwd;
			document.getElementById("password2").onchange = checkPwd;
		}

		function sendId() {
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
		}
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
	<!-- //password-script -->
</body>
</html>