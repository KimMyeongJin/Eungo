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
<title>Mvc Eungo | Seller Register</title>
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
				<h1 class="page-title">판매자 등록하기</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="box-for overflow">
				<div class="col-md-12 col-xs-12 register-blocks">
					<h2>계정 정보 입력:</h2>
					<form id="seller_register"
						action="<%=request.getContextPath()%>/member?cmd=seller_registerProc"
						method="post">

						<div class="form-group">
							<label>이메일</label> <input required="required" type="text"
								class="form-control" name="email" value="${sessionScope.email }"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label>은행</label> <select id="lunchBegins" class="selectpicker"
								name="bank_code_std" form="seller_register" data-live-search="true"
								data-live-search-style="begins" title="Select Your Bank">
								<option value="1=농협">농협</option>
								<option value="2=신한">신한</option>
								<option value="3=우리">우리</option>
								<option value="4=국민">국민</option>
								<option value="5=카카오뱅크">카카오뱅크</option>
								<option value="6=IBK기업">IBK기업</option>
								<option value="7=KEB하나">KEB하나</option>
								<option value="8=SC제일">SC제일</option>
								<option value="9=대구">대구</option>
								<option value="10=부산">부산</option>
								<option value="11=광주">광주</option>
								<option value="12=새마을">새마을</option>
								<option value="13=경남">경남</option>
							</select>
						</div>
						<div class="form-group">
							<label>계좌번호</label> <input type="text" required="required"
								class="form-control" name="account_num">
						</div>
						<div class="form-group">
							<label>생년 월일</label> <input type="text"
								class="form-control" name="account_holder_info"
								value="${member.birthday }" readonly="readonly"> <small><a
								href="#">계좌등록된 생년월일과 다를 경우 회원정보를 먼저 수정해주세요.</a></small>
						</div>
						<div class="form-group">
							<label for="name">판매자 소개하기</label>
							<textarea name="seller_intro" rows="10" cols="50"></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-default">등록하기</button>
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