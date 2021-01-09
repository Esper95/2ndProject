<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        html, body {
        height: 100%;
        }

        .container {
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        }

        .show {
        transition: all 0.5s ease-in;
        color: black;
        font-size: 60px;
        margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="show js-count">
          100
        </div>
        <div> µµ¾¾</div>
      </div>

      <script>

            const show = document.querySelector('.js-count'),
                number = Number(show.innerHTML) + 1;

            let   counter = 0,
                delay = 1,
                x = number/2,
                y = 0;

            counter_js();

            function counter_js(){
                y ++;
                delay = (x-y);
                show.innerHTML = counter.toString();
                counter ++;
                if ( counter < number ) {
                    setTimeout(function(){
                        counter_js();
                    }, delay)    
                } 
            }
      </script>
</body>
</html>