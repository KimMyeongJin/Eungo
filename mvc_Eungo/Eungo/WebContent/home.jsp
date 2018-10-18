<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Home page</title>

<!-- Start header -->
<%@include file="/include/header.jsp"%>
<!-- End of header -->

<!-- Start nav bar -->
<%@include file="/include/navbar.jsp"%>
<!-- End of nav bar -->

<div class="slider-area">
	<div class="slider">
		<div id="bg-slider" class="owl-carousel owl-theme">

			<div class="item">
				<img src="assets/img/slide1/team.jpg" alt="GTA V">
			</div>

		</div>
	</div>
	<div class="slider-content">
		<div class="row">
			<div
				class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
				<h2>검색하기</h2>
				<div class="search-form wow pulse" data-wow-delay="0.8s">

					<form action="<%=request.getContextPath()%>/board"
						class=" form-inline">
						<div class="row">
							<div class="form-group">
								<input type="hidden" name="cmd" value="board_search"> <input
									type="text" name="search_text" class="form-control"
									placeholder="Key word"> <input type="hidden"
									name="per_page" value="9"> <input type="hidden"
									name="pageNum" value="1">
								<button class="btn search-btn" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- property area -->
<div class="content-area home-area-1 recent-property"
	style="background-color: #FCFCFC; padding-bottom: 55px;">
	<div class="container">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
				<!-- /.feature title -->
				<h2>최근 등록 게시물</h2>
				<p></p>
			</div>
		</div>

		<div class="row">
			<div class="proerty-th">
				<c:forEach var="new_list" items="${new_list}">
					<div class="col-sm-6 col-md-3 p0">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a
									href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${new_list.lnumber}"><img
								style="height: 225px" src="${new_list.limage }"></a>
							</div>
							<div class="item-entry overflow">
								<h5 style="overflow: hidden; text-overflow: ellipsis;white-space: nowrap; width: 100%;">
									<a
										href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${new_list.lnumber}">${new_list.ltitle }</a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"></span> <span
									class="proerty-price pull-right">${new_list.standard_price }원</span>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="col-sm-6 col-md-3 p0">
					<div class="box-tree more-proerty text-center">
						<div class="item-tree-icon">
							<i class="fa fa-th"></i>
						</div>
						<div class="more-entry overflow">
							<h5>
								<a href="property-1.jsp">CAN'T DECIDE ? </a>
							</h5>
							<h5 class="tree-sub-ttl">모든 판매물 보기</h5>
							<button
								onclick="location.href='<%=request.getContextPath()%>/board?cmd=board_paging&pageNum=1&per_page=9'"
								class="btn border-btn more-black" value="All services">모든 판매물</button>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

<!--TESTIMONIALS -->
<div class="testimonial-area recent-property"
	style="background-color: #FCFCFC; padding-bottom: 55px;">
	<div class="container">
		<div class="row">
			<div
				class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
				<!-- /.feature title -->
				<h2>판매 top3</h2>
			</div>
		</div>

		<div class="row" >
			<div class="row testimonial">
				<div class="col-md-12" style="text-align: center;">					
				<c:forEach var="top_three" items="${top_three}">
					<div class="col-sm-6 col-md-3" style="float: none;display: inline-block;">
						<div class="box-two proerty-item">
							<div class="item-thumb">
								<a
									href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${top_three.lnumber}"><img  
									src="${top_three.limage }"  style="height: 225px"></a>
							</div>
							<div class="item-entry overflow" style="padding-bottom: 8px">
								<h5 style="text-overflow: ellipsis; overflow: hidden;">
									<a
										href="<%=request.getContextPath()%>/board?cmd=view_service&lnumber=${top_three.lnumber}">${top_three.ltitle }</a>
								</h5>
								<div class="dot-hr"></div>
								<span class="pull-left"></span> <span
									class="proerty-price pull-right">${top_three.lprice }원	</span>
								<c:forEach var="i" begin="1" end="${top_three.good }" step="1">
  									<span class="starR on">별${i}</span>
  								</c:forEach>
  								<c:forEach var="i" begin="1" end="${ 5- top_three.good }" step="1">
  									<span class="starR">별${i}</span>
  								</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>

				</div>
			</div>

		</div>
	</div>
</div>

<!-- Footer area-->
<%@include file="/include/footer.jsp"%>
</body>
</html>