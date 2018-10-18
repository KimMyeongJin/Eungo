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
					href="<%=request.getContextPath()%>/member?cmd=view_member&pageNum=1">
						은고</a></li>
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
				<h1 class="page-title">댓글 관리</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		<form action="<%=request.getContextPath()%>/reply">
			<input type="hidden" name="cmd" value="admin_delete_reply">
			<div class="panel-body">
				<table id="data-table"
					class="table table-striped table-bordered nowrap">
					<thead>
						<tr>
							<th style="width: 7%">구매번호</th>
							<th style="width: 13%">이메일</th>
							<th style="width: 25%">댓글</th>
							<th style="width: 9%">댓글 날짜</th>
							<th style="width: 5%">별점</th>
							<th style="width: 25%">답글</th>
							<th style="width: 9%">답글 날짜</th>
							<th style="width: 3%"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="re_list" items="${re_list }">
							<tr class="odd gradeX">
								<td>${re_list.pur_number }</td>
								<td>${re_list.email }</td>
								<td><div
										style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100px;">${re_list.reply_comment }</div></td>
								<td>${re_list.re_date }</td>
								<td>${re_list.star }</td>
								<td><div
										style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100px;">${re_list.reply_answer }</div></td>
								<td>${re_list.an_date }</td>
								<td><input type="checkbox" name="check" value="${re_list.reply_number}"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-12">
				<button class="navbar-btn nav-button wow fadeInRight" type="submit"
					data-wow-delay="0.48s">삭제</button>
			</div>
		</form>
	</div>
</div>
<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
</body>
</html>