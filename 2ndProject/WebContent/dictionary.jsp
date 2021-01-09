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
	    			<li><a href="LogoutService"><span>로그아웃</span></a></li>  	
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
        
        <!-- 섹션 02 단어사전 설문조사 -->
   	    <div id="main">
   	    
   	    	<div class="ditionary">
   	    		<div class="dictionary-text">
   	 				감정사전 구축에 참여하세요!
   	    		</div>
   	    		<div class="dictionary-title">
					감정사전 설문조사 
               </div>
               
               <div class="dictionary-list">
                	<form action="" method="" enctype="">
						<table>
							<tr>
								<td></td>
								<td></td>
								<td>기쁨</td>
								<td>분노</td>
								<td>슬픔</td>
								<td>걱정</td>
							</tr>
							<%String[] array={"하나", "둘", "셋", "넷", "다섯", "여섯", "일곱", "여덟", "아홉", "열", "열하나", "열둘"};%>
							<%for(int i=0; i<12; i++) {%>
								<tr>
									<%for(int j=0; j<1; j++) {%>
										<td>
											<%=i+1 %>
										</td>
									<%} %>									
									<%for(int j=1; j<2; j++) {%>
										<td>
											<%=array[i] %>
										</td>
									<%} %>
									<%for(int j=2; j<6; j++) {%>
										<td>
											<input type="radio" name="word" value="1">
										</td>
									<%} %>
								</tr>
							<%} %>
						</table>
                    </form>               
            </div>
            <div class="dictionary-save-bnt">저장하기</div>
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
	</div>

</body>
</html>