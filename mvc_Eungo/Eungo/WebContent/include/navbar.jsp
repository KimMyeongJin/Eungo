<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String email = null;
	if (request.getParameter("email") != null) {
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
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/index.jsp"><img
				src="<%=request.getContextPath()%>/assets/img/logo2.png" alt=""></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
				<%
					if (email == null) {
				%>
				<button class="navbar-btn nav-button wow bounceInRight login"
					onclick="location.href='<%=request.getContextPath()%>/account/account.jsp'"
					data-wow-delay="0.45s">Login</button>
				<%
					} else {
				%>
				<button class="navbar-btn nav-button wow bounceInRight login"
					onclick="location.href='#'" data-wow-delay="0.45s">Logout</button>
				<%
					}
				%>
				<button class="navbar-btn nav-button wow fadeInRight"
					onclick="location.href='<%=request.getContextPath()%>/account/submit-property.jsp'"
					data-wow-delay="0.48s">Submit</button>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				<li class="wow fadeInDown" data-wow-delay="0.1s"><a
					href="<%=request.getContextPath()%>/index.jsp"> Home</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.2s"><a class=""
					href="<%=request.getContextPath()%>/properties/properties.jsp">Properties</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.3s"><a class=""
					href="<%=request.getContextPath()%>/property/property.jsp">Property</a></li>
				<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"
					data-hover="dropdown" data-delay="200">Template <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li>
							<div class="yamm-content">
								<div class="row">
									<div class="col-sm-7"></div>									
									<div class="col-sm-3">																			
										<h5>User account</h5>
										<ul>											
											<li><a
												href="<%=request.getContextPath()%>/account/user-properties.jsp">Your
													properties</a></li>
											<li><a
												href="<%=request.getContextPath()%>/account/submit-property.jsp">Submit
													property</a></li>
											<li><a
												href="<%=request.getContextPath()%>/account/change-password.jsp">Change
													password</a></li>
											<li><a
												href="<%=request.getContextPath()%>/account/user-profile.jsp">Your
													profile</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul></li>
				<%-- <li class="wow fadeInDown" data-wow-delay="0.5s"><a
					href="<%=request.getContextPath()%>/contact/contact.jsp">Contact</a></li> --%>
				<!-- 당장 contact.jsp 필요없어서 주석처리함  -->
			</ul>
		</div>
	</div>
</nav>