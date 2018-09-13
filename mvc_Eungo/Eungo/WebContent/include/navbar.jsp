<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
		String email = null;
		if(request.getParameter("email")!= null){
						email = request.getParameter("email");
		}
%>
<nav class="navbar navbar-default ">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navigation">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><img
				src="assets/img/logo.png" alt=""></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
			<%if(email == null) {%>
				<button class="navbar-btn nav-button wow bounceInRight login"
					onclick="location.href='account.jsp'" data-wow-delay="0.45s">Login</button>
			<%} else { %>
				<button class="navbar-btn nav-button wow bounceInRight login"
					onclick="location.href='#'" data-wow-delay="0.45s">Logout</button>
			<% } %>
				<button class="navbar-btn nav-button wow fadeInRight"
					onclick="location.href='submit-property.jsp'"
					data-wow-delay="0.48s">Submit</button>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				<li class="dropdown ymm-sw " data-wow-delay="0.1s"><a
					href="index.jsp" class="dropdown-toggle active"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home
						<b class="caret"></b>
				</a>
					<ul class="dropdown-menu navbar-nav">
						<li><a href="index-2.jsp">Home Style 2</a></li>
						<li><a href="index-3.jsp">Home Style 3</a></li>
						<li><a href="index-4.jsp">Home Style 4</a></li>
						<li><a href="index-5.jsp">Home Style 5</a></li>

					</ul></li>

				<li class="wow fadeInDown" data-wow-delay="0.2s"><a class=""
					href="properties.jsp">Properties</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.3s"><a class=""
					href="property.jsp">Property</a></li>
				<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"
					data-hover="dropdown" data-delay="200">Template <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li>
							<div class="yamm-content">
								<div class="row">
									<div class="col-sm-3">
										<h5>Home pages</h5>
										<ul>
											<li><a href="index.jsp">Home Style 1</a></li>
											<li><a href="index-2.jsp">Home Style 2</a></li>
											<li><a href="index-3.jsp">Home Style 3</a></li>
											<li><a href="index-4.jsp">Home Style 4</a></li>
											<li><a href="index-5.jsp">Home Style 5</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h5>Pages and blog</h5>
										<ul>
											<li><a href="blog.jsp">Blog listing</a></li>
											<li><a href="single.jsp">Blog Post (full)</a></li>
											<li><a href="single-right.jsp">Blog Post (Right)</a></li>
											<li><a href="single-left.jsp">Blog Post (left)</a></li>
											<li><a href="contact.jsp">Contact style (1)</a></li>
											<li><a href="contact-3.jsp">Contact style (2)</a></li>
											<li><a href="contact_3.jsp">Contact style (3)</a></li>
											<li><a href="faq.jsp">FAQ page</a></li>
											<li><a href="404.jsp">404 page</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h5>Property</h5>
										<ul>
											<li><a href="property-1.jsp">Property pages style
													(1)</a></li>
											<li><a href="property-2.jsp">Property pages style
													(2)</a></li>
											<li><a href="property-3.jsp">Property pages style
													(3)</a></li>
										</ul>

										<h5>Properties list</h5>
										<ul>
											<li><a href="properties.jsp">Properties list style
													(1)</a></li>
											<li><a href="properties-2.jsp">Properties list
													style (2)</a></li>
											<li><a href="properties-3.jsp">Properties list
													style (3)</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h5>Property process</h5>
										<ul>
											<li><a href="submit-property.jsp">Submit - step 1</a></li>
											<li><a href="submit-property.jsp">Submit - step 2</a></li>
											<li><a href="submit-property.jsp">Submit - step 3</a></li>
										</ul>
										<h5>User account</h5>
										<ul>
											<li><a href="register.jsp">Register / login</a></li>
											<li><a href="user-properties.jsp">Your properties</a></li>
											<li><a href="submit-property.jsp">Submit property</a></li>
											<li><a href="change-password.jsp">Change password</a></li>
											<li><a href="user-profile.jsp">Your profile</a></li>
										</ul>
									</div>
								</div>
							</div> <!-- /.yamm-content -->
						</li>
					</ul></li>

				<li class="wow fadeInDown" data-wow-delay="0.5s"><a
					href="contact.jsp">Contact</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>