<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="com.naverLogin.search.Member"%>
<%@page import="com.naverLogin.search.ApiMemberPro"%>
<%@page import="com.google.gson.Gson"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Account page</title>
<%@include file="/include/head.jsp"%>
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<%@include file="/include/header.jsp"%>
	<!--End top header -->

	<%@include file="/include/navbar.jsp"%>
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
	<!-- End page header -->


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
								<label for="email">Email</label> <input type="text"
									class="form-control" name="email" id="validationEmail">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" name="password" id="password1">
							</div>
							<div class="form-group">
								<label for="password">Confirm Password</label> <input
									type="password" class="form-control" name="password_check"
									id="password2">
								<small id="checkPwd"></small>
							</div>
							<div class="form-group">
								<label for="name">Phone Number</label> <input type="text"
									class="form-control" name="phonenumber" id="phonenumber">
							</div>
							<div class="form-group">
								<label for="name">Gender</label> <input type="text"
									class="form-control" name="gender" id="gender">
							</div>
							<div class="form-group">
								<label for="name">Birthday</label> <input type="text"
									class="form-control" name="birthday" id="birthday">
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
						<form action="member_login" method="post">
							<div class="form-group">
								<label for="email">Email</label> <input type="text"
									class="form-control" name="email" id="email">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" name="password" id="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-default">Log in</button>
							</div>
							<%
								String clientId = "Tdm9CqMQithoF4ZWgDSw";//애플리케이션 클라이언트 아이디값";
								String redirectURI = URLEncoder.encode("http://localhost:8000/Eungo/callback.jsp", "UTF-8");
								SecureRandom random = new SecureRandom();
								String state = new BigInteger(130, random).toString();
								String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
								apiURL += "&client_id=" + clientId;
								apiURL += "&redirect_uri=" + redirectURI;
								apiURL += "&state=" + state;

								System.out.println("apiURL 요기: " + apiURL);
								session.setAttribute("state", state);
							%>
							<a href="<%=apiURL%>"><img height="50"
								src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a>

						</form>
						<br>

						<h2>Social login :</h2>

						<p>
							<a class="login-social" href="#"><i class="fa fa-facebook"></i>&nbsp;Facebook</a>
							<a class="login-social" href="#"><i class="fa fa-google-plus"></i>&nbsp;Gmail</a>
							<a class="login-social" href="#"><i class="fa fa-twitter"></i>&nbsp;Twitter</a>
						</p>
					</div>

				</div>
			</div>

		</div>
	</div>

	<!-- Footer area-->
	<%@include file="/include/footer.jsp"%>

	<script src="assets/js/modernizr-2.6.2.min.js"></script>

	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>

	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>

	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>

	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/price-range.js"></script>

	<script src="assets/js/main.js"></script>
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
				url : "member?cmd=member_emailcheck",
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