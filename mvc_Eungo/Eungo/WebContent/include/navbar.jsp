<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

				<c:choose>
					<c:when test="${sessionScope.email!=null}">
						<button class="navbar-btn nav-button wow bounceInRight login"
							onclick="location.href='<%=request.getContextPath()%>/member?cmd=member_logout'"
							data-wow-delay="0.45s">로그아웃</button>
						<c:choose>
							<c:when test="${sessionScope.seller==true }">
								<button class="navbar-btn nav-button wow fadeInRight"
									onclick="location.href='<%=request.getContextPath()%>/board?cmd=submit_load'"
									data-wow-delay="0.48s">판매하기</button>
							</c:when>
							<c:otherwise>
								<button class="navbar-btn nav-button wow fadeInRight"
									onclick="location.href='<%=request.getContextPath()%>/member?cmd=seller_register'"
									data-wow-delay="0.48s">판매자 등록</button>
							</c:otherwise>
						</c:choose>
					</c:when>	
					<c:otherwise>
						<button class="navbar-btn nav-button wow bounceInRight login"
							onclick="location.href='<%=request.getContextPath()%>/account/account.jsp'"
							data-wow-delay="0.45s">로그인</button>
						<button class="navbar-btn nav-button wow fadeInRight"
							onclick="location.href='<%=request.getContextPath()%>/account/account.jsp'"
							data-wow-delay="0.48s">판매자 등록</button>
					</c:otherwise>
				</c:choose>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				<li class="wow fadeInDown" data-wow-delay="0.1s"><a
					href="<%=request.getContextPath()%>/index.jsp"> 은고</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.2s"><a class=""
					href="<%=request.getContextPath()%>/board?cmd=board_paging&pageNum=1&per_page=9">IT·프로그래밍</a></li>
				<c:if test="${sessionScope.email != null }">
					<li class="dropdown yamm-fw" data-wow-delay="0.3s"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="200">계정<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="yamm-content">
									<div class="row">
										<div class="col-sm-7"></div>
										<div class="col-sm-3">
											<h5>계정 정보</h5>
											<ul>
												<c:choose>
													<c:when test="${sessionScope.seller==true }">
														<li><a
															href="<%=request.getContextPath()%>/board?cmd=my_services&pageNum=1&per_page=9">판매중인 서비스</a></li>
														<li><a
															href="<%=request.getContextPath()%>/service/submit-service.jsp">판매하기</a></li>
													</c:when>
												</c:choose>
												<li><a
													href="<%=request.getContextPath()%>/purchase?cmd=purchase_list&pageNum=1">구매목록</a></li>
												<li><a
													href="<%=request.getContextPath()%>/member?cmd=member_update">프로필 보기</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</c:if>
				<c:if test="${sessionScope.email eq 'admin@admin.com' }">
				<li class="wow fadeInDown" data-wow-delay="0.4s"><a
					href="<%=request.getContextPath()%>/member?cmd=view_member&pageNum=1">관리자 페이지</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>