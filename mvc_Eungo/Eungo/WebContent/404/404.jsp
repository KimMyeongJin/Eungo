<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | 404 page</title>

	<!-- Start header -->
	<%@include file="../include/header.jsp"%>
	<!-- End of header -->

	<!-- Start nav bar -->
	<%@include file="../include/navbar.jsp"%>
	<!-- End of nav bar -->

	<div class="content-area error-page"
		style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<h2 class="error-title">404</h2>
					<p>Sorry, the page you requested may have been moved or deleted</p>
					<a href="<%=request.getContextPath() %>/index.jsp" class="btn btn-default">Home</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer area-->
	<%@include file="../include/footer.jsp"%>
</body>
</html>