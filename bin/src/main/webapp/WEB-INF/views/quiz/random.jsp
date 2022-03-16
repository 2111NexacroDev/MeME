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
/* 		border: 1px solid black; */
		width: 500px;
		text-align: left;
		margin: auto;
	}
	
	[id^='ch'] {
		color: #008F7C;
	}
	#type {
		color: #DB4000;
	}
</style>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function(){
    	var $answer = []; // 정답 배열
    	var $quizNo = []; // 퀴즈번호 배열
    	var $quizType = []; // 퀴즈 유형
        var clock = 30; // 제한시간 설정
        var nextNum = 0; // 퀴즈 인덱스
        var userAnswer = []; // 유저가 입력한 정답
        var score = 0; // 점수
        var $report = [];
        
        getQuizNo(); // 맨 처음에 퀴즈 가져오기
        var time = setInterval(() => { // 타이머! 0초되면 결과로!
            if(clock>=0) {
                $("#time").html(clock);
                clock--;
            } else {
            	$("#quizNo_").val($report);
            	$("#userAnswer_").val(userAnswer);
            	$("#score_").val(score);
            	
            	
            	$("#postSubmit").submit();
            }
        }, 1000);

        // 엔터눌럿을때, 정답 칸에 값이 있을떄, 다음퀴즈 진행
        $(document).keyup(function(event) {
          	 if (event.keyCode == '13' && $('#answer').val() != '') {
          		nextQuiz();
          	   $('#answer').val("");
          	  }
          	  
          });
        
        // 랜덤으로 퀴즈번호 json으로 가져오기
        function getQuizNo() {
        	$.ajax({
				url : "/quiz/getRandom.me",
				type : "get",
				dataType : "json",
				success : function(data) {
					for(var i in data) {
						$quizNo[i] = data[i].quizNo;
					}
					getList();
				},
				error : function() {
					alert("ajax 실패!");
				}
			});
        }
        
        // 랜덤 퀴즈 번호로 퀴즈 리스트 json으로 가져오기
        function getList() {
        	if($quizNo[nextNum] != null) {
	        	$.ajax({
					url : "/quiz/getList.me",
					type : "get",
					dataType : "json",
					data : {"quizNo" : $quizNo[nextNum]},
					success : function(data) {
							$('#question').html(data.quizQuest);
							$('#ch1').html(data.quizCh1);
							$('#ch2').html(data.quizCh2);
							$('#ch3').html(data.quizCh3);
							$('#ch4').html(data.quizCh4);
							$answer[nextNum] = data.quizAnswer;
							if(data.quizType == "O") {
								$('#type').html("OX 퀴즈");
								$('#answer').attr("placeholder", "O, X 입력후 엔터");
							}else if (data.quizType == "S") {
								$('#type').html("단답형 퀴즈");
								$('#answer').attr("placeholder", "단어 입력후 엔터");
							}else {
								$('#type').html("객관식 퀴즈");
								$('#ch1').html("보기<br>(1) "+data.quizCh1);
								$('#ch2').html("(2) "+data.quizCh2);
								$('#ch3').html("(3) "+data.quizCh3);
								$('#ch4').html("(4) "+data.quizCh4);
								$('#answer').attr("placeholder", "1 ~ 4 숫자 입력후 엔터");
							}

							$report[nextNum] = data.quizNo;
					},
					error : function() {
						
					}
				});
        	}
        }
        
        // 정답 맞는지 체크하고 다음을 진행
        function nextQuiz() {
        	if($('#answer').val() == $answer[nextNum]) {
        		$('#whether').html("정답");
				$('#whether').css("color", "blue");
        		userAnswer[nextNum] =  $('#answer').val();
        		score++;
        	} else {
        		$('#whether').html("오답");
				$('#whether').css("color", "red");
        		userAnswer[nextNum] =  $('#answer').val();
        	}
			nextNum++;
			getList();
			
			if($quizType[nextNum] != "M") {
				$('#ch1').html("");
				$('#ch2').html("");
				$('#ch3').html("");
				$('#ch4').html("");
			}
		}
    });
</script>
</head>
<body>
	<p></p>
	<h1>랜덤 퀴즈</h1>
	<div id="quizContents">
		<div align="right">
		<B>제한시간 :<span id="time"></span></B> 초</div>
		<div id="type" style="font-weight:bolder;"></div>
		
		&nbsp;&nbsp;&nbsp;
		<div align="right">
			<B><span id="whether"></span></B>
		</div>
		<br>
		<div id="quest">
			<b id="question"></b> <br>
			<div id="ch1"></div>
			<div id="ch2"></div>
			<div id="ch3"></div>
			<div id="ch4"></div>
			<br> <br> <br>
			<div align="center">
				<input type="text" id="answer">
			</div>
			
		</div>
		<form action="/quiz/result.me" method="post" id="postSubmit">
			<input type="hidden" name="quizNo" id="quizNo_">
			<input type="hidden" name="userAnswer" id="userAnswer_">
			<input type="hidden" name="score" id="score_">
		</form>
	</div>
	
</body>
</html>