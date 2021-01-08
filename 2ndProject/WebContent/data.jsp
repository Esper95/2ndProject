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
    <link rel="stylesheet" href="css-sample/style.css">
    <link rel="stylesheet" href="css-sample/reset.css">
    <link rel="stylesheet" href="css-sample/home.css">
    <script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
<%HttpSession session_user = request.getSession();
  memberDTO user = (memberDTO)session_user.getAttribute("user");
  
    String worry =request.getParameter("worry");
	String angry =request.getParameter("angry");
	String sad =request.getParameter("sad");
	String happy =request.getParameter("happy");
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
 %>
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
                        <h3>분석할 데이터를 추가하세요</h3>
                    </div>
                	<form action="http://118.40.82.69:9000/predict" method="post" enctype="multipart/form-data">
                    <div class="data-up-btn">
                        <input type="file"  name="file" id="file">
                        <input type="submit"  name="upload" id="upload">
                    </div>
                   </form>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="data-result">
                <h2>감정온도 측정 결과</h2>
            </div>
            <div class="temperature">
                <iframe src="graph/dot.jsp?worry=<%=worry%>&angry=<%=angry %>&sad=<%=sad%>&happy=<%=happy%>
                			 &worry1=<%=worry1%>&worry2=<%=worry2%>&worry3=<%=worry3%>
							 &angry1=<%=angry1%>&angry2=<%=angry2%>&angry3=<%=angry3%>
							 &sad1=<%=sad1%>&sad2=<%=sad2%>&sad3=<%=sad3%>
							 &happy1=<%=happy1%>&happy2=<%=happy2%>&happy3=<%=happy3%> "> </iframe>
            </div>
            <div class="save-file-btn">
                <a href="#"><p>온도 저장하기</p></a>
            </div>
        </div>
    </div>
        <div id="footer">
            <div class="contact-sns">s
                <span>트위터 / 페이스북 / 인스타그램</span>
            </div>
        </div>
    </div>
    
</body>
</html>