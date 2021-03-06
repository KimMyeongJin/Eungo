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
				<li class="wow fadeInDown" data-wow-delay="0.2s"><a href="<%=request.getContextPath()%>/board?cmd=view_board&pageNum=1">게시판
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
				<h1 class="page-title">회원관리</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		<form name="adminForm" method="post">
			<div class="panel-body">
				<table id="data-table"
					class="table table-striped table-bordered nowrap">
					<thead>
						<tr>
							<th style="width: 10%">이메일</th>
							<th style="width: 10%">이메일 체크</th>
							<th style="width: 11%">연락처</th>
							<th style="width: 5%">성별</th>
							<th style="width: 9%">생일</th>
							<th style="width: 6%">판매자</th>
							<th style="width: 25%">주소</th>
							<th style="width: 25%">프로필</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list }">
							<tr class="odd gradeX">
								<td><a
									href="<%=request.getContextPath()%>/member?cmd=view_seller&seller_email=${list.email}">${list.email }</a></td>
								<td>${list.emailcheck }</td>
								<td>${list.phonenumber }</td>
								<td>${list.gender }</td>
								<td>${list.birthday }</td>
								<td>${list.seller }</td>
								<td style="overflow: hidden; text-overflow: ellipsis;white-space: nowrap; width: 20%;">${list.address }</td>
								<td style="overflow: hidden; text-overflow: ellipsis;white-space: nowrap; width: 20%;">
									<div id="member${list.member_number }">${list.profile }
										<c:if test="${list.profile ne null }">
											<input type="button" style="width: 30%" onclick="del('${list.member_number }'); this.onclick='';" value="삭제">
										</c:if>
									</div>
								</td>
								<td><input type="checkbox" name="check" value="${list.member_number }"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-12">
				<button class="navbar-btn nav-button wow fadeInRight"
					 data-wow-delay="0.48s" onclick="javascript: form.action='<%=request.getContextPath()%>/member?cmd=delete_member';">삭제</button>
				<input type="text" name="search_text" class="form-control"
					style="width: 400px; display: inline; margin-left: 15%"
					placeholder="검색어" onkeydown="EnterShift();">
				<button class="btn search-btn" name="searchbox" onclick="javascript: form.action='<%=request.getContextPath() %>/member?cmd=search_member&pageNum=1';">
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
										<li><a href="<%=request.getContextPath()%>/member?cmd=view_member&pageNum=${paging.value}">${paging.key}</a></li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- Footer area-->
<%@include file="../include/footer.jsp"%>

<script>
	function del(member_number) {
				
				var member_number = member_number;
				$.ajax({
					async : true,
					type : 'POST',
					data : member_number,	
					url : "<%=request.getContextPath()%>/member?cmd=profile_delete",
					dataType : "json",
					contentType : "application/json;charset=utf-8",
					success : function(data) {
						if (data == 1) {
							alert("프로필 삭제됨.");							
							$("#member"+member_number).remove();
						} else if (data == -1) {
							alert("DB에러.");
						}
					},
					error : function(error) {
						alert("error	 : " + error);
					}
				});
		}

function EnterShift() {
       var keyValue = event.keyCode;
       if (keyValue =='13')
                document.adminForm.searchbox.focus();
}
</script>
</body>
</html>