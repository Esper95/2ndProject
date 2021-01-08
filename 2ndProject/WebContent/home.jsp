<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정의 온도</title>
    <link rel="stylesheet" href="css-sample/totalStyle.css" type="text/css">
    
</head>
<body>
<%memberDTO user = (memberDTO)session.getAttribute("user");%>

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
	               	<a href="home.jsp"><img src="">감정의 온도</a>
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
        
        <!-- 섹션 02 메인 이미지 / 서비스 설명 / 팀 소개 -->
        <div id="main">
        
        	<!-- 섹션 02-1 메인 이미지 -->
            <div class="main-visual">
                <div class="img">
                    <img src="img\main-banner02.jpg">
                    <div class="img-text">
                        <p class="video-title">문자 사이에 숨겨둔 감정의 온도를 잴 수 있다면</p>
                    </div>
                </div>
            </div>
            
            <!-- 섹션 02-2 서비스 설명 -->
			<div class="service">
				<div class="service-title">
					<h2>Service</h2>
				</div>
				<div class="service-box">
					<div class=servic-items>
						<div class="service-icon">
							<img sre="">
						</div>
						<div class="service-items-box">
							<div class="service-name">
								<a href="data-sample.html"><p>기억창고</p></a>
							</div>
							<div class="service-text">
								<p>설명</p>
							</div>
						</div>
					</div>
					<div class=servic-items>
						<div class="service-icon">
							<img sre="">
						</div>
						<div class="service-items-box">
							<div class="service-name">
								<a href="data-sample.html"><p>기억창고</p></a>
							</div>
							<div class="service-text">
								<p>설명</p>
							</div>
						</div>
					</div>
					<div class=servic-items>
						<div class="service-icon">
							<img sre="">
						</div>
						<div class="service-items-box">
							<div class="service-name">
								<a href="data-sample.html"><p>기억창고</p></a>
							</div>
							<div class="service-text">
								<p>설명</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 섹션 02-3 팀 소개 -->
<!--         	<div class="team">          
            	<div class="team-title">
	                <h3>남자셋<br>여자셋</h3>
	            </div>
	            <div class="team-box">
	                <ul>
	                    <li>머신러닝</li>
	                    <li>기능개발</li>
	                    <li>웹디자인</li>
	                </ul>
            	</div>
        	</div> -->
        <!-- 섹션 02 끝 -->
        </div> 
              
        <!-- 섹션 03 footer -->
        <div id="footer">
            <div class="footer-box">
                <span>트위터</span>
                <span>페이스북</span>
                <span>인스타그램</span>  
            </div>
        </div>
        
    <!-- 전체 contain 끝  -->
    </div>
</body>
</html>