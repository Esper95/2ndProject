<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정의 온도</title>
    <link rel="stylesheet" href="css-sample/style.css">
    <link rel="stylesheet" href="css-sample/reset.css">
    <link rel="stylesheet" href="css-sample/home.css">
</head>
<body>
<%HttpSession session_user = request.getSession();
  memberDTO user = (memberDTO)session_user.getAttribute("user");%>
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
                    </ul>
                </nav>
            </div>
        </div>
        <div id="sub">
            <div id="sub-title">
                <div class="t-area">
                    <div class="data-up-text">
                        <h3>분석할 데이터를 추가하세요
                        </h3>
                    </div>
                    <div>
 					<form action ="http://localhost:9000/predict" method="post" enctype="multipart/form-data"  >	
                    	<input type="file" value="파일 선택" name="file" id="file" style="">
                    	<input type="submit" value="업로드" id="upload" style=""></p> 
                    </form>
                    </div>
                    
                    <div class=join-btn onclick="onclick=document.all.file.click()">
                    	<a href="#"><p>데이터 업로드</p></a> 
              		</div>
              		<div class=join-btn onclick="onclick=document.all.upload.click()">
                    	<a href="#"><p>데이터 전송</p></a> 
              		</div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="data-result">
                <h2>감정온도 측정 결과</h2>
            </div>
            <div class="temperature">
                <iframe src="graph\dot.html"></iframe>
            </div>
            <div class="save-file-btn">
                <a href="#"><p>온도 저장하기</p></a>
            </div>
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