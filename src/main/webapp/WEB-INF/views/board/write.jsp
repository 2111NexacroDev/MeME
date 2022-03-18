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
 	border: 1px solid #ccc;
 	border-collapse: separate;
	border-radius : 5px;
	text-align: center;
 	margin: auto; 
 	color: black;
 	background-color: #ffffff;
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
	
	#uploadfile {
		--border-radius : 5px;
		padding : 5px 0;
		margin-bottom: 10px;
		font-size:14px;
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

	#boardWriteTitle_1 {
		width: 95%; 
		padding: 5px 10px;  
		margin: 5px;
		border-radius: 0; 
		--border-radius: 5px; 
		border: none;
		font-size:14px;
	}
	
	#boardWriteTextarea_1 {
		height:95%;
		width:95%;
		resize: none;
		padding: 10px;
		margin: 5px;
		border-radius: 0;
		--border-radius: 5px; 
		border: none;
		font-size:14px;
		
	}

	/* 등록 버튼 */
 	#writeSubmitButton {
		border : 1px solid #f26522;
		background-color: #fef3ee;
		color: #f26522;
		border-radius : 5px;
		padding : 5px 10px;
		font-size:13px;
		font-weight: bold;
		margin-right: 5px;
 	}
 	
 	 #writeCancelButton {
		border : 1px solid #888;
		background-color: #ffffff;
		color: #888;
		border-radius : 5px;
		padding : 5px 10px;
		font-size:13px;
		font-weight: bold;
 	}
 	
     	
     	
</style>

</head>

<body>

	<br>
	<form action="/board/register" method="post" enctype="multipart/form-data">
		<table id="boardWriteTable" align="center">
			<tr >
				<td style="padding:15px; padding-bottom:10px;" height="30px" align="left">
					&nbsp&nbsp추진 <input type="radio" name="boardType" value="P">
					&nbsp&nbsp자유 <input type="radio" name="boardType" value="F" checked>
				</td>
			<tr>
				<td style="padding:0 15px;" height="30px" align="left">
					&nbsp<input type="file" id="uploadfile" name="uploadFile">
				</td>
			</tr>
			<tr>
				<td>
					<hr style="width:670px;">
				</td>
			</tr>
			<tr style="text-align: center;">
				<td height="40px">
					<input type="text" id="boardWriteTitle_1" name="boardTitle" value="" placeholder="제목을 입력해주세요">
				</td>
			</tr>
			<tr>
				<td>
					<hr style="width:670px;">
				</td>
			</tr>
			<tr>
        		<td class="jb-th-1">
        			<textarea id="boardWriteTextarea_1" name="boardContents" placeholder="내용을 입력해주세요" ></textarea>
        		</td>
      		</tr>
      		<tr>
				<td>
					<hr style="width:670px;">
				</td>
			</tr>
      		<tr>
				<td colspan="2" align="right" height="50px" style="padding:15px;" >
					<input type="reset" id="writeCancelButton" value="취소" onclick="location.href='/board';">
					<input type="submit" id="writeSubmitButton" value="등록하기">
				</td>
			</tr>
		</table>
	
	</form>
	<br><br><br>
</body>
</html>