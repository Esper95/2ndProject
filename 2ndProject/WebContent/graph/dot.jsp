<%@page import="conn.model.dataDTO"%>
<%@page
	import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../css-sample/data.css">
<script src="https://d3js.org/d3.v3.min.js" language="JavaScript"></script>
<script src="liquidFillGauge.js" language="JavaScript"></script>
<style>
ul {
	list-style: none;
	margin-top: 10px;
	text-align: center;
	padding: 0 0;
}

ul li {
	font-size: 20px;
}
</style>
</head>
<body style="background-color: whitesmoke;">
<%
request.setCharacterEncoding("UTF-8");
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
String happy3 =request.getParameter("happy3"); %>
	<div class="dot-box"
		style="display: flex; text-align: center; justify-content: center;">
		<div class="dot-items">
			<svg id="fillgauge2" width="200px" height="200"
				onclick="gauge2.update(NewValue());"></svg>
			<div class="keyword-items red">
				<ul>
					<li><%=happy1%></li>
					<li><%=happy2%></li>
					<li><%=happy3%></li>
				</ul>
			</div>
		</div>

		<div class="dot-items">
			<svg id="fillgauge3" width="200px" height="200"
				onclick="gauge3.update(NewValue());"></svg>
			<div class="keyword-items yellow">
				<ul>
					<li><%=angry1%></li>
					<li><%=angry2%></li>
					<li><%=angry3%></li>
				</ul>
			</div>
		</div>
		<div class="dot-items">
			<svg id="fillgauge4" width="200px" height="200"
				onclick="gauge4.update(NewValue());"></svg>
			<div class="keyword-items green">
				<ul>
					<li><%=sad1%></li>
					<li><%=sad2%></li>
					<li><%=sad3%></li>
				</ul>
			</div>
		</div>
		<div class="dot-items">
			<svg id="fillgauge5" width="200px" height="200"
				onclick="gauge5.update(NewValue());"></svg>
			<div class="keyword-items blue">
				<ul>
					<li><%=worry1%></li>
					<li><%=worry2%></li>
					<li><%=worry3%></li>
				</ul>
			</div>
		</div>
	</div>
	<%
	String worry =request.getParameter("worry");
	String angry =request.getParameter("angry");
	String sad =request.getParameter("sad");
	String happy =request.getParameter("happy");
	
	%>
	<script language="JavaScript">
    var config1 = liquidFillGaugeDefaultSettings();
    config1.circleColor = "#FE696D";
    config1.textColor = "#FE696D";
    config1.waveTextColor = "#FE696D";
    config1.waveColor = "#FFDDDD";
    config1.circleThickness = 0.2;
    config1.textVertPosition = 0.2;
    config1.waveAnimateTime = 1000;
    var gauge2= loadLiquidFillGauge("fillgauge2", <%=happy%>, config1);
    var config2 = liquidFillGaugeDefaultSettings();
    config2.circleColor = "#FCD34D";
    config2.textColor = "#FCD34D";
    config2.waveTextColor = "#FCD34D";
    config2.waveColor = "#fef1c8";
    config2.circleThickness = 0.2;
    config2.textVertPosition = 0.2;
    config2.waveAnimateTime = 1000;
    // config2.waveAnimateTime = 2000;
    // config2.waveHeight = 0.3;
    // config2.waveCount = 1;
    var gauge3= loadLiquidFillGauge("fillgauge3", <%=sad%>, config2);
    var config3 = liquidFillGaugeDefaultSettings();
    config3.circleColor = "#68C6A3";
    config3.textColor = "#68C6A3";
    config3.waveTextColor = "#68C6A3";
    config3.waveColor = "#c3e9db";
    config3.circleThickness = 0.2;
    config3.textVertPosition = 0.2;
    config3.waveAnimateTime = 1000;
    // config3.textVertPosition = 0.8;
    // config3.waveAnimateTime = 5000;
    // config3.waveHeight = 0.15;
    // config3.waveAnimate = false;
    // config3.waveOffset = 0.25;
    // config3.valueCountUp = false;
    // config3.displayPercent = false;
    var gauge4= loadLiquidFillGauge("fillgauge4", <%=angry%>, config3);
    var config4 = liquidFillGaugeDefaultSettings();
    config4.circleColor = "#3084BA";
    config4.textColor = "#3084BA";
    config4.waveTextColor = "#3084BA";
    config4.waveColor = "#b2d4eb";
    config4.circleThickness = 0.2;
    config4.textVertPosition = 0.2;
    config4.waveAnimateTime = 1000;
    // config4.textVertPosition = 0.8;
    // config4.waveAnimateTime = 1000;
    // config4.waveHeight = 0.05;
    // config4.waveAnimate = true;
    // config4.waveRise = false;
    // config4.waveHeightScaling = false;
    // config4.waveOffset = 0.25;
    // config4.textSize = 0.75;
    // config4.waveCount = 3;
     var gauge5= loadLiquidFillGauge("fillgauge5", <%=worry%>, config4);
   	</script>
   
</body>
</html>