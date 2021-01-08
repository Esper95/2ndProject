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
        
        <!-- 섹션 02 데이터 업로드 / 온도계 + 감정차트 + 저장하기 -->
   	    <div id="main">
   	    
   	    	<!-- 섹션 02-1 데이터 업로드 -->
   	    	<div class="data">
   	    		<div class="data-title">
   	 				분석할 데이터를 선택하세요
   	    		</div>
   	    		<div class="data-up">
   	    			<form action="http://118.40.82.69:9000/predict" method="post" enctype="multipart/form-data">
                    <div class="data-up-btn">
                        <input type="file"  name="file" id="file"><br>
                        <input type="submit"  name="upload" id="upload">
                    </div>
                   	</form>
               </div>
   	    	</div>
   	    	
   	    	<!-- 섹션 02-2 온도계 / 감정차트 + 저장하기  -->
   	    	
   	    	<!-- 데이터 업로드 전 -->
   	    	<!-- <div class="none-data">
   	    		<h1>분석할 데이터가 없습니다!</h1>
   	    	</div> -->
   	    	
   	    	<!-- 데이터 분석 후 출력 -->
   	    	<div class="result">
   	    	
   	    		<!-- 온도계 -->
   	    		<div class="result-01">
   	    			<div class="result-title">우리의 감정온도</div>
   	    			<div class="result-img">이미지/온도계 출력</div>
   	    		</div>
   	    	
   	    		<!-- 감정차트 + 저장 -->
   	    		<div class="result-02">
   	    			<div class="temperature">
                		<iframe src="graph\dot.jsp"></iframe>
            		</div>
   	    		</div>
   	    		<div class="save-file-btn">
	                <a href="#">온도 저장하기</a>
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
    </div>
</body>
</html>