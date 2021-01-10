<%@page import="conn.model.dataDTO"%>
<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>감정의 온도</title>t
	<link rel="stylesheet" href="css-sample/totalStyle.css" type="text/css">

    <script src="js/jquery-3.5.1.min.js"></script>
</head>
<body >
	<!-- 전체 contain -->
<%	memberDTO user = (memberDTO)session.getAttribute("user");
	//String id =request.getParameter("id");
	
	
	//관계...	
  	String relation1 =request.getParameter("1relation");
  	String relation2 =request.getParameter("2relation");
  	String relation3 =request.getParameter("3relation");
  	String relation4 =request.getParameter("4relation");
  	String relation5 =request.getParameter("5relation");
  	//카카오톡 빈 간격 시간
  	// 카카오톡 문장 개수
 	// 낮 저녁 카톡 개수
  	// ㅋㅋㅋ 개수
 	String morning = request.getParameter("morning");
 	String night = request.getParameter("night");
  	String kikiCount = request.getParameter("kikiCount");
  	// 감정 분류 개수
    String worry =request.getParameter("worry");
	String angry =request.getParameter("angry");
	String sad =request.getParameter("sad");
	String happy =request.getParameter("happy");
	// 감정 주요 키워드
	String worry1 =request.getParameter("worry1");
	String worry2 =request.getParameter("worry2");
	String worry3 =request.getParameter("worry3");
	String angry1 =request.getParameter("angry1");
	String angry2 =request.getParameter("angry2");
	String angry3 =request.getParameter("angry3");
	String sad1 =request.getParameter("sad1");
	String sad2 =request.getParameter("sad2");
	String sad3 =request.getParameter("sad3");
	String happy1 =request.getParameter("happy1");
	String happy2 =request.getParameter("happy2");
	String happy3 =request.getParameter("happy3");
	  	// kakaodata DTO 데이터 저장
  	dataDTO kakaodata = new dataDTO("Me","you",morning,night,kikiCount);
  	session.setAttribute("kakaodata", kakaodata);
	// emotion DTO 데이터 저장
	dataDTO emotion = new dataDTO("Me","you",worry,angry,sad,happy);
	session.setAttribute("emotion", emotion);
	// keyword DTO 데이터 저장
	dataDTO keyword = new dataDTO("Me","you",worry1,worry2,worry3,angry1,angry2,angry3,sad1,sad2,sad3,happy1,happy2,happy3);
	session.setAttribute("keyword", keyword);
 %>
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
		               	<a href="home.jsp"><img src="img/logo.png"></a>
		            </div>   
					<nav class="navbar">
						<ul>
	           				<li><a href="data.jsp"><span>온도계</span></a></li>
	                  		<li><a href="http://118.40.82.69:9000/timefile" method="post" enctype="multipart/form-data"><span>기억창고</span></a></li>
		                    <li><a href="dictionary.jsp"><span>감정사전</span></a></li>
		                </ul>
		       	    </nav>
	       	    </div>
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
                        <input type="file"  name="file" id="file" value="파일 선택">
                        <input type="submit"  name="upload" id="upload" value="제출하기">
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
   	    	<div class="data-result">
   	    	
   	    		<!-- 온도계 -->
   	    		<div class="result-01">
   	    			<div class="result-title">우리의 감정온도는</div>
   	    			<div class="result-img">
   	    				<iframe src="graph\temperature.jsp"></iframe>
   	    			</div>
   	    		</div>
   	    	
   	    		<!-- 감정차트 + 저장 -->
   	    		<div class="result-02">
   	    			<div class="temperature">
                		 <iframe src="graph/dot.jsp?worry=<%=worry%>&angry=<%=angry%>&sad=<%=sad%>&happy=<%=happy%>&worry1=<%=worry1%>&worry2=<%=worry2%>&worry3=<%=worry3%>&angry1=<%=angry1%>&angry2=<%=angry2%>&angry3=<%=angry3%>&sad1=<%=sad1%>&sad2=<%=sad2%>&sad3=<%=sad3%>&happy1=<%=happy1%>&happy2=<%=happy2%>&happy3=<%=happy3%>"></iframe>

            		</div>
   	    		</div>
   	    		<div class="data-save" >
   	    			<form action="DataSave">
   	    				<div class="partner">
   	    					<input type="text" name = "partner">
   	    				</div>
						<div class="save" onclick="onclick=document.all.save.click()">
  	    					<input type="submit" id="save" value="온도 저장하기">			
						</div>   	    				
   	    			</form>
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