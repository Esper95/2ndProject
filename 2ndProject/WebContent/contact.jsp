<%@page import="conn.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>감정의 온도</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/theme.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700,400italic,700italic" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css-sample/style.css">
<link rel="stylesheet" href="css-sample/reset.css">
<link rel="stylesheet" href="css-sample/home.css">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
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
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
		<ul class="nav navbar-nav">
			<li>
			<a href="data.jsp">온도계</a>
			</li>
			<li>
			<a href="memory.jsp">기억창고</a>
			</li>
			<li>
			<a href="contact.jsp">연결고리</a>
			</li>
			<li>
				<a href="LogoutService">로그아웃</a>
			</li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</div>
<!-- /.container -->
</nav>
<!-- Intro Header -->
<header class="intro">
<div class="intro-body">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h1 class="brand-heading">Get in Touch</h1>
				<p class="intro-text">
					The contact form is Workin'!
				</p>
				<a href="#contact" class="btn btn-circle page-scroll">
				<i class="fa fa-angle-double-down animated"></i>
				</a>
			</div>
		</div>
	</div>
</div>
</header>
<!-- Contact Section -->
<section id="contact">
<div class="container content-section">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2">
			<div class="done">
				<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert">×</button>
					Your message has been sent. Thank you!
				</div>
			</div>
			<form method="post" action="contact.php" id="contactform">
				<div class="form">
					<input type="text" name="name" placeholder="Your Name *">
					<input type="text" name="email" placeholder="Your E-mail Address *">
					<textarea name="comment" rows="7" placeholder="Type your Message *"></textarea>
					<input type="submit" id="submit" class="clearfix btn" value="Send">
				</div>
			</form>
		</div>
	</div>
</div>
</section>
<!-- Footer -->
<footer>
<div class="container text-center">
	<p class="credits">
		Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>

	</p>
</div>
</footer>
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<!-- Contact JavaScript -->
<script src="js/validate.js"></script>
<!-- Custom Theme JavaScript -->
<script src="js/theme.js"></script>
</body>
</html>