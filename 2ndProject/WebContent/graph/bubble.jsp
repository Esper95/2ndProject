<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <title>Hello Bubble Chart</title>
  <meta charset="utf-8">

  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,600,200italic,600italic&subset=latin,vietnamese" rel='stylesheet' type='text/css'>

  <script src="https://phuonghuynh.github.io/js/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/d3/d3.min.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/d3-transform/src/d3-transform.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/cafej/src/extarray.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/cafej/src/misc.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/cafej/src/micro-observer.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/microplugin/src/microplugin.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/bubble-chart/src/bubble-chart.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/central-click/central-click.js"></script>
  <script src="https://phuonghuynh.github.io/js/bower_components/bubble-chart/src/plugins/lines/lines.js"></script>
  <script src="index.js"></script>
  <style>
  
  	body {
  	width : 1400px;
  	height : 500px;
  	}
    .bubbleChart {
      min-width: 100px;
      max-width: 500px;
      height: 500px;
      margin: 0 auto;
    }
    .bubbleChart svg{
      background: white;
    }
  </style>
</head>
<body style="background: white">
<div class="bubbleChart">
</div>
</body>
<%

String one =request.getParameter("one");
String two =request.getParameter("two");
String three =request.getParameter("three");
String four =request.getParameter("four");
String five =request.getParameter("five");
   String user1 = "김수지";
   String user2 = "김미림";
   String user3 = "박성진";
   String user4 = "정고운";
   String user5 = "최정상";
   
   String total1 = one;
   String total2 = two;
   String total3 = three;
   String total4 = four;
   String total5 = five;
%>
<script>
var itemList = [];
var textList = ["<%=user1%>","<%=user2%>","<%=user3%>","<%=user4%>","<%=user5%>"];
var countList = ["<%=total1%>","<%=total2%>","<%=total3%>","<%=total4%>","<%=total5%>"];

for(var i = 0; i<textList.length; i++){
   itemList.push({text : textList[i], count : countList[i]});
}


$(document).ready(function () {
    var bubbleChart = new d3.svg.BubbleChart({
      supportResponsive: true,
      //container: => use @default
      size: 600,
      //viewBoxSize: => use @default
      innerRadius: 600 / 4,
      //outerRadius: => use @default
      radiusMin: 50,
      //radiusMax: use @default
      //intersectDelta: use @default
      //intersectInc: use @default
      //circleColor: use @default
      data: {
        items: itemList ,
        eval: function (item) {return item.count;},
        classed: function (item) {return item.text.split(" ").join("");}
      },
      plugins: [
        {
          name: "central-click",
          options: {
            text: "",
            style: {
              "font-size": "12px",
              "font-style": "italic",
              "font-family": "Source Sans Pro, sans-serif",
              //"font-weight": "700",
              "text-anchor": "middle",
              "fill": "white"
            },
            attr: {dy: "\px"},
            
          }
        },
        {
          name: "lines",
          options: {
            format: [
              {// Line #0
                textField: "count",
                classed: {count: true},
                style: {
                  "font-size": "28px",
                  "font-family": "Source Sans Pro, sans-serif",
                  "text-anchor": "middle",
                  fill: "white"
                },
                attr: {
                  dy: "0px",
                  x: function (d) {return d.cx;},
                  y: function (d) {return d.cy;}
                }
              },
              {// Line #1
                textField: "text",
                classed: {text: true},
                style: {
                  "font-size": "14px",
                  "font-family": "Source Sans Pro, sans-serif",
                  "text-anchor": "middle",
                  fill: "white"
                },
                attr: {
                  dy: "20px",
                  x: function (d) {return d.cx;},
                  y: function (d) {return d.cy;}
                }
              }
            ],
            centralFormat: [
              {// Line #0
                style: {"font-size": "50px"},
                attr: {}
              },
              {// Line #1
                style: {"font-size": "30px"},
                attr: {dy: "40px"}
              }
            ]
          }
        }]
    });
  });


</script>
</html>