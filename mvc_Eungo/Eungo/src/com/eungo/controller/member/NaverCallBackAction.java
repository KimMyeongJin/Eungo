package com.eungo.controller.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.eungo.action.Action;

public class NaverCallBackAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String clientId = "Tdm9CqMQithoF4ZWgDSw";//애플리케이션 클라이언트 아이디값";
	    String clientSecret = "TPnO9oR9mo";//애플리케이션 클라이언트 시크릿값";
	    String code = request.getParameter("code");	   
	    String state = request.getParameter("state");	    
	    String redirectURI = URLEncoder.encode("http://18.224.199.161:8000/Eungo/member?cmd=naver_callback", "UTF-8");
	    String apiURL;
	    apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
	    apiURL += "client_id=" + clientId;
	    apiURL += "&client_secret=" + clientSecret;
	    apiURL += "&redirect_uri=" + redirectURI;
	    apiURL += "&code=" + code;
	    apiURL += "&state=" + state;
	    String access_token = "";
	    String refresh_token = "";	  
	    try {
	      URL url = new URL(apiURL);
	      HttpURLConnection con = (HttpURLConnection)url.openConnection();
	      con.setRequestMethod("GET");
	      int responseCode = con.getResponseCode();
	      BufferedReader br;	      
	      if(responseCode==200) { // 정상 호출
	        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	      } else {  // 에러 발생
	        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	      }
	      String inputLine;
	      StringBuffer res = new StringBuffer();
	      while ((inputLine = br.readLine()) != null) {
	        res.append(inputLine);
	      }
	      br.close();
	      String jsonData = null;
	      if(responseCode==200) {	        
	        jsonData = res.toString();
	        JSONParser p = new JSONParser();
	        JSONObject json = (JSONObject)p.parse(jsonData);
	        
	        access_token = (String)json.get("access_token");
	        refresh_token = (String)json.get("refresh_token");
	        	     
	        HttpSession session = request.getSession();
	        session.setAttribute("access_token", access_token);
	       	response.sendRedirect(request.getContextPath()+"/member?cmd=naver_email");
	      }
	    } catch (Exception e) {
	      System.out.println(e);
	    }
		
	}

}
