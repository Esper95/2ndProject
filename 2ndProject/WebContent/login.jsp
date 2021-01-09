<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>감정의 온도</title>
    <link rel="stylesheet" href="css-sample/totalStyle.css" type="text/css">
</head>

<body>
<%HttpSession session_user = request.getSession();
  memberDTO user = (memberDTO)session_user.getAttribute("user");%>
  
       <div id="contain">
    
        <!-- 섹션 01 로고/메뉴 -->
        <div id="header">
        	<div class="top">
    			<ul>
	    			<li><a href="login.jsp"><span data-hover="로그인/회원가입">로그인</span></a></li>
	                <li><a href="join.jsp"><span data-hover="로그인/회원가입">회원가입</span></a></li>
    			</ul>
    		</div>
    		<div class="menu">
    			<div class="menu-box">
	            <div class="logo">
	               	<a href="home.jsp"><img src="">감정의 온도</a>
	            </div>   
				<nav class="navbar">
					<ul>
<<<<<<< HEAD
<%-- 	                  	<%if(user!=null){ %> --%>
=======
>>>>>>> branch 'master' of https://github.com/Esper95/2ndProject.git
	                    <li><a href="data.jsp"><span>온도계</span></a></li>
<<<<<<< HEAD
	                    <li><a href="memory.jsp"><span>연결고리</span></a></li>
	                    <li><a href="dictionary.jsp"><span>감정사전</span></a></li>
<%-- 	                    <%}else{ %>
	                    <%} %> --%>
=======
	                    <li><a href="memory.jsp"><span>기억창고</span></a></li>
	                    <li><a href="contact.jsp"><span>연결고리</span></a></li>
>>>>>>> branch 'master' of https://github.com/Esper95/2ndProject.git
	                </ul>
	       	    </nav>
	       	    </div>
	       </div>
        </div>
        
        <!-- 섹션 02 회원가입 -->
   	    <div id="main">
   	    
	        <div class="login">
	            <div class="logo">
	                감정의 온도
	            </div>
	            <div class="logo-text">
	                <!-- 감정의 온도를 이용하시려면<br>
	                회원가입이 필요합니다. -->
	            </div>
	            <div class="input-login">
	                <form action="LoginService">
	                    <label>아이디</label>
	                    <input type="text" name="id" required=""> 
	                    <label>비밀번호</label>
	                    <input type="password" name="pw" required=""> 
	                    <input type="submit" style="display: none;" id="l">
	                </form>
	                <div class=join-btn onclick="onclick=document.all.l.click()">
	                    <a href="#"><p>로그인</p></a> 
	                </div>
	                <div class="find-area">
	                    <div class="find-left">
	                        <a href="#">아이디<br>비밀번호 찾기</a>
	                    </div>
	                    <div class="find-right">
	                        <a href="join.jsp">회원가입하기 </a>
	                    </div>
	                </div>   
	            </div>
	        </div>
        </div>

        <!-- 섹션 03 footer -->
        <div id="footer">
            <div class="footer-box">
                <span>Made by</span>
                <span>LAB 병아리</span>  
        	</div>
        </div>
        <!-- 전체 contain 끝 -->
    </div>
  
</body>

</html>