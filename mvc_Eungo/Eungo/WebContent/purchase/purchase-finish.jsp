<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Purchase Finish</title>

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
				<h1 class="page-title">결제완료 페이지</h1>
			</div>
		</div>
	</div>
</div>
<!-- End page header -->
<div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 120px;">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
				<!-- /.feature title -->
				<h2>결제가 완료되었습니다.</h2>
			</div>
		</div>
		<div class="row">
			<div class="row testimonial">
				<div class="col-md-12" style="text-align: center;">
					<div class="col-sm-6 col-md-3" style="float: none;display: inline-block;">
						<div class="box-two proerty-item">
							결제번호 : pur_number
							<br>
							결제시간 : date
						</div>
					</div>
				</div>
			</div>
		</div>
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