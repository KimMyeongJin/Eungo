<%@page import="com.eungo.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>GARO ESTATE | Properties page</title>

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
<!-- End page header -->

<!-- property area -->
<div class="properties-area recent-property"
	style="background-color: #FFF;">
	<div class="container">
		<div class="row">
			<div class="col-md-3 p0 padding-top-40">
				<div class="blog-asside-right pr0">

					<!-- Smart Search -->
					<%@include file="../include/smartSearch.jsp"%>
					<!-- End of Smart Search -->

				</div>
			</div>

			<c:choose>
				<c:when test="${totalValue == 0 }">
					<div class="col-md-9  pr0 padding-top-40 properties-page">
						<div class="col-md-12 clear">
							<div class="col-xs-10 page-subheader sorting pl0">
								<ul class="sort-by-list">
									<li class="active"><a href="javascript:void(0);"
										class="order_by_date" data-orderby="property_date"
										data-order="ASC"> Property Date <i
											class="fa fa-sort-amount-asc"></i>
									</a></li>
									<li class=""><a href="javascript:void(0);"
										class="order_by_price" data-orderby="property_price"
										data-order="DESC"> Property Price <i
											class="fa fa-sort-numeric-desc"></i>
									</a></li>
								</ul>
								<!--/ .sort-by-list-->

								<div class="items-per-page">
									<label for="items_per_page"><b>Property per page :</b></label>
									<div class="sel">
										<select id="items_per_page" name="per_page">
											<option value="3">3</option>
											<option value="6">6</option>
											<option value="9">9</option>
											<option selected="selected" value="12">12</option>
											<option value="15">15</option>
											<option value="30">30</option>
											<option value="45">45</option>
											<option value="60">60</option>
										</select>
									</div>
									<!--/ .sel-->
								</div>
								<!--/ .items-per-page-->
							</div>

							<div class="col-xs-2 layout-switcher">
								<a class="layout-list" href="javascript:void(0);"> <i
									class="fa fa-th-list"></i>
								</a> <a class="layout-grid active" href="javascript:void(0);"> <i
									class="fa fa-th"></i>
								</a>
							</div>
							<!--/ .layout-switcher-->
						</div>
					</div>
					<div class="col-md-9  pr0 padding-top-40 properties-page"></div>
				</c:when>
				<c:otherwise>
					<div class="col-md-9  pr0 padding-top-40 properties-page">
						<div class="col-md-12 clear">
							<div class="col-xs-10 page-subheader sorting pl0">
								<ul class="sort-by-list">
									<li class="active"><a href="javascript:void(0);"
										class="order_by_date" data-orderby="property_date"
										data-order="ASC"> Property Date <i
											class="fa fa-sort-amount-asc"></i>
									</a></li>
									<li class=""><a href="javascript:void(0);"
										class="order_by_price" data-orderby="property_price"
										data-order="DESC"> Property Price <i
											class="fa fa-sort-numeric-desc"></i>
									</a></li>
								</ul>
								<!--/ .sort-by-list-->

								<div class="items-per-page">
									<label for="items_per_page"><b>Property per page :</b></label>
									<div class="sel">
										<select id="items_per_page" name="per_page">
											<option value="3">3</option>
											<option value="6">6</option>
											<option value="9">9</option>
											<option selected="selected" value="12">12</option>
											<option value="15">15</option>
											<option value="30">30</option>
											<option value="45">45</option>
											<option value="60">60</option>
										</select>
									</div>
									<!--/ .sel-->
								</div>
								<!--/ .items-per-page-->
							</div>

							<div class="col-xs-2 layout-switcher">
								<a class="layout-list" href="javascript:void(0);"> <i
									class="fa fa-th-list"></i>
								</a> <a class="layout-grid active" href="javascript:void(0);"> <i
									class="fa fa-th"></i>
								</a>
							</div>
							<!--/ .layout-switcher-->
						</div>
					</div>
					<div class="col-md-9  pr0 padding-top-40 properties-page">
						<div class="col-md-12 clear">
							<div id="list-type" class="proerty-th">

								<c:forEach var="list" items="${list}">
									<div class="col-sm-6 col-md-4 p0">
										<div class="box-two proerty-item">
											<div class="item-thumb">
												<a
													href="<%=request.getContextPath()%>/property/property.jsp"><img
													src="<%=request.getContextPath()%>/assets/img/demo/property-3.jpg"></a>
											</div>

											<div class="item-entry overflow">
												<h5>
													<a
														href="<%=request.getContextPath()%>/property/property.jsp">
														${list.ltitle } </a>
												</h5>
												<div class="dot-hr"></div>
												<span class="pull-left"><b> Area :</b> 120m </span> <span
													class="proerty-price pull-right"> $ 300,000</span>
												<p style="display: none;">Suspendisse ultricies
													Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse
													ultricies commodo arcu nec pretium ...</p>
												<div class="property-icon">
													<img
														src="<%=request.getContextPath()%>/assets/img/icon/bed.png">(5)|
													<img
														src="<%=request.getContextPath()%>/assets/img/icon/shawer.png">(2)|
													<img
														src="<%=request.getContextPath()%>/assets/img/icon/cars.png">(1)
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
						<div class="col-md-12">
							<div class="pull-right">
								<div class="pagination">
									<ul>
										<li><a href="#">Prev</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>

			
		</div>
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
</body>
</html>