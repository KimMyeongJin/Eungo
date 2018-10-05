<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="footer-area">

	<div class=" footer">
		<div class="container">
			<div class="row">

				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>About us</h4>
						<div class="footer-title-line"></div>

						<img src="<%=request.getContextPath() %>/assets/img/footer-logo2.png" alt="" class="wow pulse"
							data-wow-delay="1s">
						<p>Lorem ipsum dolor cum necessitatibus su quisquam molestias.
							Vel unde, blanditiis.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>Quick links</h4>
						<div class="footer-title-line"></div>
						<ul class="footer-menu">
							<li><a href="<%=request.getContextPath() %>/service/services.jsp">sales</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="<%=request.getContextPath() %>/account/submit-service.jsp">Submit service </a></li>
							<li><a href="<%=request.getContextPath() %>/account/contact.jsp">Contact us</a></li>
							<li><a href="<%=request.getContextPath() %>/account/faq.jsp">fqa</a></li>
							<li><a href="<%=request.getContextPath() %>/account/faq.jsp">Terms </a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>Last News</h4>
						<div class="footer-title-line"></div>
						<ul class="footer-blog">
							<li>
								<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
									<a href="<%=request.getContextPath() %>/single/single.jsp"> <img
										src="<%=request.getContextPath() %>/assets/img/demo/small-proerty-2.jpg">
									</a> <span class="blg-date">12-12-2016</span>

								</div>
								<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
									<h6>
										<a href="<%=request.getContextPath() %>/single/single.jsp">Add news functions </a>
									</h6>
									<p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum
										dolor sit amet, nulla ...</p>
								</div>
							</li>

							<li>
								<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
									<a href="<%=request.getContextPath() %>/single/single.jsp"> <img
										src="<%=request.getContextPath() %>/assets/img/demo/small-proerty-2.jpg">
									</a> <span class="blg-date">12-12-2016</span>

								</div>
								<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
									<h6>
										<a href="<%=request.getContextPath() %>/single/single.jsp">Add news functions </a>
									</h6>
									<p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum
										dolor sit amet, nulla ...</p>
								</div>
							</li>

							<li>
								<div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
									<a href="single/single.jsp"> <img
										src="<%=request.getContextPath() %>/assets/img/demo/small-proerty-2.jpg">
									</a> <span class="blg-date">12-12-2016</span>

								</div>
								<div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
									<h6>
										<a href="<%=request.getContextPath() %>/single/single.jsp">Add news functions </a>
									</h6>
									<p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum
										dolor sit amet, nulla ...</p>
								</div>
							</li>


						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer news-letter">
						<h4>Stay in touch</h4>
						<div class="footer-title-line"></div>
						<p>Lorem ipsum dolor sit amet, nulla suscipit similique
							quisquam molestias. Vel unde, blanditiis.</p>

						<form>
							<div class="input-group">
								<input class="form-control" type="text"
									placeholder="E-mail ... "> <span
									class="input-group-btn">
									<button class="btn btn-primary subscribe" type="button">
										<i class="pe-7s-paper-plane pe-2x"></i>
									</button>
								</span>
							</div>
							<!-- /input-group -->
						</form>

						<div class="social pull-right">
							<ul>
								<li><a class="wow fadeInUp animated"
									href="https://twitter.com/kimarotec"><i
										class="fa fa-twitter"></i></a></li>
								<li><a class="wow fadeInUp animated"
									href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i
										class="fa fa-facebook"></i></a></li>
								<li><a class="wow fadeInUp animated"
									href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a class="wow fadeInUp animated"
									href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i
										class="fa fa-instagram"></i></a></li>
								<li><a class="wow fadeInUp animated"
									href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i
										class="fa fa-dribbble"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="footer-copy text-center">
		<div class="container">
			<div class="row">
				<div class="pull-left">
					<span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a>
						, All rights reserved 2016
					</span>
				</div>
				<div class="bottom-menu pull-right">
					<ul>
						<li><a class="wow fadeInUp animated" href="#"
							data-wow-delay="0.2s">Home</a></li>
						<li><a class="wow fadeInUp animated" href="#"
							data-wow-delay="0.3s">Service</a></li>
						<li><a class="wow fadeInUp animated" href="#"
							data-wow-delay="0.4s">Faq</a></li>
						<li><a class="wow fadeInUp animated" href="#"
							data-wow-delay="0.6s">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
	<script src="<%=request.getContextPath() %>/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/jquery-1.10.2.min.js"></script>
	<script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/bootstrap-select.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/easypiechart.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/jquery.easypiechart.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/wow.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/icheck.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/price-range.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>