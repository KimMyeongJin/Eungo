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
<title>Mvc Eungo | Purchase Page</title>
<script>
	function goPay(){
		var url = "<%=request.getContextPath()%>/purchase/payPage.jsp";
		var title = "pop";
		var status = "width=850,height=600, scrollbars=yes, resizable=yes";
   	 	
		window.open(url,title,status);	     
	}
</script>
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
		<!-- <form name="form"> -->
			<input type="hidden" id="lnumber" name="lnumber" value="${lnumber }">
			<input type="hidden" id="price" name="price" value="${price }">
			<input type="hidden" id="submit_price" name="submit_price" value="${amount }">
			<input type="hidden" id="seller_email" name="seller_email" value="${seller.email }">
			<div class="col-md-6">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 register-blocks">
						<h2>주문하기</h2>

						<div class="panel-body">
							<div>
								<div style="height:90px; width:120px;  margin-right: 20px;float: left; float: left">
									<img class="width-120px border-radius" style="height:100%;width: 100%;border-radius: 5px " src="${board.limage }"
										>
								</div>

								<div style="width:330px; height:100px; float: left">
									<h4 class="order-info-gig-body margin-top-0">${board.ltitle }</h4>

									<div>
										<img width="30" height="40" style="margin-right: 5px" class="img-circle" src="${seller.profile }">
										<span class="font-color-lighter">${seller.email }</span>
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
										<td><span id="price_title">${price_title }</span></td>										
										<td class="text-center"><a id="decreaseQuantity"> <i
												class="fa fa-minus" aria-hidden="true"></i>
										</a> <b><span id="numberUpDown">1</span></b> <a
											id="increaseQuantity"> <i class="fa fa-plus"
												aria-hidden="true"></i>
										</a></td>
										<td class="text-center">${price_time }</td>										
										<td class="text-right"><span class="tahoma" id="total">${price }</span>원</td>
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
						<button type="submit" id="payBtn" name="payBtn" class="btn btn-default" onclick="javascript:goPay()">결제하기</button>
					</div>
				</div>
			</div>
		<!-- </form> -->
	</div>
</div>

<!-- Footer area-->
<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#decreaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var price_str = $('#price').val();
			var price = parseInt(price_str.replace(/,/g,""),10);
			var num = parseInt(stat, 10);
			num--;
			if (num <= 0) {
				alert('더이상 줄일수 없습니다.');
				num = 1;
			}
			var total = numberWithCommas(price*num);
			$('#numberUpDown').text(num);
			$('#total').text(total);
			$('#submit_price').val(price*num);
			
		});
		$('#increaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var price_str = $('#price').val();			
			var price = parseInt(price_str.replace(/,/g,""),10);
			var num = parseInt(stat, 10);
			num++;
			/* 
			 if(num>5){
			 alert('더이상 늘릴수 없습니다.');
			 num=5;
			 } */			 
			var total = numberWithCommas(price*num);
			$('#numberUpDown').text(num);
			$('#total').text(total);
			$('#submit_price').val(price*num);
		});
	});
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
</script>
</body>
</html>