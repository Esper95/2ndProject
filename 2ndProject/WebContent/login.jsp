<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>������ �µ�</title>
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
                    <a href="home.jsp">������ �µ�</a>   
                </p>
                <nav class="menu effect">
                    <ul>
                        <%if(user!=null){ %>
                        <li><a href="data.jsp"><span data-hover="�µ���">�µ���</span></a></li>
                        <li><a href="memory.jsp"><span data-hover="���â��">���â��</span></a></li>
                        <li><a href="contact.jsp"><span data-hover="�����">�����</span></a></li>
                        <li><a href="LogoutService"><span data-hover="�α׾ƿ�">�α׾ƿ�</span></a></li>
                        <%}else{ %>
                        <li><a href="login.jsp"><span data-hover="�α���/ȸ������">�α���</span></a></li>
                        <li><a href="join.jsp"><span data-hover="�α���/ȸ������">ȸ������</span></a></li>
                        <%} %>
                    </ul>
                </nav>
            </div>
        </div>
 
    <!-- join-->
        <!-- <div id="join-ocapity"></div> -->
        <div id="join">
            <div class="logo">
                <p>������ �µ�</p>
            </div>
            <div clas="logo-text">
                <!-- ������ �µ��� �̿��Ͻ÷���<br>
                ȸ�������� �ʿ��մϴ�. -->
            </div>
            <div class="input-join">
                <form action="LoginService">
                    <label>���̵�</label>
                    <input type="text" name="id" required=""> 
                    <label>��й�ȣ</label>
                    <input type="password" name="pw" required=""> 
                    <input type="submit" style="display: none;" name="l" id="l">
                </form>
                <div class=join-btn onclick="onclick=document.all.l.click()">
                    <a href="#"><p>�α���</p></a> 
                </div>
                <div class="find-area">
                    <div class="find-left">
                        <a href="#">���̵�<br>��й�ȣ ã��</a>
                    </div>
                    <div class="find-right">
                        <a href="join.jsp">ȸ�������ϱ� </a>
                    </div>
                </div>   
            </div>
        </div>

    </div>
    <!-- Footer -->
    <div id="footer">
        <div class="contact-sns">
            <span>Ʈ���� / ���̽��� / �ν�Ÿ�׷�</span>
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