<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> -->

<style>
     #boardDetailTable {
     	height:70px;
        width: 700px;
		background-color: #EB755E  ; 
		color : black;
		border: 1px solid black; 
		text-align: center;
		margin: auto; 
     }

	     #boardDetailTable tr {
	        border: 1px solid black; 
	     }
	
	#boardDetailTable2 {
		width: 700px;
		background-color: white; 
	 	border: 1px solid black; 
		text-align: center;
	 	margin: auto; 
	 	border-bottom: 0pt;
	}
	    .jb-th-1 {
	        height: 300px;
	        width: 100%;
	        background-color: white;
	    }
	         
	#boardCommentTable {
		width: 700px;
	 	border: 1px solid black; 
		text-align: center;
	 	margin: auto;
	 	background-color: white;
	}
	
	#boardCommentTable2 {
		width: 700px; 
	 	border: 1px solid black; 
		text-align: center;
	 	margin: auto;
	 	background-color: white;
	}


	    .textInput2 {
	        padding-top: 80px;
	    }
        
        p {
        	color: black;
        }
        
</style>

</head>

<body>
    <table id="boardDetailTable">
        <tr>
            <th width="10%">
            	<c:if test="${oneBoard.boardType eq 'P'}">
					추진
				</c:if>
				<c:if test="${oneBoard.boardType eq 'F'}">
					자유	
				</c:if>
			</th>
			
			<th colspan="2" width="90%">
				${oneBoard.boardTitle }
			</th>
			
		</tr>

		<tr>
			<td width="33%">글쓴이(닉네임) : ${oneBoard.memberNickname }</td>
			<td width="34%">작성날짜 : ${oneBoard.boardDate }</td>
			<td width="33%">조회수: ${oneBoard.boardCount }</td>
		</tr>
	</table>
	<table id="boardDetailTable2" >
	    <tr>
	        <td class="jb-th-1" align="left" valign="top">
	            <p>${oneBoard.boardContents }</p>
	            <p><img src="/resources/boardUploadFiles/${boardFile.boardFilerename}"></p>
	    	</td>
		</tr>
	
		<tr height="100px">
			<td>
				<form action='<c:url value="/board/detail_like">
					<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
					</c:url>' method="post">
					<c:if test="${empty sessionScope.loginMember }">
	           			추천
	           		</c:if>
	           		<c:if test="${not empty loginMember }">
	           			<input type="submit" id="boardRecommand" value="추천">
	                </c:if>

					<br>${oneBoard.boardLike }
				</form>
				
			</td>
			
		</tr>
		<tr>
			<c:if test="${sessionScope.loginMember.memberId ne 'admin' || sessionScope.loginMember eq null}">
				<td align="left">
					<form action='<c:url value="/board/detail_report">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						<input style="background-color:#DB4000; color:white" type="submit" id="boardReport" value="신고" onclick="reportFunc();">
	<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>
					</form>
				</td>
			</c:if>
   			<c:if test="${sessionScope.loginMember.memberId eq 'admin'}">
				<td align="left">
				<c:if test="${oneBoard.boardStatus eq 'Y' }">
					<form action='<c:url value="/board/detail_reportAdminToN">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						
						<input style="background-color:#DB4000; color:white" type="submit" id="boardReportAdmin" value="게시글 숨기기" onclick="reportAdminFuncToN();">
<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>

					</form>
				</c:if>
				<c:if test="${oneBoard.boardStatus eq 'N' }">
					<form action='<c:url value="/board/detail_reportAdminToY">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
			
						<input style="background-color:#DB4000; color:white" type="submit" id="boardReportAdmin" value="게시글 보이기" onclick="reportAdminFuncToY();">
<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>
	
					</form>
				</c:if>
				</td>
   			</c:if>
			
			<c:if test="${sessionScope.loginMember.memberNickname eq oneBoard.memberNickname || sessionScope.loginMember.memberId eq 'admin'}">
				<td align="right">
					<form action='<c:url value="/board/detail_updateView">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
	
						<input type="submit" id="boardUpdate" value="수정">
					</form>
				</td>
				<td align="right">
					<form action='<c:url value="/board/detail_delete">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						<input type="submit" id="boardDelete" value="삭제">
					</form>
				</td>
   			</c:if>
			
		</tr>
	</table>


	<!-- 댓글 등록 -->
	
	<table id="boardCommentTable2" border="1" width="95%">
		<tr>
			<td>
				<textarea rows="3" cols="55" id="commentContents" style="width: 100%; height: 80px;"></textarea>
			</td>
			<td>
				<input type="button" value="등록하기" id="cSubmit" style="width: 100%; height: 80px;" ></input>
			</td>
		</tr>
	</table>
	
	<!-- 댓글 목록 -->
	<table id="boardCommentTable" border="1">
	    <thead>
	    	<tr align="left" height="40px">
			<!-- 댓글 갯수 -->
				<td colspan="4">
					<b id="commentCount">댓글갯수(3)</b>
				</td>
			</tr>
	    </thead>
	    <tbody>
	    
