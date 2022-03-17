<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>error</title>
        <script type="text/javascript">
            $(function () {
                $("#btnWrite").on("click", function () {
                    location.href = "${path}/board/boardlist.jsp";
                });
            });
        </script>
        <style>
            .layer {
/*                 position: absolute; */
                top: 0;
                left: 0;
                width: 100%;
                height: 200px;
                text-align: center;
                margin-top: 10%
            }

            .layer .content {
                display: inline-block;
                background: #dddddd;
                vertical-align: middle;
/*                 border: 1px solid black; */
                width: 30%;
                height: 100%;
            }

            .layer .blank {
                display: inline-block;
                width: 0;
                height: 100%;
                vertical-align: middle
            }
            #btnWriter{
                width: 50px;
                height: 30px;
/*                 background-color: gray; */
                color : black;
                font-size: 15px;
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
    <div class="layer">
        <span class="content" style="text-align: left;">

            <h2 align="center">로그인 필요</h2>
            <h4 align="center">로그인이 필요합니다</h4>

            <br>
            <br>
            
            <p align="center">
                <input type="button" id="btnWriter" value="확인" />
            </p>
            <br>
        </span>
        <span class="blank"></span>
    </div>
    </body>

    </html>