<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | User properties Page</title>

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
				<h1 class="page-title">List Layout With Sidebar</h1>
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
					<div class="page-subheader sorting pl0 pr-10">
						<ul class="sort-by-list pull-left">
							<li class="active"><a href="javascript:void(0);"
								class="order_by_date" data-orderby="property_date"
								data-order="ASC"> Service Date <i
									class="fa fa-sort-amount-asc"></i>
							</a></li>
							<li class=""><a href="javascript:void(0);"
								class="order_by_price" data-orderby="property_price"
								data-order="DESC"> service Price <i
									class="fa fa-sort-numeric-desc"></i>
							</a></li>
						</ul>

						<!--/ .sort-by-list-->
						<div class="items-per-page pull-right">
							<label for="items_per_page"><b>Servcie per page :</b></label>
							<div class="sel">
								<select id="items_per_page" name="per_page"
									onchange="per_page()">
									<c:choose>
										<c:when test="${per_page == 3 }">
											<option value="3" selected="selected">3</option>
										</c:when>
										<c:otherwise>
											<option value="3">3</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 6 }">
											<option value="6" selected="selected">6</option>
										</c:when>
										<c:otherwise>
											<option value="6">6</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 9 }">
											<option value="9" selected="selected">9</option>
										</c:when>
										<c:otherwise>
											<option value="9">9</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 12 }">
											<option value="12" selected="selected">12</option>
										</c:when>
										<c:otherwise>
											<option value="12">12</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 15 }">
											<option value="15" selected="selected">15</option>
										</c:when>
										<c:otherwise>
											<option value="15">15</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 30 }">
											<option value="30" selected="selected">30</option>
										</c:when>
										<c:otherwise>
											<option value="3">30</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 45 }">
											<option value="45" selected="selected">45</option>
										</c:when>
										<c:otherwise>
											<option value="45">45</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${per_page == 60 }">
											<option value="60" selected="selected">60</option>
										</c:when>
										<c:otherwise>
											<option value="60">60</option>
										</c:otherwise>
									</c:choose>
								</select>
							</div>
							<!--/ .sel-->
						</div>
						<!--/ .items-per-page-->
					</div>
				</div>

				<div class="section">
					<div id="list-type" class="proerty-th-list">
						<c:forEach var="my_list" items="${my_list }">
							<div class="col-md-4 p0">
								<div class="box-two proerty-item">
									<div class="item-thumb">
										<a
											href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${my_list.lnumber}"><img
											src="${my_list.limage }"></a>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a
												href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${my_list.lnumber}">
												${my_list.ltitle}</a>
										</h5>
										<div class="dot-hr"></div>
										<span class="pull-left"></span> <span
											class="proerty-price pull-right">
											${my_list.standard_price} 원</span>
										<div style="text-overflow: ellipsis; overflow: hidden; height: 120px">${my_list.lcontent}</div>
										<div class="property-icon">
											<img
												src="<%=request.getContextPath()%>/assets/img/icon/bed.png">(5)|
											<img
												src="<%=request.getContextPath()%>/assets/img/icon/shawer.png">(2)|
											<img
												src="<%=request.getContextPath()%>/assets/img/icon/cars.png">(1)
											<div class="dealer-action pull-right">
												<a
													href="<%=request.getContextPath()%>/board?cmd=service_modify&lnumber=${my_list.lnumber}"
													class="button">Edit </a> <a
													href="<%=request.getContextPath()%>/board?cmd=service_delete&lnumber=${my_list.lnumber}"
													class="button delete_user_car">Delete</a> <a
													href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${my_list.lnumber}"
													class="button">View</a>
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
											href="<%=request.getContextPath()%>/board?cmd=my_services&pageNum=1&per_page=9">해당
												게시물이 없습니다</a></li>
									</c:when>
									<c:otherwise>
										<c:forEach var="paging" items="${paging }">
											<li><a
												href="<%=request.getContextPath()%>/board?cmd=my_services&pageNum=${paging.value}&per_page=${per_page}">${paging.key}</a></li>
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
							<h3 class="panel-title">Hello Kimaro</h3>
						</div>
						<div class="panel-body search-widget"></div>
					</div>
					<div
						class="panel panel-default sidebar-menu wow fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">Recommended</h3>
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