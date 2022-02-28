<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
    	body {
			margin: 0 auto;
			text-align: center;
		}
		#quizContents {
/* 			border: 1px solid black; */
			width: 500px;
			text-align: left;
			margin: auto;
		}
		button{
			background-color: red;
			color: yellow;
		}
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
/*         modal창 (파란색 배경) */
        #modal .modal-window {
            background: rgba( 69, 139, 197, 0.70 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 350px;
            position: relative;
            top: 50px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }
        #modal .title h2 {
            display: inline;
        }
        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
            text-align: center;
        }
        
        #modal #reportContents {
        	width: 350px;
            height: 200px;
        }
        
        #choice{
        	color: darkgreen
        }
        
        #answer{
            color: red;
        }
        
        #userAnswer{
            color: #008F7C;
        }
    </style>
<script>
window.onload = function(){
	const modal = document.getElementById("modal")
	function modalOn() {
	    modal.style.display = "flex"
	    $("#reportContents").val("");
	}
	function isModalOn() {
	    return modal.style.display === "flex"
	}
	function modalOff() {
	    modal.style.display = "none"
	}
	
	const closeBtn = modal.querySelector(".close-area")
	closeBtn.addEventListener("click", e => {
	    modalOff()
	})
	modal.addEventListener("click", e => {
	    const evTarget = e.target
	    if(evTarget.classList.contains("modal-overlay")) {
	        modalOff()
	    }
	})
	window.addEventListener("keyup", e => {
	    if(isModalOn() && e.key === "Escape") {
	        modalOff()
	    }
	})

    // 모달 온, 신고창 띄우기
	var btnModal = document.querySelectorAll(".btn-modal");

    for (var i=0; i<btnModal.length; i++) {
        btnModal[i].addEventListener("click", function(event){
        	modalOn();
        	$("#reportNo").val(this.id);
        });
    }
    
    // 모달에서 신고하기 버튼 클릭시
	    var report = document.querySelector("#report");
	    report.addEventListener("click", function() {
	    	if($("#reportContents").val() != "") {
	    		var quizNo = $("#reportNo").val();
	    		var reportContents = $("#reportContents").val();
	    		$.ajax({
	    			url : "/quiz/report.me",
					type : "get",
					data : {"quizNo" : quizNo, "reportContents" : reportContents},
					success : function(data) {
						console.log(data);
						if(data=="NoLogin") {
							window.open("http://127.0.0.1:8889/login.me");
						}
					},
					error : function() {
						console.log(data);
					}
	    		});
	    		modalOff();
	    	}
	    });
    
}
</script>
</head>
<body>
	<p></p>
	<h1>퀴즈 결과</h1>
	<div id="quizContents">
		<c:forEach var="i" items="${qList}" varStatus="vs">
			<b>문제 : ${i.quizQuest} <br></b>
	    	<c:if test="${not empty i.quizCh1}">
	    		<div id="choice">
	    		보기 <br>
		    	(1) ${i.quizCh1} <br>
		    	(2) ${i.quizCh2} <br>
		    	(3) ${i.quizCh3} <br>
		    	(4) ${i.quizCh4} <br>
		    	</div>
	    	</c:if>
		    	<div id="answer">정답 : ${i.quizAnswer} <br></div>
		    	<div id="userAnswer">나의 답 : ${userAnswer[vs.index] } <br></div>
		        <button align="right" class="btn-modal" id="${i.quizNo}">신고</button>
		    	<br><br><br>
		</c:forEach>
		정답 갯수 : ${score }
		
		<!-- 모달 영역 -->
		<div id="modal" class="modal-overlay">
	        <div class="modal-window">
	            <div class="close-area">X</div>
	                <div class="content">
	                    <p>신고 내용을 입력해주세요</p>
	                    <textarea id="reportContents" name="reportContents" rows="15" cols="50"></textarea>
	                    <button id="report">신고</button>
	                    <input type="hidden" id="reportNo" name="reportNo">
	                </div>
	        </div>
	    </div>
	
	</div>
	
	
</body>
</html>