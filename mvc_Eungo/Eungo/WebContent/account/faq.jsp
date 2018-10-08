<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<title>Mvc Eungo | Faq Page</title>

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
               <h1 class="page-title">FAQ Page</h1>
            </div>
         </div>
      </div>
   </div>
<!-- End page header -->

<!-- property area -->
<div class="content-area recent-property"
      style="background-color: #FCFCFC; padding-bottom: 55px;">
      <div class="container">		
         <div class="row">
            <div
               class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
               <!-- /.feature title -->
               <h2><i class="pe-7s-user strong"></i> 실시간 문의 </h2>
               <br>
            </div>
         </div>
	<br>
	
	<fieldset style="text-align: center;">
    <textarea id="messageWindow" rows="10" cols="50" readonly></textarea>
    <br>
    <br>
    <div>
	    <input style="width: 300px; background-color: #E6E6E6;" id="inputMessage" type="text" autofocus>
	    <input style="width: 75px;" type="submit" value="send" onclick="send()" />
    </div> 
   </fieldset>
   
   <script>
        var textarea = document.getElementById("messageWindow");
        var webSocket = new WebSocket('ws://localhost:8000/Eungo/broadCasting');
        var inputMessage = document.getElementById('inputMessage');
        
    webSocket.onerror = function(event) {
      onError(event)
    };
    
    webSocket.onopen = function(event) {
      onOpen(event)
    };
    
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
    
    function onMessage(event) {
        textarea.value += "상담원 : " + event.data + "\n";
    }
    
    function onOpen(event) {
        textarea.value += "상담원과 연결이 되었습니다.\n";
    }
    
    function onError(event) {
      alert(event.data);
    }
    
    function send() {
        textarea.value += "나 : " + inputMessage.value + "\n";
        webSocket.send(inputMessage.value);
        inputMessage.value = "";
    }
  </script>
		<!-- end row -->
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