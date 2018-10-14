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
<title>Mvc Eungo | View Member</title>
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
				<li class="wow fadeInDown" data-wow-delay="0.2s"><a href="#">게시판
						관리</a></li>
				<li class="wow fadeInDown" data-wow-delay="0.3s"><a class=""
					href="#">회원관리</a></li>
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
				<h1 class="page-title">회원관리</h1>
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
							<th>이메일 체크</th>
							<th>연락처</th>
							<th>성별</th>
							<th>생일</th>
							<th>판매자</th>
							<th>주소</th>
							<th><input name="select_all" value="1" type="checkbox"></th>
						</tr>
					</thead>
					<tbody>
						<tr class="odd gradeX">
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>Ambient Temperature</td>
							<td><input type="checkbox" name="name1" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-12">
				<div class="row">
					<button class="navbar-btn nav-button wow fadeInRight"
						onclick="location.href='#'"
						data-wow-delay="0.48s">수정</button>
					<button class="navbar-btn nav-button wow fadeInRight"
						onclick="location.href='#'"
						data-wow-delay="0.48s">삭제</button>
					<input type="hidden" name="cmd" value="board_search"> <input
						type="text" name="search_text" class="form-control"
						style="width: 400px; display: inline; margin-left: 15%"
						placeholder="Key word"> <input type="hidden"
						name="pageNum" value="1">
					<button class="btn search-btn" type="submit">
						<i class="fa fa-search"></i>
					</button>
					<div class="pull-right">
						<div class="pagination">
							<ul>
								<c:choose>
									<c:when test="${paging eq null }">
										<li><a
											href="#">해당
												게시물이 없습니다</a></li>
									</c:when>
									<c:otherwise>
										<c:forEach var="paging" items="${paging }">
											<li><a
												href="#">${paging.key}</a></li>
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
</body>
</html>