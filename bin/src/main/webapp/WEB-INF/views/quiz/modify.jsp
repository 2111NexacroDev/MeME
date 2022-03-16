<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#quizWriteForm {
		border: 1px solid black;
		width:400px;
		text-align: left;
		margin: auto;
	}
</style>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	var type = document.querySelector("#type");
    var plus = document.querySelector("#plus");
    var minus = document.querySelector("#minus");
    var chNum = 3;
    var quizCh3 = document.querySelector("#quizCh3");
    var quizCh4 = document.querySelector("#quizCh4");
	
    type.addEventListener("change", function() {
        var multiple = $("#type option:selected").val();
        var choice = document.querySelector("#choice");
        if(multiple == "M") {
            choice.style.display = "block";
        } else {
        	choice.style.display = "none";
        }
    });

    plus.addEventListener("click", function() {
        if(chNum==3) {
        	quizCh3.style.display = "block";
            chNum++;
        } else if(chNum==4) {
        	quizCh4.style.display = "block";
            chNum++;
        }
    });
    
    minus.addEventListener("click", function() {
    	if(chNum==4) {
    		quizCh3.style.display = "none";
    		chNum--;
    	} else if(chNum==5) {
    		quizCh4.style.display = "none";
    		chNum--;
    	}
    		
    });
    
    if($("#typeM").val()=="M") {
    	choice.style.display = "block";
    	
    	if($("#typeM3").val()!="") {
    		quizCh3.style.display = "block";
    		chNum++;
    	}
    	if($("#typeM4").val()!="") {
    		quizCh4.style.display = "block";
    		chNum++;
    	}
    }
    
});
</script>
</head>
<body>
	<h1 align="center">유행어 퀴즈 수정</h1>
	<form action="/quiz/modify.me" method="post" id="quizWriteForm" enctype="multipart/form-data">
	
	    <select name="quizType" id="type">
	        <option value="" selected disabled>유형선택</option>
	        <c:set var="type" value="${quiz.quizType }"/>
	        	<c:choose>
	        		<c:when test="${type eq 'O' }">
				        <option value="O" selected="selected">OX퀴즈</option>
				        <option value="M">객관식퀴즈</option>
				        <option value="S">단답형퀴즈</option>
			        </c:when>
			        <c:when test="${type eq 'M' }">
				        <option value="O">OX퀴즈</option>
				        <option value="M" selected="selected">객관식퀴즈</option>
				        <option value="S">단답형퀴즈</option>
			        </c:when>
			         <c:when test="${type eq 'S' }">
				        <option value="O">OX퀴즈</option>
				        <option value="M">객관식퀴즈</option>
				        <option value="S" selected="selected">단답형퀴즈</option>
			        </c:when>
		        </c:choose>
	    </select>
	    
	    <br>
	    <textarea name="quizQuest" cols="50" rows="10" placeholder="문제를 입력 해주세요">${quiz.quizQuest }</textarea><br><br>
	    <input type="text" name="quizAnswer" placeholder="정답을 입력 해주세요" value="${quiz.quizAnswer }"><br>
	    <br>
	    <div id="choice" style="display: none;">
			<input type="text" name="quizCh1" placeholder="보기를 입력 해주세요" value="${quiz.quizCh1 }"> &nbsp;&nbsp;
			<input type="button" id="plus" value="+">
			<input type="button" id="minus" value="-">
			<br>
			<input type="text" name="quizCh2" placeholder="보기를 입력 해주세요" value="${quiz.quizCh2 }">
			<input type="text" name="quizCh3" id="quizCh3" placeholder="보기를 입력 해주세요" style="display: none" value="${quiz.quizCh3 }">
			<input type="text" name="quizCh4" id="quizCh4" placeholder="보기를 입력 해주세요" style="display: none" value="${quiz.quizCh4 }">
		</div>
		첨부파일 <input type="file" name="uploadFile"><br>
	    <input type="submit" value="수정">
	    <input type="button" value="취소">
	    <input type="hidden" name="quizNo" value="${quiz.quizNo }">
    </form>
    
    <input type="hidden" id="typeM" value="${quiz.quizType }">
    <input type="hidden" id="typeM3" value="${quiz.quizCh3 }">
    <input type="hidden" id="typeM4" value="${quiz.quizCh4 }">
</body>
</html>