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
    <link rel="stylesheet" href="css-sample/totalStyle.css" type="text/css">
</head>

<body>
<%HttpSession session_user = request.getSession();
  memberDTO user = (memberDTO)session_user.getAttribute("user");%>
  
       <div id="contain">
    
        <!-- ���� 01 �ΰ�/�޴� -->
        <div id="header">
        	<div class="top">
    			<ul>
	    			<li><a href="login.jsp"><span data-hover="�α���/ȸ������">�α���</span></a></li>
	                <li><a href="join.jsp"><span data-hover="�α���/ȸ������">ȸ������</span></a></li>
    			</ul>
    		</div>
    		<div class="menu">
	            <div class="logo">
	               	<a href="home.jsp">������ �µ�</a>
	            </div>   
				<nav class="navbar">
					<ul>
	                    <li><a href="data.jsp"><span>�µ���</span></a></li>
	                    <li><a href="memory.jsp"><span>���â��</span></a></li>
	                    <li><a href="contact.jsp"><span>�����</span></a></li>
	                </ul>
	       	    </nav>
	       </div>
        </div>
        
        <!-- ���� 02 ȸ������ -->
   	    <div id="main">
   	    
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
	                    <input type="submit" style="display: none;" id="l">
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

        <!-- ���� 03 footer -->
        <div id="footer">
            <div class="footer-box">
                <span>Ʈ����</span>
                <span>���̽���</span>
                <span>�ν�Ÿ�׷�</span>  
            </div>
        </div>
        
        <!-- ��ü contain �� -->
    </div>
  
</body>

</html>