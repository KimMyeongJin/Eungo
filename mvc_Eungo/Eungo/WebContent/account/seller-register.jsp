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
<title>GARO ESTATE | Account page</title>
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
				<h1 class="page-title">Register for Seller</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">

		<div class="col-md-6">
			<div class="box-for overflow">
				<div class="col-md-12 col-xs-12 register-blocks">
					<h2>Account Info:</h2>
					<form action="<%=request.getContextPath()%>/member?cmd=seller_registerProc"
						method="post">
						
						<div class="form-group">
							<label>Your Email</label> <input
								required="required" type="text" class="form-control"
								name="email" value="${sessionScope.email }" readonly="readonly">
						</div>
						<div class="form-group">
						<label>Bank</label>
							<select id="lunchBegins" class="selectpicker" name="bank_code_std" form="smart_search" data-live-search="true" data-live-search-style="begins" title="Select Your Bank">
								<option value="001">농협</option>
								<option value="002">신한</option>
								<option value="003">우리</option>
								<option value="004">국민</option>
								<option value="005">카카오뱅크</option>
								<option value="006">IBK기업</option>
								<option value="007">KEB하나</option>
								<option value="008">SC제일</option>
								<option value="009">대구</option>
								<option value="010">부산</option>
								<option value="011">광주</option>
								<option value="012">새마을</option>
								<option value="013">경남</option>
							</select>
						</div>
						<div class="form-group">
							<label>Account</label> <input type="text"
								required="required" class="form-control" name="account_num">
						</div>						
						<div class="form-group">
							<label>Identity Number</label> <input type="text"								
								class="form-control" name="account_holder_info" value="${member.birthday }" readonly="readonly">
								<small><a href="#">계좌등록된 생년월일과 다를 경우 회원정보를 먼저 수정해주세요.</a></small>
						</div>						
						<div class="form-group">
							<label for="name">Introduce Yourself</label> 
							<textarea rows="10" cols="50"></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-default">Register</button>
						</div>
					</form>
				</div>
			</div>
		</div>



	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
</body>
</html>