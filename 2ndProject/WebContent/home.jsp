<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정의 온도</title>
    <link rel="stylesheet" href="css-sample/style.css" type="text/css">
    <link rel="stylesheet" href="css-sample/reset.css" type="text/css">
    <link rel="stylesheet" href="css-sample/home.css" type="text/css">
</head>
<body>
<%memberDTO user = (memberDTO)session.getAttribute("user");%>
    <div id="contain">
        <div id="header">
            <div class="navbar">
                <p class="logo">
                    <a href="home.jsp">감정의 온도</a>   
                </p>
                <nav class="menu effect">
                    <ul>
                    	<%if(user!=null){ %>
                        <li><a href="data.jsp"><span data-hover="온도계">온도계</span></a></li>
                        <li><a href="memory.jsp"><span data-hover="기억창고">기억창고</span></a></li>
                        <li><a href="contact.jsp"><span data-hover="연결고리">연결고리</span></a></li>
                        <li><a href="LogoutService"><span data-hover="로그아웃">로그아웃</span></a></li>
                        <%}else{ %>
                        <li><a href="login.jsp"><span data-hover="로그인/회원가입">로그인</span></a></li>
                        <li><a href="join.jsp"><span data-hover="로그인/회원가입">회원가입</span></a></li>
                        <%} %>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="main">
            <div class="main-visual">
                <div class="video">
                    <img src="img\main-banner02.jpg">
                    <div class="video-text">
                        <p class="video-title">문자 사이에 숨겨둔 감정의 온도를 잴 수 있다면</p>
                    </div>
                </div>
            </div>
      	</div>
            <div class="service">
                <div class="area">
                    <h2>Service</h2>
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
        </div> 
        <div class="program">
            <!-- 01/06 팀소개 -->
            <div class="area">
                <h3>남자셋<br>여자셋</h3>
                <ul>
                    <li>머신러닝</li>
                    <li>기능개발</li>
                    <li>웹디자인</li>
                </ul>
            </div>
            <!-- 01/06 팀소개 -->
        </div>
        <div id="footer">
            <div class="contact-sns">
                <span>트위터  /  페이스북  /  인스타그램</span>
            </div>
        </div>
    </div>
</body>
</html>