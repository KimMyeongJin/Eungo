<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="com.google.gson.Gson"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | View board</title>
<!-- Start header -->
<%@include file="../include/header.jsp"%>
<!-- End of header -->

<!-- Start nav bar -->
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
					</c:when>
				</c:choose>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right">
				<li class="wow fadeInDown" data-wow-delay="0.1s"><a
					href="<%=request.getContextPath()%>/index.jsp"> 은고</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.2s"><a
					href="<%=request.getContextPath()%>/board?cmd=view_board&pageNum=1">게시판
						관리</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.3s"><a class=""
					href="<%=request.getContextPath()%>/member?cmd=view_member&pageNum=1">회원관리</a></li>
				<%-- <li class="wow fadeInDown" data-wow-delay="0.5s"><a
					href="<%=request.getContextPath()%>/contact/contact.jsp">Contact</a></li> --%>
				<!-- 당장 contact.jsp 필요없어서 주석처리함  -->
			</ul>
		</div>
	</div>
</nav>
<!-- End of nav bar -->

<div class="page-head">
	<div class="container">
		<div class="row">
			<div class="page-head-content">
				<h1 class="page-title">서비스 게시물 관리</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		<form action="">
			<div class="panel-body">
				<table id="data-table"
					class="table table-striped table-bordered nowrap">
					<thead>
						<tr>
							<th>이메일</th>
							<th>제목</th>
							<th>연락처</th>
							<th>카테고리</th>
							<th>가격</th>
							<th>판매수량</th>
							<th style="width: 5%">평점</th>
							<th>게시일</th>
							<th style="width: 3%"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list }">
							<tr>
								<td>${list.email }</td>
								<td>${list.ltitle }</td>
								<td>${list.lphone_number }</td>
								<td>${list.lcategory }</td>
								<td>${list.standard_price }</td>
								<td>${list.lsellcount }</td>
								<td>${list.good }</td>
								<td>${list.ldate }</td>
								<td><input type="checkbox" name="name1" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-12">
				<div class="row">
					<button class="navbar-btn nav-button wow fadeInRight"
						data-wow-delay="0.48s"
						onclick="javascript: form.action='<%=request.getContextPath()%>/board?cmd=delete_board';">삭제</button>
					<input type="text" name="search_text" class="form-control"
						style="width: 400px; display: inline; margin-left: 15%"
						placeholder="검색어" onkeydown="EnterShift();">
					<button class="btn search-btn" name="searchbox"
						onclick="javascript: form.action='<%=request.getContextPath()%>/board?cmd=search_board&pageNum=1';">
						<i class="fa fa-search"></i>
					</button>
					<div class="pull-right">
						<div class="pagination">
							<ul>
								<c:choose>
									<c:when test="${paging eq null }">
										<li><a href="#">해당 게시물이 없습니다</a></li>
									</c:when>
									<c:otherwise>
										<c:forEach var="paging" items="${paging }">
											<li><a href="#">${paging.key}</a></li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
	function EnterShift() {
		var keyValue = event.keyCode;
		if (keyValue == '13')
			document.adminForm.searchbox.focus();
	}
</script>
</body>
</html>