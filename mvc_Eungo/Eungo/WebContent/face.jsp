<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
								  // This is called with the results from from FB.getLoginStatus().
								  function statusChangeCallback(response) {
								    console.log('statusChangeCallback');
								    console.log(response);
								    console.log(response.authResponse.accessToken);
								        //alert(response.authResponse.accessToken);
								    
								     
								     if (response.status === 'connected') {								     								      								      
								   		 window.location.href='Sign_in_Controller.jsp?access_token='+response.authResponse.accessToken;
								    	
								    	
								    }  else if (response.status === 'not_authorized') {
								    	// The person is logged into Facebook, but not your app.
								    	document.getElementById('status').innerHTML = 'Please log ' +
								    	'into this app.';
								    }else {
								      // The person is not logged into your app or we are unable to tell.
								      document.getElementById('status').innerHTML = 'Please log ' +
								        'into this app.';
								    } 
								  }
								
								  // This function is called when someone finishes with the Login
								  // Button.  See the onlogin handler attached to it in the sample
								  // code below.
								  function checkLoginState() {
								    FB.getLoginStatus(function(response) {
								      statusChangeCallback(response);
								    });
								  }
								
								  window.fbAsyncInit = function() {
								    FB.init({
								      appId      : '432684540588848',
								      cookie     : true,  // enable cookies to allow the server to access 
								                          // the session
								      xfbml      : true,  // parse social plugins on this page
								      version    : 'v3.1' // use graph api version 2.8
								    });
								
								   
								
								    FB.getLoginStatus(function(response) {
								      statusChangeCallback(response);
								    });
								
								  };
								
								  // Load the SDK asynchronously
								  (function(d, s, id) {
								    var js, fjs = d.getElementsByTagName(s)[0];
								    if (d.getElementById(id)) return;
								    js = d.createElement(s); js.id = id;
								    js.src = "https://connect.facebook.net/en_KR/sdk.js";
								    fjs.parentNode.insertBefore(js, fjs);
								  }(document, 'script', 'facebook-jssdk'));
								
								  // Here we run a very simple test of the Graph API after login is
								  // successful.  See statusChangeCallback() for when this call is made.
								   
								</script>

						<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
						</fb:login-button>
<div id="status">
</div>
						
				
</body>
</html>