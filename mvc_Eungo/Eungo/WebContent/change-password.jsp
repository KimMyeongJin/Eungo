<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Change password page</title>
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

					<form action="" method="">

						<div class="profiel-header">
							<h3>
								<b>UPDATE</b> YOUR PASSWORD <br> <small>All change
									will send to your e-mail.</small>
							</h3>
							<hr>
						</div>

						<div class="clear">

							<div class="col-sm-10 col-sm-offset-1">
								<div class="form-group">
									<label>Password <small>(required)</small></label> <input
										name="Password" type="password" class="form-control">
								</div>
								<div class="form-group">
									<label>Confirm password : <small>(required)</small></label> <input
										type="password" class="form-control">
								</div>
							</div>
							<div class="col-sm-10 col-sm-offset-1">
								<input type='button'
									class='btn btn-finish btn-primary pull-right' name='update'
									value='Update' />
							</div>

						</div>




					</form>

				</div>
			</div>
			<!-- end row -->

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

</body>
</html>