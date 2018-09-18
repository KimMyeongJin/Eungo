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
				<form
					action="<%=request.getContextPath()%>/member?cmd=member_updateProc"
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
								<label>Phone Number</label> <input
									name="lastname" type="text" class="form-control"
									value="${member.phonenumber}">
							</div>
							<div class="form-group">
								<label>Gender </label> <input
									name="firstname" readonly="readonly" class="form-control"
									value="${member.gender}">
							</div>
							<div class="form-group">
								<label>Birth Day<small>(required)</small></label> <input
									name="firstname" type="text" class="form-control"
									value="${member.birthday}">
							</div>
						</div>
						<c:choose>
							<c:when test="${salt != naver}">
									<div class="col-sm-3 padding-top-25">
							<div class="form-group">
								<label>Password <small>(required)</small></label>  <input name="Password" type="password"
									class="form-control"> <small>함수넣기</small>
							</div>
							<div class="form-group">
								<label>New password </label> <input name="new_password"
									id="password1" type="password" class="form-control">
							</div>
							<div class="form-group">
								<label>Confirm password </label> <input id="password2"
									type="password" class="form-control">
							</div>

						</div>
							</c:when>
							<c:otherwise>
							
							</c:otherwise>
						</c:choose>
					

					</div>

					<div class="col-sm-5 col-sm-offset-1">
						<br> <input type="submit" class='btn btn-finish btn-primary'
							name='update' value="update" />
					</div>
					<br>
				</form>

			</div>
		</div>
		<!-- end row -->

	</div>
</div>


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