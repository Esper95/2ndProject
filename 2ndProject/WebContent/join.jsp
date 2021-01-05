<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>ARIES - Free Bootstrap Theme by WowThemes.net</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/theme.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
		<i class="fa fa-bars"></i>
		</button>
                <a class="navbar-brand page-scroll" href="home.html">감정의 온도 </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="login.html">로그인</a>
                      </li>
                      <li>
                        <a href="join.html">회원가입</a>
                      </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <!-- <header class="intro">
        <div class="intro-body">
            <div class="video">
		<video muted autoplay loop>
		<source src="aries-html\aries-html\video\sample.mp4" type="video/mp4">
		<strong>Your browser does not support the video tag.</strong>
		</video> 일단 비디오 안뜸
	</div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">로그인/회원가입</h1>
                        <br>
                        <a href="#login" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header> -->


    <!--login&join-->
   
    <section id="intro">
		<div class="intro-container" data-aos="zoom-in" data-aos-delay="100">
			<div class="login-box">
				<h2>회원가입</h2>
				<form>
					<div class="user-box">
						<input type="text" name="eamil" required=""> <label>아이디</label>
					</div>
					<div class="user-box">
						<input type="password" name="pw" required=""> <label>비밀번호</label>
					</div>
					<div class="user-box">
						<input type="text" name="name" required=""> <label>핸드폰</label>
					</div>
					<div class="user-box">
						<input type="text" name="name" required=""> <label>이메일</label>
					</div>
					<a href="#" class="btn btn-info" style="align-self: center;  border-radius: 5px;"> 
						회원가입
					</a>
				</form>
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
    <!-- Custom Theme JavaScript -->
    <script src="js/theme.js"></script>
</body>

</html>