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
    <link rel="stylesheet" href="css-sample/style.css" type="text/css">
    <link rel="stylesheet" href="css-sample/reset.css" type="text/css">
    <link rel="stylesheet" href="css-sample/home.css" type="text/css">
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
                        <%if(user!=null){ %>
                        <li><a href="data.jsp"><span data-hover="온도계">온도계</span></a></li>
                        <li><a href="memory.jsp"><span data-hover="기억창고">기억창고</span></a></li>
                        <li><a href="contact.jsp"><span data-hover="연결고리">연결고리</span></a></li>
                        <li><a href="LogoutService"><span data-hover="로그아웃">로그아웃</span></a></li>
                        <%}else{ %>
                        <li><a href="login.jsp"><span data-hover="로그인/회원가입">로그인</span></a></li>
                        <li><a href="join.jsp"><span data-hover="로그인/회원가입">회원가입</span></a></li>
                        <%} %>
                    </ul>
                </nav>
            </div>
        </div>
 
    <!-- join-->
        <!-- <div id="join-ocapity"></div> -->
        <div id="join">
            <div class="logo">
                <p>감정의 온도</p>
            </div>
            <div clas="logo-text">
                <!-- 감정의 온도를 이용하시려면<br>
                회원가입이 필요합니다. -->
            </div>
            <div class="input-join">
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
    <!-- Footer -->
    <div id="footer">
        <div class="contact-sns">
            <span>트위터 / 페이스북 / 인스타그램</span>
        </div>
    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/theme.js"></script>
</body>

</html>