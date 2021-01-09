<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	            <div class="logo">
	               	<a href="home.jsp">감정의 온도</a>
	            </div>   
				<nav class="navbar">
					<ul>
	                </ul>
	       	    </nav>
	       </div>
        </div>
        
        <!-- 섹션 02 회원가입 -->
   	    <div id="main">
   	    
			<div class="join">
	            <div class="logo">
	                감정의 온도
	            </div>
	            <div class="logo-text">
	                <!-- 감정의 온도를 이용하시려면<br>
	                회원가입이 필요합니다. -->
	            </div>
	            <div class="input-join">
	                <form action="JoinService">
	                    <label>아이디</label>
	                    <input type="text" name="id" required=""> 
	                    <label>비밀번호</label>
	                    <input type="password" name="pw" required="">
	                    <label>닉네임</label>
	                    <input type="text" name="name" required=""> 
	                    <label>핸드폰</label>
	                    <input type="text" name="phone" required=""> 
	                    <label>이메일</label>
						<input type="text" name="email" required=""> 
					    <input type="submit" style="display: none;" id="j">
	                </form>
	                <div class=join-btn onclick="onclick=document.all.j.click()">
	                    <a href="#"><p>회원가입</p></a> 
	                </div>
                	
            </div>
        </div>
        </div>

        <!-- 섹션 03 footer -->
        <div id="footer">
                <span>Made by</span>
                <span>LAB 병아리</span>  
        </div>
        
        <!-- 전체 contain 끝 -->
    </div>
  
  
</body>

</html>