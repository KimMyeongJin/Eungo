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
<title>GARO ESTATE | Payment Page</title>
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
				<h1 class="page-title">Payment</h1>
			</div>
		</div>
	</div>
</div>

<!-- register-area -->
<div class="register-area" style="background-color: rgb(249, 249, 249);">
	<div class="container">
		<div class="col-md-3"></div>
		<form action="#" method="post">
			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 register-blocks">
						<h2>주문하기</h2>

						<div class="panel-body">
							<div>
								<div class="pull-left margin-right-20">
									<img class="width-120px border-radius" src="${board.limage }"
										title="판매 서비스 타이틀">
								</div>

								<div>
									<h4 class="order-info-gig-body margin-top-0">판매 서비스
										타이틀ltitle</h4>

									<div class="margin-top-20 color-primary">
										<img class="border-round width-20px" src="${seller.profile }">
										<span class="font-color-lighter">판매자 이메일</span>
									</div>
								</div>
							</div>


							<table class="order-table">
								<colgroup>
									<col width="60%">
									<col width="15%">
									<col width="10%">
									<col width="15%">
								</colgroup>
								<thead class="order-package">
									<tr>
										<th>기본항목</th>
										<th class="text-center">수량선택</th>
										<th class="text-center">작업일</th>
										<th class="text-right">가격</th>
									</tr>
								</thead>
								<tbody class="order-option">
									<tr>
										<td><span>판매 물품 타이틀standard_title</span></td>
										<td class="text-center"><a id="decreaseQuantity"> <i
												class="fa fa-minus" aria-hidden="true"></i>
										</a> <span id="numberUpDown"><b>1</b></span> <a
											id="increaseQuantity"> <i class="fa fa-plus"
												aria-hidden="true"></i>
										</a></td>
										<td class="text-center">standrard_time</td>
										<td class="text-right"><span class="tahoma">20,000</span>원</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 register-blocks">
						<h2>결제방법</h2>
						<div>
							<ul class="list-inline">
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_SC0010" checked="">
											<span>신용카드</span>
										</label>
									</div>
								</li>
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_SC0030"> <span>실시간
												계좌이체</span>
										</label>
									</div>
								</li>
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_SC0040"> <span>무통장입금</span>
										</label>
									</div>
								</li>
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_SC0060"> <span>휴대폰</span>
										</label>
									</div>
								</li>
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_KAKAOPAY">
											<span>카카오페이</span>
										</label>
									</div>
								</li>
								<li>
									<div>
										<label> <input type="radio"
											name="payMethodRadioButton" id="payMethod_PAYNOW"> <span>페이나우</span>
										</label>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="box-for overflow">
					<div class="col-xs-8"></div>
					<div class="col-xs-4">
						<button id="payBtn" name="" class="btn btn-default">결제하기</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#decreaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat, 10);
			num--;
			if (num <= 0) {
				alert('더이상 줄일수 없습니다.');
				num = 1;
			}
			$('#numberUpDown').text(num);
		});
		$('#increaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat, 10);
			num++;
			/* 
			 if(num>5){
			 alert('더이상 늘릴수 없습니다.');
			 num=5;
			 } */
			$('#numberUpDown').text(num);
		});
	});
</script>
</body>
</html>