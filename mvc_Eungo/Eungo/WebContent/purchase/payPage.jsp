<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mvc Eungo | payPage</title>
</head>
<body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
IMP.init('imp10016557');
var amount = window.opener.document.getElementById('submit_price').value;
var lnumber = window.opener.document.getElementById('lnumber').value;
var product_name = window.opener.$("#price_title").html();
var quantity = window.opener.$("#numberUpDown").html();
var price = window.opener.document.getElementById('price').value;
var seller_email = window.opener.document.getElementById('seller_email').value;

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : 100, 					 //판매 가격
    buyer_email : 'iamport@siot.do', //user_email
    buyer_name : '주문자이름:',			 //user_name
    buyer_tel : '010-1234-5678',	 //user_phone
    buyer_addr : '서울특별시 강남구 삼성동', //user_address
    buyer_postcode : '123-456'		 //user_postcode
}, function(rsp) {
    if ( rsp.success ) {
    	var jsonData = {
	               "lnumber" : lnumber,
	               "product_name" : product_name,
	               "quantity" : quantity,
	               "price" : price,
	               "total_price" : amount,
	               "seller_email" : seller_email
	            };
	            var result = JSON.stringify(jsonData); 
	        // jQuery로 HTTP 요청
	        jQuery.ajax({
	            url: "<%=request.getContextPath()%>/purchase?cmd=purchase_complete", // 가맹점 서버
	            method: "POST",
	            headers: { "Content-Type": "application/json" },
	            dataType : "text",
	            data: result
	        }).done(function (data) {				        	
		});
        var msg = '결제가 완료되었습니다.';        
       /*  msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num; */
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
    opener.location.href='<%=request.getContextPath()%>/purchase?cmd=purchase_finish'; 
    window.close();
});
</script>
</body>
</html>