<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css-sample/style.css">
    <link rel="stylesheet" href="css-sample/reset.css">
    <link rel="stylesheet" href="css-sample/home.css">
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
        <div id="sub">
            <div id="sub-title">
                <div class="t-area">
                    <h2>우리의 관계도
                        <span>블라블라블라</span>
                    </h2>
                    
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="temperature-b">
                <iframe src="graph\bubble.html"></iframe>
            </div>
        </div>
        </div>
        <div id="footer">
            <div class="contact-sns">
                <span>트위터 / 페이스북 / 인스타그램</span>
            </div>
        </div>
</div>
    </div>
    
</body>
</html>