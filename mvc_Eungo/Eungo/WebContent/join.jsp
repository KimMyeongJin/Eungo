<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="com.naverLogin.search.Member"%>
<%@page import="com.naverLogin.search.ApiMemberPro"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String access_token = (String) session.getAttribute("access_token");
	String memberPro = ApiMemberPro.getApiMember(access_token);
	JSONParser p = new JSONParser();
	JSONObject obj = (JSONObject)p.parse(memberPro);
	System.out.println("memberPro : "+memberPro);
	String resultcode = (String)obj.get("resultcode");
	String message = (String)obj.get("message");
	System.out.println("resultcode : "+resultcode);
	System.out.println("message : "+message);
	JSONObject data = (JSONObject)obj.get("response");
	
	System.out.println("data : "+data.toString());
	Gson g = new Gson();
	//g.toJson(memberPro); -> JSON으로 변환	
	Member m = g.fromJson(data.toString(), Member.class);

%>
<br>

<%=m.getBirthday() %>
<%=m.getId() %>
<%=m.getEmail() %>
<%=m.getGender() %>
<%=m.getName() %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap file -->
<link rel="stylesheet" href="/BBS/css/bootstrap.css">
<link rel="stylesheet" href="/BBS/css/custom.css">
<!-- google jquery cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="BBS/js/bootstrap.js"></script>
<title></title>
</head>
<body>
	<%
		
	%>
</body>
</html>