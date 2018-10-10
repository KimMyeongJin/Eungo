<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="footer-area">

	<div class=" footer">
		<div class="container">
			<div class="row">

				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>(주)은고 사업자 정보</h4>
						<div class="footer-title-line"></div>

						<img src="<%=request.getContextPath() %>/assets/img/footer-logo2.png" alt="" class="wow pulse"
							data-wow-delay="1s">
						<p>-포트폴리오 프로젝트 </p>												
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>카테고리</h4>
						<div class="footer-title-line"></div>
						<ul class="footer-menu">
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=워드프레스">워드프레스</a></li>							
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=웹사이트+개발">웹사이트 개발</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=쇼핑몰·커머스">쇼핑몰·커머스</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=모바일앱·웹">모바일앱·웹</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=프로그램+개발">프로그램 개발</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=게임">게임</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=데이터베이스">데이터베이스</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=데이터분석·리포트">데이터분석·리포트</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=서버+및+기술지원">서버 및 기술지원</a></li>	
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=QA·테스트">QA·테스트</a></li>				
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=파일변환">파일변환</a></li>
							<li style="height: 22px"><a href="<%=request.getContextPath() %>/board?cmd=smart_search&search_text=&per_page=9&pageNum=1&search_category=챗봇">챗봇</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer">
						<h4>팀 소개</h4>
						<div class="footer-title-line"></div>
						<ul class="footer-menu">
							<li><a href="#">강석모</a>
							</li>
							<li><a href="#">이주영</a>							
							</li>
							<li><a href="#">남우영</a>							
							</li>
							<li><a href="#">김명진</a>							
							</li>
							<li><a href="#">박형진</a>							
							</li>
							<li><a href="#">이현준</a>							
							</li>
							<li><a href="#">박원영</a>							
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 wow fadeInRight animated">
					<div class="single-footer news-letter">
						<h4>메일 보내기</h4>
						<div class="footer-title-line"></div>						

						<form>
							<div class="input-group">
								<input class="form-control" type="text"
									placeholder="idsiemu@gmail.com" readonly="readonly"> <span
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