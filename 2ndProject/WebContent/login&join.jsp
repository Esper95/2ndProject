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
                            <a href="data.html">온도계</a>
                        </li>
                        <li>
                            <a href="memory.html">기억창고</a>
                        </li>
                        <li>
                            <a href="contact.html">연결고리</a>
                        </li>
                        <li>
                            <a href="login&join.html">로그인/회원가입</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


        <!--login&join-->
        <section style="background-color: whitesmoke;" id="login">
            <div class="content-section col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">로그인</div>
                        <div class="panel-body">
                	    <form action="LoginService">
                            <input type="text" class="form-control" placeholder="ID" name="id"><br />
                            <input type="text" class="form-control" placeholder="비밀번호" name="pw"><br />
                            <input type="submit" class="btn btn-lg btn-info btn-block" value="로그인"></input>
                    	</form>
                        </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">회원가입</div>
                        <div class="panel-body">
    		            <form action="JoinService">
                            <input type="text" class="form-control" placeholder="ID" name="id"> <br />
                            <input type="text" class="form-control" placeholder="비밀번호" name="pw"><br />
                            <input type="text" class="form-control" placeholder="핸드폰번호" name="phone"><br />
                            <input type="text" class="form-control" placeholder="EMAIL" name="email"><br />
                            <input type="submit" class="btn btn-lg btn-success btn-block" value="회원가입"></input>
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
        <!-- Custom Theme JavaScript -->
        <script src="js/theme.js"></script>
    </body>

    </html>