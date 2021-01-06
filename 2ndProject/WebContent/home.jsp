<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css-sample/style.css" type="text/css">
    <link rel="stylesheet" href="css-sample/reset.css" type="text/css">
    <link rel="stylesheet" href="css-sample/home.css" type="text/css">
</head>
<body>
    <div id="contain">
        <div id="header">
            <div class="navbar">
                <p class="logo">
                    <a href="home.jsp">감정의 온도</a>   
                </p>
                <nav class="menu effect">
                    <ul>
                        <li><a href="data.jsp"><span data-hover="온도계">온도계</span></a></li>
                        <li><a href="memory.jsp"><span data-hover="기억창고">기억창고</span></a></li>
                        <li><a href="contact.jsp"><span data-hover="연결고리">연결고리</span></a></li>
                        <li><a href="LogoutService"><span data-hover="로그아웃">로그아웃</span></a></li>
                        <li><a href="login.jsp"><span data-hover="로그인/회원가입">로그인</span></a></li>
                        <li><a href="join.jsp"><span data-hover="로그인/회원가입">회원가입</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="main">
            <div class="main-visual">
                <div class="video">
                    <video autoplay muted loop>
                        <source src="video-sample\main-sample.mp4" type="video/mp4">
                        <strong>Your browser does not support the video tag.</strong>
                    </video>
                    <div class="video-text">
                        <p class="video-title">감정의 온도</p><br>
                        <p class="video-sub-title">문자 사이에 숨겨둔 감정의 온도를 잴 수 있다면</p>
                    </div>
                </div>

            </div>
            <div class="service">
                <div class="area">
                    <h2>Service</h2>
                    <div class=servic-items>
                        <div class="service-name">
                            <a href="data-sample.html"><p>온도계</p></a>  
                        </div>
                        <div class="service-text">
                            <p>설명</p>
                        </div>
                        <div class="service-icon">
                            <img sre="">
                        </div>
                    </div>
                    <div class=servic-items>
                        <div class="service-name">
                            <a href="data-sample.html"><p>기억창고</p></a>   
                        </div>
                        <div class="service-text">
                            <p>설명</p>
                        </div>
                        <div class="service-icon">
                            <img sre="">
                        </div>
                    </div>
                    <div class=servic-items>
                        <div class="service-name">
                            <a href="data-sample.html"><p>연결고리</p></a> 
                        </div>
                        <div class="service-text">
                            <p>설명</p>
                        </div>
                        <div class="service-icon">
                            <img sre="">
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="info">
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div> -->
        <div class="program">
            <div class="area">
                <h3>온도계 개발에<br>사용한 프로그램</h3>
                <ul>
                    <li>파이썬</li>
                    <li>이클립스</li>
                    <li>비주얼스튜디오코드</li>
                    <li>깃허브</li>
                </ul>
            </div>
        </div>
        <div id="footer">
            <div class="contact-sns">
                <span>트위터 / 페이스북 / 인스타그램</span>
            </div>
        </div>
    </div>
</body>
</html>