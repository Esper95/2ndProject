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
	    			<li><a href="LogoutService"><span data-hover="로그아웃">로그아웃</span></a></li>  	
    			</ul>
    		</div>
    		<div class="menu">
    			<div class="menu-box">
	            <div class="logo">
	               	<a href="home.jsp"><img src="">감정의 온도</a>
	            </div>   
				<nav class="navbar">
					<ul>
	                    <li><a href="data.jsp"><span>온도계</span></a></li>
	                    <li><a href="memory.jsp"><span>연결고리</span></a></li>
	                    <li><a href="dictionary.jsp"><span>감정사전</span></a></li>
	                </ul>
	       	    </nav>
	       	    </div>
	       </div>
        </div>
        
        <!-- 섹션 02 관계도 -->
   	    <div id="main">
   	    
   	    	<div class="relation">
   	    		<div class="relation01">
	   	    		<div class="relation-title">
	   	 				감정관계도
	   	    		</div>
	   	    		
	           </div>
	           <div class="relation02">
	           		<input type="submit"  name="relation-btn" id="relation-btn">
	           </div>
   	    	</div>
   	    	
   	    	
			<!-- 관계도 -->
   	    	<div class="result02">
   	    			<div class="temperature">
                		<iframe src="graph\bubble.html"></iframe>
            		</div>
   	    	</div>

        <!-- 섹션 03 footer -->
        <div id="footer">
                <span>Made by</span>
                <span>LAB 병아리</span>  
        </div>
     </div>
        <!-- 전체 contain 끝 -->
    </div>
</body>
</html>