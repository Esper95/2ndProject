<%@page import="conn.model.dataDTO"%>
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
  memberDTO user = (memberDTO)session_user.getAttribute("user");
  	String relation1 =request.getParameter("1relation");
  	String relation2 =request.getParameter("2relation");
  	String relation3 =request.getParameter("3relation");
  	String relation4 =request.getParameter("4relation");
  	String relation5 =request.getParameter("5relation");

  	String one =request.getParameter("one");
  	String two =request.getParameter("two");
  	String three =request.getParameter("three");
  	String four =request.getParameter("four");
  	String five =request.getParameter("five");
	%>
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
	            <div class="logo">
	               	<a href="home.jsp">감정의 온도</a>
	            </div>   
				<nav class="navbar">
					<ul>
	                    <li><a href="data.jsp"><span>온도계</span></a></li>
	                    <li><a href="http://118.40.82.69:9000/timefile" method="post" enctype="multipart/form-data"><span>기억창고</span></a></li>
	                    <li><a href="contact.jsp"><span>연결고리</span></a></li>
	                </ul>
	       	    </nav>
	       </div>
        </div>
        
        <!-- 섹션 02 관계도 -->
   	    <div id="main">
   	    
   	    	<div class="relation">
   	    		<div class="relation01">
	   	    		<div class="relation-title">
	   	 				<h2>감정관계도</h2>
	   	    		</div>
	   	    		<div class="relation-text">
						우리의 관계는 블라블라 블라 
	               </div>
	           </div>
	           <div class="relation02">
	           		<form action="DataMemory">
	           		<input type="submit" value="확인하기" name="relation-btn" id="relation-btn">
	           		</form>
	           </div>
   	    	</div>
   	    	
   	    	
			<!-- 관계도 -->
   	    	<div class="result">
   	    		<div class="result-03">
   	    			<div class="temperature">
                		<iframe src="graph\bubble.jsp?one=<%=one%>&two=<%=two%>&three=<%=three%>&four=<%=four%>&five=<%=five%>"></iframe>
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