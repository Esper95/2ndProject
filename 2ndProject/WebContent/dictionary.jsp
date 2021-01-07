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
                <div class="t-area" style="display: flex">
                    <div class="data-up-text" style= "padding-top: 23px">
                        <h3>감정사전 구축에 참여하세요!</h3>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="data-result">
                <h2>감정사전 설문조사</h2>
            </div>
            <div class="temperature">
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
            <div class="save-file-btn">
                <a href="#"><p>온도 저장하기</p></a>
            </div>
        </div>
        <div id="footer">
            <div class="contact-sns">
                <span>트위터 / 페이스북 / 인스타그램</span>
            </div>
        </div>
</body>
</html>