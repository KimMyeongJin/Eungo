<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<title>GARO ESTATE | Change password page</title>

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


<!-- property area -->
<div class="content-area user-profiel"
	style="background-color: #FCFCFC;">
	&nbsp;
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 profiel-container">
				<form action="" method="POST">
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
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
</body>
</html>