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
        <title>Neptune - Free Bootstrap Theme by WowThemes.net</title>
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
                    <a class="navbar-brand page-scroll" href="home.html">
			감정의 온도
			</a>
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
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        <!-- Intro Header -->

        <section id="single-project">
            <div class="container content-section text-center">
                <div class="row">
                    <h2>데이터 업로드(명칭 뭘로하지?)</h2>
                    <div class="dataUP">
                        <p>분석할 데이터를 추가하세요</p>
                        <p>
                            <form action="DataUpload">
                                <input type="file" name="file" class="btnghost">
                                <input type="submit" class="btnghost" value="+">
                            </form>
                        </p>
                    </div>
                </div>
        </section>
        <section class="temperature">
            <div class="temperatureBox">
                <div class="temperature-keyword">
                    <h2>우리 감정의 온도</h2>
                    <p>키워드 출력</p>
                </div>
                <div class="temperature-img"><img>감정 이미지(표정)출력</div>
            </div>
        </section>
        <section id="temperatureGraph">
            <div class="graphBox">
                <div class="dotGraph">
                    <iframe src="graph\dot.html"></iframe>
                </div>
                <p>
                    <a href="#" class="btnghost"><i class="#"></i> 온도 저장하기</a>
                    <!-- <form action="DataSave">
						<input type="submit" class="btnghost" value="온도 저장하기">
					</form> -->
                </p>
            </div>
        </section>
        <!-- Footer -->
        <footer>
            <div class="container text-center">
                <p class="credits">
                    트위터 / 페이스북 / 인스타그램 / 연결고리
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