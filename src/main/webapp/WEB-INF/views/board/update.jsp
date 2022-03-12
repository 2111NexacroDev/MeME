<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 게시글 수정 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<style>
#boardWriteTable { 
	width: 700px; 
	height: 200px; 
	background-color: #F5A678 ; 
 	border: 1px solid black; 
	text-align: center;
 	margin: auto; 
 	color: black;
}

#boardWriteTable th {
	background-color: #eeeeee;
}

.jb-th-1 {
	height: 500px;
	text-align: center;
}

.textInput2{
	padding-top: 80px;
	height: 500px;
	width: 99%;
}


#boardWriteTextarea_1 {

	height:100%;
	width:100%;
}
    
    
</style>

</head>

<body>
	<h1 align="center">게시글 수정</h1>
	<br>
	<form action= '<c:url value="/board/detail_update">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
					</c:url>'
					method="post" enctype="multipart/form-data">
		<table id="boardWriteTable" align="center" border="1">
			<tr>
				<td height="30px" align="left">
				
					<c:if test="${oneBoard.boardType eq 'P'}">
    					&nbsp&nbsp추진<input type="radio" name="boardType" value="P" checked>
						&nbsp&nbsp자유<input type="radio" name="boardType" value="F" > 	
					</c:if>
					<c:if test="${oneBoard.boardType eq 'F'}">
    					&nbsp&nbsp추진<input type="radio" name="boardType" value="P">
						&nbsp&nbsp자유<input type="radio" name="boardType" value="F" checked> 	
					</c:if>
					
				</td>
			<tr>
				<td height="30px" align="left">&nbsp<input type="file" name="uploadFile"></td>
			</tr>
			</tr>
			<tr style="text-align: center">
				<td height="30px">
					<input type="text" name="boardTitle" value="${oneBoard.boardTitle }" placeholder="글 제목"
						style="width: 99%">
				</td>
			</tr>
			<tr>
        		<td class="jb-th-1">
        			<textarea id="boardWriteTextarea_1" name="boardContents">${oneBoard.boardContents}</textarea>
        		</td>
      		</tr>
				<td colspan="2" align="right" height="30px">
					<input type="reset" value="취소" onclick="location.href='<c:url value="/board/detail">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
					</c:url>'">
					<input type="submit" value="등록하기">
				</td>
			</tr>
		</table>
	
	</form>
	<br><br><br>
</body>
</html>