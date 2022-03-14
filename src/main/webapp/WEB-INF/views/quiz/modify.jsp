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
		/* border: 1px solid black; */
		width:400px;
		text-align: left;
		margin: auto;
	}
	#att_zone{
	width: 660px;
	min-height:150px;
	padding:10px;
	border:1px dotted #00f;
	}
	#att_zone:empty:before{
		content : attr(data-placeholder);
		color : #999;
		font-size:.9em;
	}
	#title_name {
   font-weight: bold;
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
    
    ( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id
    		https://jobtc.tistory.com/43 참고
    		*/
    		  imageView = function imageView(att_zone, btn){

    		    var attZone = document.getElementById(att_zone);
    		    var btnAtt = document.getElementById(btn)
    		    var sel_files = []; // 첨부파일 목록
    		    
    		    // 이미지와 체크 박스를 감싸고 있는 div 속성
    		    var div_style = 'display:inline-block;position:relative;'
    		                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    		    // 미리보기 이미지 속성
    		    var img_style = 'width:100%;height:100%;z-index:none';
    		    // 이미지안에 표시되는 체크박스의 속성
    		    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
    		                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
    		  
    		    // 파일을 선택했을때
    		    btnAtt.onchange = function(e){
    		      var files = e.target.files;
    		      var fileArr = Array.prototype.slice.call(files)
    		      for(f of fileArr){
    		        imageLoader(f);
    		      }
    		    }  
    		    
    		  
    		    // 탐색기에서 드래그앤 드롭 사용
    		    attZone.addEventListener('dragenter', function(e){
    		      e.preventDefault();
    		      e.stopPropagation();
    		    }, false)
    		    
    		    attZone.addEventListener('dragover', function(e){
    		      e.preventDefault();
    		      e.stopPropagation();
    		      
    		    }, false)
    		  
    		    attZone.addEventListener('drop', function(e){
    		      var files = {};
    		      e.preventDefault();
    		      e.stopPropagation();
    		      var dt = e.dataTransfer;
    		      files = dt.files;
    		      for(f of files){
    		        imageLoader(f);
    		      }
    		      
    		    }, false)
    		    

    		    
    		    /*첨부된 이미지들을 배열에 넣고 미리보기 */
    		    imageLoader = function(file){
    		      sel_files.push(file);
    		      var reader = new FileReader();
    		      reader.onload = function(ee){
    		        let img = document.createElement('img')
    		        img.setAttribute('style', img_style)
    		        img.src = ee.target.result;
    		        attZone.appendChild(makeDiv(img, file));
    		      }
    		      
    		      reader.readAsDataURL(file);
    		    }
    		    
    		    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    		    makeDiv = function(img, file){
    		      var div = document.createElement('div')
    		      div.setAttribute('style', div_style)
    		      
    		      var btn = document.createElement('input')
    		      btn.setAttribute('type', 'button')
    		      btn.setAttribute('value', 'x')
    		      btn.setAttribute('delFile', file.name);
    		      btn.setAttribute('style', chk_style);
    		      btn.onclick = function(ev){
    		        var ele = ev.srcElement;
    		        var delFile = ele.getAttribute('delFile');
    		        for(var i=0 ;i<sel_files.length; i++){
    		          if(delFile== sel_files[i].name){
    		            sel_files.splice(i, 1);      
    		          }
    		        }
    		        
    		        dt = new DataTransfer();
    		        for(f in sel_files) {
    		          var file = sel_files[f];
    		          dt.items.add(file);
    		        }
    		        btnAtt.files = dt.files;
    		        var p = ele.parentNode;
    		        attZone.removeChild(p)
    		      }
    		      div.appendChild(img)
    		      div.appendChild(btn)
    		      return div
    		    }
    		  }
    		)('att_zone', 'btnAtt')
});
</script>
</head>
<body>
	<h1 id="title_name" align="center">유행어 퀴즈 수정</h1>
	<hr>
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
		첨부 이미지
		<br>
		<div id='image_preview'>
			<h3>이미지 미리보기</h3>
			<input type='file' id='btnAtt' multiple='multiple' name="uploadFile" accept="image/*"/>
			<div id='att_zone' 
			      data-placeholder='이미지 파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
		</div>
	    <input type="submit" value="수정">
	    <input type="button" value="취소">
	    <input type="hidden" name="quizNo" value="${quiz.quizNo }">
    </form>
    
    <input type="hidden" id="typeM" value="${quiz.quizType }">
    <input type="hidden" id="typeM3" value="${quiz.quizCh3 }">
    <input type="hidden" id="typeM4" value="${quiz.quizCh4 }">
</body>
</html>