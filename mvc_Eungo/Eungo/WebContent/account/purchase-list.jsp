<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Purchase List</title>

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
				<h1 class="page-title">구매한 서비스</h1>
			</div>
		</div>
	</div>
</div>

<!-- property area -->
<div class="content-area recent-property"
	style="background-color: #FFF;">
	<div class="container">
		<div class="row">
			<div
				class="col-md-9 pr-30 padding-top-40 properties-page user-properties">
				<div class="section">					
				</div>

				<div class="section">
					<div id="list-type" class="proerty-th-list">
						<c:forEach var="board" items="${board }" varStatus="status">
							<div class="col-md-4 p0">
								<div class="box-two proerty-item">
									<div class="item-thumb">
										<a
											href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${purchase[status.index].lnumber}"><img
											src="${board.limage }"></a>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a
												href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${purchase[status.index].lnumber}">
												${board.ltitle}</a>
										</h5>
										<div class="dot-hr">패키지 : ${purchase[status.index].product_name}</div>
										<span class="pull-left">구매한 날짜 : ${purchase[status.index].date}</span><br>
										<span class="pull-left">단가 : ${purchase[status.index].price}원</span><br>
										<span class="pull-left">수량 : ${purchase[status.index].quantity}개</span>
										 <span class="proerty-price pull-right">
											${purchase[status.index].total_price} 원</span>
										<div class="property-icon">
											<c:forEach var="i" begin="1" end="${board.good }"
												step="1">
												<span class="starR on">별${i}</span>
											</c:forEach>
											<c:forEach var="i" begin="1" end="${ 5- board.good }"
												step="1">
												<span class="starR">별${i}</span>
											</c:forEach>
											<div class="pull-right">
												  <a href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${purchase[status.index].lnumber}"
													class="button">보기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>

				<div class="section">
					<div class="pull-right">
						<div class="pagination">
							<ul>
								<c:choose>
									<c:when test="${paging eq null }">
										<li><a
											href="<%=request.getContextPath()%>/board?cmd=index_board">구매한 내역이 없습니다</a></li>
									</c:when>
									<c:otherwise>
										<c:forEach var="paging" items="${paging }">
											<li><a
												href="<%=request.getContextPath()%>/purchase?cmd=purchase_list&pageNum=${paging.value}">${paging.key}</a></li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 p0 padding-top-40">
				<div class="blog-asside-right">					
					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">추천 서비스</h3>
						</div>
						<div class="panel-body recent-property-widget"></div>
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