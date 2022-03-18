<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 게시글 작성 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style>
#boardWriteTable { 
	width: 700px; 
	height: 200px; 
	--background-color: #ccc ; 
 	border: 1px solid #f9f9f9; 
	text-align: center;
 	margin: auto; 
 	color: black;
}

.jb-th-1 {
	height: 400px;
	text-align: center;
}

.textInput2{
	padding-top: 80px;
	height: 500px;
	width: 99%;
}


#boardWriteTextarea_1 {

	height:100%;
	width:99%;
}

/* [라디오 버튼 커스텀 스타일 변경 실시] */
input[type='radio'] {
	-webkit-appearance:none;
	width:15px;
	height:15px;
	/* [라디오 버튼 테두리 색상 정의] */
	border:1px solid darkgray;
	border-radius:50%;
	outline:none;
	/* [라디오 버튼 배경 색상 정의] */
	background:#ffffff;
}
input[type='radio']:before {
	/* [content null 설정해서 커스텀 지정] */
	content:'';
	display:block;
	width:70%;
	height:70%;
	margin: 2px auto;
	border-radius:50%;  
}
input[type='radio']:checked:before {
	/* [라디오 버튼이 클릭 되었을 경우 내부 원형 색상] */
	background: #f26522;
}
</style>

</head>

<body>

	<br>
	<form action="/board/register" method="post" enctype="multipart/form-data">
		<table id="boardWriteTable" align="center" border="1">
			<tr>
				<td height="30px" align="left">
					&nbsp&nbsp추진<input type="radio" name="boardType" value="P">
					&nbsp&nbsp자유<input type="radio" name="boardType" value="F" checked>
				</td>
			<tr>
				<td height="30px" align="left">&nbsp<input type="file" name="uploadFile"></td>
			</tr>
			</tr>
			<tr style="text-align: center;">
				<td height="50px">
					<input type="text" name="boardTitle" value="" placeholder="글 제목"
						style="width: 99%">
				</td>
			</tr>
			<tr>
        		<td class="jb-th-1">
        			<textarea id="boardWriteTextarea_1" name="boardContents" style="resize: none;"></textarea>
        		</td>
      		</tr>
      		<tr>
				<td colspan="2" align="right" height="50px" >
					<input type="reset" value="취소" onclick="location.href='/board';">
					<input type="submit" value="등록하기">
				</td>
			</tr>
		</table>
	
	</form>
	<br><br><br>
</body>
</html>