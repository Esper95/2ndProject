<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정의 온도</title>
	<link rel="stylesheet" href="css-sample/totalStyle.css" type="text/css">
</head>
<body>
<%HttpSession session_user = request.getSession();
  memberDTO user = (memberDTO)session_user.getAttribute("user");%>
  
  	<!-- 전체 contain -->
    <div id="contain">
    
        <!-- 섹션 01 로고/메뉴 -->
        <div id="header">
        	<div class="top">
    			<ul>
	    			<%if(user!=null) {%>
	    			<li><a href="LogoutService"><span data-hover="로그아웃">로그아웃</span></a></li>  	
	    			<%} else{%>
	    			<li><a href="login.jsp"><span data-hover="로그인/회원가입">로그인</span></a></li>
	                <li><a href="join.jsp"><span data-hover="로그인/회원가입">회원가입</span></a></li>
	    			<%} %>	 	                    		
    			</ul>
    		</div>
    		<div class="menu">
	            <div class="logo">
	               	<a href="home.jsp">감정의 온도</a>
	            </div>   
				<nav class="navbar">
					<ul>
	                  	<%if(user!=null){ %>
	                    <li><a href="data.jsp"><span>온도계</span></a></li>
	                    <li><a href="memory.jsp"><span>기억창고</span></a></li>
	                    <li><a href="contact.jsp"><span>연결고리</span></a></li>
	                    <%}else{ %>
	                    <%} %>
	                </ul>
	       	    </nav>
	       </div>
        </div>
        
        <!-- 섹션 02 관계도 -->
   	    <div id="main">
   	    
   	    	<div class="relation">
   	    		<div class="relation-title">
   	 				<h2>감정관계도</h2>
   	    		</div>
   	    		<div class="relation-text">
					우리의 관계는 블라블라 블라 
               </div>
   	    	</div>
   	    	
   	    	
			<!-- 관계도 -->
   	    	<div class="result">
   	    		<div class="result-02">
   	    			<div class="temperature">
                		<iframe src="graph\bubble.html"></iframe>
            		</div>
   	    		</div>
   	    	</div>

        <!-- 섹션 03 footer -->
        <div id="footer">
            <div class="footer-box">
                <span>트위터</span>
                <span>페이스북</span>
                <span>인스타그램</span>  
            </div>
        </div>
        
        <!-- 전체 contain 끝 -->
    </div>
</body>
</html>