<!-- 	    <tr> -->
<!-- 	        <td>닉네임 : K</td> -->
<!-- 	        <td>무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세 <input type="button" id="Cinput" value="대댓글 입력"></td> -->
<!-- 	        <td>22/01/26<br>00:01:01</td> -->
<!-- 	    </tr> -->
<!-- 		    <tr> -->
<!-- 		        <td>닉네임 : S</td> -->
<!-- 		        <td>남산 위에 저 소나무 철갑을 두른듯  -->
<!-- 		            <input type="button" id="Cmodify" value="수정"> -->
<!-- 		            <input type="button" id="Cdelete" value="삭제">&nbsp; -->
<!-- 		            <input type="button" id="Cinput" value="대댓글 입력"> -->
<!-- 		        </td> -->
<!-- 		    </tr> -->
	    </tbody>
	    
	    
	</table>
	
	
	<script>
	getCommentList();
	
	function reportFunc(){
		alert("신고 완료 되었습니다.");
	}
	function reportAdminFuncToN(){
		alert("숨김 처리 되었습니다.");
	}
	function reportAdminFuncToY(){
		alert("글이 보이도록 처리 되었습니다.");
	}

	$("#cSubmit").on("click", function(){
		var boardNo = "${oneBoard.boardNo }";
		var memberNickname = "${member.memberNickname}";
		var commentContents = $("#commentContents").val();
		
// 		console.log("${sessionScope.loginMember}");
		<c:if test="${empty sessionScope.loginMember }">
			alert("로그인이 필요합니다.");
   		</c:if>
   		<c:if test="${not empty loginMember }">
			$.ajax({
				url: "/board/commentAdd",
				type: "post",
				data: { "boardNo" : boardNo,
					"memberNickname" : memberNickname,
					"commentContents" : commentContents },
				success: function(data){
					console.log("ajax 성공");
					if(data == "success"){
						getCommentList();
						$("#commentContents").val("");
					} else {
						alert("댓글 등록 실패");
					}
				},
				error: function(){
					console.log("ajax 실패");
				}
			});
			
        </c:if>    
		
	});
		
	

	function getCommentList(){
		var boardNo = "${oneBoard.boardNo }";
		var memberNickname = "${member.memberNickname}";
		$.ajax({
			url: "/board/commentList",
			type: "get",
			data : {"boardNo" : boardNo },
			success : function(data) {
				console.log(data);
				var $tableBody = $("#boardCommentTable tbody");
				$tableBody.html("");
				var $commentWriter;
				var $commentContent;
				var $commentDate;
				var $tr;
				
				/* jquery 아님 그냥 변수 선언 */
				$("#commentCount").text("댓글 ("+ data.length +")"); //댓글 개수 표시
				
				if(data.length > 0){
					for(var i in data){
						//배열의 인덱스를 가져오는 구문
						$tr = $("<tr height='30'>");
						//기능이없는 $, tr태그 만들어줌
						$commentWriter = $("<td width='100'>").text(data[i].memberNickname);
						$commentContent = $("<td align='left'>").text(data[i].commentContents);
						//데이터를 포함하고 있는 td
						$commentDate = $("<td width='200'>").text(data[i].commentDate);
// 						$commentDate = $("<td width='200'>").text(data[i].commentDate)
// 										.append("&nbsp&nbsp <a href='javascript:void(0);' onclick='modifyViewComment(this);'> 수정 </a>")
// 										.append("<a href='javascript:void(0);' onclick='removeComment("+data[i].commentNo+");'>삭제 </a>");			
						if(data[i].memberNickname == memberNickname) {
							$btnArea = $("<td width='80'>")
										.append("<a href='javascript:void(0);' onclick='modifyViewComment(this, \""+data[i].commentContents+"\", "+data[i].commentNo+" );'> 수정 </a>")
										.append("<a href='javascript:void(0);' onclick='removeComment("+data[i].commentNo+");'>삭제 </a>");	
						}
						
						$tr.append($commentWriter);
						$tr.append($commentContent);
						$tr.append($commentDate);
						
						if(data[i].memberNickname == memberNickname){
							$tr.append($btnArea);
						}
						
						$tableBody.append($tr);
						//크기만큼 반복
						//여기까지 해야 댓글 가능
					}
				}
			},
			error : function(){
				alert("ajax 통신 실패! 관리자에게 문의하세요.");
			}
		});
		
		
	}
	
	function removeComment(commentNo) {
// 		alert("test");
		$.ajax({
			url : "/board/commentDelete",
			type : "get",
			data : {"commentNo" : commentNo},
			success : function(){
				getCommentList(); //갱신
			},
			error : function(data){
				alert("댓글 삭제 실패");
			}
		});
	}
	
	function modifyViewComment(obj, commentContents, commentNo){
// 		alert("test");
		var $trModify = $("<tr>");
		$trModify.append("<td colspan='2'><input type='text' size='70%' value='"+commentContents+"' id='modifyCommentVal'></td>");
		$trModify.append("<td colspan='2'><button onclick='modifyComment("+commentNo+", \""+commentContents+"\")'>수정완료</button>");
		console.log(obj);
		$(obj).parent().parent().after($trModify);
	}
	
	function modifyComment(commentNo){
// 		alert("test");
		var commentContents = $("#modifyCommentVal").val();
		$.ajax({
			url : "/board/commentModify",
			type : "post",
			data : { "commentNo" : commentNo, "commentContents" : commentContents },
			success : function(data) {
				if(data == "success") {
					getCommentList();
				} else {
					alert("댓글 수정 실패");
				}
			},
			error : function() {
				alert("Ajax 통신 오류! 관리자에게 문의하세요");
			}
		});
	}
	</script>
</body>

</html>