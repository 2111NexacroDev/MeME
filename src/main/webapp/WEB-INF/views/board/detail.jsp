<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 게시글 상세 페이지 -->
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>게시글</title>
<!-- <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> -->

<style>
     #boardButtonTable {
     	--border: 1px solid black;
     	height:40px;
        width: 700px;
		text-align: right;
		margin: auto; 
     }
     	/* 목록 버튼 */
     	#listButton {
     		border : 1px solid #f26522;
     		background-color: #fef3ee;
     		color: #f26522;
			border-radius : 5px;
			padding : 5px 10px;
			font-size:13px;
			font-weight: bold;
     	}

     /* 게시글 정보 영역 */
     #boardDetailTable {
     	height:70px;
        width: 700px;
		background-color: white; 
		color : black;
		--text-align: center;
		margin: auto; 
		border: 1px solid #ccc;
		border-bottom: 0pt;
		border-collapse: separate;
		border-radius: 5px 5px 0 0;
     }
     	/* 게시글 title*/
     	#boardDetailTable td p {
	   		--color: red;
	   	 	margin : 3px 0 10px 20px;
	   	}
	   	/* 닉네임, 작성 날짜, 조회수 */
    	#boardDetailTable td div {
    	 	--color: red;
    	 	margin : 3px 0 3px 22px;
    	}
    	 
    	/* 신고 버튼 */
		#reportButton {
			margin-bottom: 12px;
			margin-right: 20px;
			padding: 3px;
			text-align:center;
			font-size: 13px;
			background-color: #ffffff;
			border:none;
		}
		
		/* 게시글 숨기기/보이기 */
		#boardReportAdmin {
			margin-bottom: 12px;
			margin-right:-13px;
			padding: 3px;
			--text-align:center;
			font-size: 13px;
			background-color: #ffffff;
			border:none;
		}
		
		/* 수정 버튼 */
		#updateButton {
			margin-bottom: 12px;
			margin-right:-13px;
			padding: 3px;
			--text-align:center;
			font-size: 13px;
			background-color: #ffffff;
			border:none;
		}
		
		/* 삭제 버튼 */
		#deleteButton {
			margin-bottom: 12px;
			margin-right: 20px;
			padding: 3px;
			--text-align:center;
			font-size: 13px;
			background-color: #ffffff;
			border:none;
		}
		
		/* 배경 깔리는 버전 */
/* 		#boardDetailTable button:hover {
			background-color: #fef3ee;
			border-radius : 5px;
			border:none;
		} */
		
		#boardDetailTable button:hover {
			color: #f26522;
			border:none;
		}
		
		
	/* 내용 영역 */
	#boardDetailTable2 {
		width: 700px;
		background-color: white; 
	 	border: 1px solid #ccc; 
		--text-align: center;
	 	margin: auto; 
	 	border-top: 0pt;
	 	border-bottom: 0pt;
	}
	    .jb-th-1 {
	        height: 300px;
	        width: 100%;
	        background-color: white;
	        padding: 20px;
	        padding-top: 30px;
	    }
	
	/* 댓글 수, 추천 수, 신고 버튼 */
	#boardDetailTable3 {
		width: 700px;
		background-color: white; 
	 	border: 1px solid #ccc; 
		text-align: center;
	 	margin: auto; 
	 	border-top: 0pt;
	 	border-bottom: 0pt;
	}
		/*추천, 댓글 수 td 영역*/
		#recommendArea	{
			align:left;
			text-align: left;
			width:90px;
			padding : 10px 0;
		}
		
			#recommendArea div {
				margin-left: 20px;
			}
		
		
		#commentArea {
			align:left;
			text-align: left;
			--width:90%;
			
		}
		#commentCount {
			font-size:13px;
		}
		
		/* 추천 버튼 */
		#recommandButton {
     		border : 1px solid white;
     		background-color: white;
			border-radius : 5px;
			--padding : 3px;
     	}
	
	/* 댓글 목록 영역 */
	#boardCommentTable {
		width: 700px;
	 	border: 1px solid #ccc; 
	 	border-top: 0pt;
	 	border-bottom: 0pt;
		text-align: center;
	 	margin: auto;
	 	background-color: white;
	}
	
		#boardCommentTable td {
			font-size: 14px;
		}
		
		#commentNicknametd {
			padding-left: 20px;
		}
		
		#commentUpdateButton {
			font-size: 13px;
		}
		
		#commentDeleteButton {
			font-size: 13px;
			margin-right: 20px;
		}
		
		#commentEditTd {
			padding-right: 25px;
		}
		
		#commentEditButton {
			background-color: #ffffff;
			margin-right: 20px;
			font-size: 13px;
		}
	
	/* 댓글 등록창 */
	#boardCommentTable2 {
		width: 700px; 
	 	border: 1px solid #ccc; 
	 	border-top:0pt;
		text-align: center;
	 	margin: auto;
	 	background-color: white;
	 	border-collapse: separate;
		border-radius: 0 0 5px 5px;
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

	<table id="boardButtonTable">
		<tr>
			<td align="left"> 
				<button type="button" id="listButton" onclick="location.href='/board';">
					목록
				</button>
			</td>
		</tr>
	</table>
	
    
    <table id="boardDetailTable">
        <tr style="text-align:left;">
            <th colspan="1">
            	<c:if test="${oneBoard.boardType eq 'P'}">
					<p style="color: #f26522; margin: 20px 0 10px 20px;">추진 > </p>
				</c:if>
				<c:if test="${oneBoard.boardType eq 'F'}">
					<p style="color: #f26522; margin: 20px 0 10px 20px;">자유 > </p>	
				</c:if> 
			</th>
			
		</tr>
		<tr>
			<td colspan="3" width="90%">
				<p style="text-align:left; font-weight:bold; font-size:25px;">${oneBoard.boardTitle }</p>
			</td>
		</tr>

		<tr>
			<td>
				<div style="font-weight: 600;">${oneBoard.memberNickname }</div>
			</td>
			
			<%-- <td rowspan="2" align="right" >
				<div style="font-size:13px; margin-right: 20px;"> 조회수: ${oneBoard.boardCount } </div>
			</td> --%>
		</tr>
		<tr>
			<td width="15%">
				<div style="font-size:12px; margin-left: 23px; margin-bottom:20px;">${oneBoard.boardDate }</div>
			</td>
			
			<td align="left" >
				<div style="font-size:12px; margin-left: 0px; margin-bottom:18px;"> 조회수: ${oneBoard.boardCount } </div>
			</td>
			
			
			
			<!-- 비회원 X, 회원 자신의 글 : 수정 삭제 / 다른 회원 글 : 신고, 관리자 : 숨기기/보이기 삭제 -->
			
			<!-- 로그인한 회원 중 자신의 글이 아닌 게시글에 신고 버튼 표시 -->
			<c:if test="${sessionScope.loginMember.memberId ne 'admin' && sessionScope.loginMember ne null && sessionScope.loginMember.memberId ne oneBoard.memberId}">
				<td align="right">
					<form action='<c:url value="/board/detail_report">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						<button type="submit" id="reportButton" onclick="reportFunc();">신고</button>
	<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>
					</form>
				</td>
			</c:if>
			
   			<c:if test="${sessionScope.loginMember.memberId eq 'admin'}">
				<td align="right">
					<c:if test="${oneBoard.boardStatus eq 'Y' }">
						<form action='<c:url value="/board/detail_reportAdminToN">
							<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
							</c:url>' method="post">
							
							<!-- <input type="submit" id="boardReportAdmin" value="게시글 숨기기" onclick="reportAdminFuncToN();"> -->
							<button type="submit" id="boardReportAdmin" onclick="reportAdminFuncToN();">숨기기</button>
	<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>
	
						</form>
					</c:if>
					<c:if test="${oneBoard.boardStatus eq 'N' }">
						<form action='<c:url value="/board/detail_reportAdminToY">
							<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
							</c:url>' method="post">
				
							<!-- <input type="submit" id="boardReportAdmin" value="게시글 보이기" onclick="reportAdminFuncToY();"> -->
							<button type="submit" id="boardReportAdmin" onclick="reportAdminFuncToY();">보이기</button>
	<%-- 					<br><p id="boardReport">${oneBoard.boardReport }</p> --%>
		
						</form>
					</c:if>
				</td>
   			</c:if>
			
			
			
			<c:if test="${sessionScope.loginMember.memberId eq oneBoard.memberId}">
				<td align="right">
					<form action='<c:url value="/board/detail_updateView">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						<button type="submit" id="updateButton">수정</button>
					</form>
				</td>
   			</c:if>
   			
			<c:if test="${sessionScope.loginMember.memberId eq oneBoard.memberId || sessionScope.loginMember.memberId eq 'admin'}">
				<td align="right">
					<form action='<c:url value="/board/detail_delete">
						<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
						</c:url>' method="post">
						<button type="submit" id="deleteButton">삭제</button>
					</form>
				</td>
   			</c:if>
			
		</tr>
		<tr>
			<td colspan="4">
				<hr style="width:670px;">
			</td>
		</tr>
	</table>
	
	
	
	<table id="boardDetailTable2" >
	    <tr>
	        <td class="jb-th-1" align="left" valign="top">
	            <div>${oneBoard.boardContents }</div>
	            <div><img src="/resources/boardUploadFiles/${boardFile.boardFilerename}"></div>
	    	</td>
		</tr>
	
		
	</table>
	<table id="boardDetailTable3" >
		<tr>
			<td id="recommendArea">
				<div>
					<form action='<c:url value="/board/detail_like">
							<c:param name="boardNo" value="${oneBoard.boardNo }"></c:param>
							</c:url>' method="post">
		           		
						<c:if test="${empty member || member.memberId eq 'admin' }">
		           			<button type="button" id="recommandButton" onclick="notLoginFunc();">
								<!--  <i class="fa fa-heart-o" aria-hidden="true"></i> 추천 --> 
								<i class="fa fa-heart" aria-hidden="true" style="color:red;"></i> 
							</button>
		           		</c:if>
		           		<c:if test="${not empty member && member.memberId ne 'admin'}">
							<button type="submit" id="recommandButton" >
								<!--  <i class="fa fa-heart-o" aria-hidden="true"></i> 추천 --> 
								<i class="fa fa-heart" aria-hidden="true" style="color:red; "></i> 
							</button>
							
		                </c:if>
		
						<span style="font-size:13px;">추천 ${oneBoard.boardLike }</span>
					</form>
				</div>
				
			</td>
			
			<!-- 댓글 갯수 -->
			<td id="commentArea">
				<i class="fa fa-comment" aria-hidden="true" style="padding:5px; margin-left: 10px;"></i><span id="commentCount">댓글갯수(3)</span>
			</td>
			
		</tr>
		
		<tr>
			<td colspan="4">
				<hr style="width:670px;">
			</td>
		</tr>
	</table>



	
	<!-- 댓글 목록 -->
	<table id="boardCommentTable">
<!-- 	    <thead>
	    	<tr align="left" height="40px">
			댓글 갯수
				<td colspan="4">
					<i class="fa fa-comment" aria-hidden="true" style="padding:10px;"></i><b id="commentCount">댓글갯수(3)</b>
				</td>
			</tr>
	    </thead> -->
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
	
	<!-- 댓글 등록 -->
	
	<table id="boardCommentTable2" width="95%">
		<tr>
			<td>
				<textarea rows="3" cols="55" id="commentContents" placeholder="댓글을 남겨보세요" 
					style="font-size:13px; width: 100%; height: 50px; padding: 15px; padding-left: 20px; border: none; resize: none;"></textarea>
			</td>
			
		</tr>
		<tr>
			<td align="right">
				<button type="button" id="cSubmit" style="font-size:13px; background-color: white; width: 40px; height: 20px; margin:15px 10px;">등록</button>
			</td>
		</tr>
	</table>
	

	<br>
	<br>
	<br>
	<br>
	
	<script>
	getCommentList();
	
	function notLoginFunc(){
		<c:if test="${empty sessionScope.loginMember }">
			alert("로그인이 필요합니다.");
   		</c:if>
   		<c:if test="${not empty loginMember }">
   			location.href="/board/write";
        </c:if>
	}
	
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
		var memberId = "${member.memberId}";
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
					"memberId" : memberId,
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
		var memberId = "${member.memberId}";
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
				$("#commentCount").text("댓글 "+ data.length); //댓글 개수 표시
				
				if(data.length > 0){
					for(var i in data){
						//배열의 인덱스를 가져오는 구문
						$tr = $("<tr height='30'>");
						//기능이없는 $, tr태그 만들어줌
						$commentWriter = $("<td id='commentNicknametd' width='100'>").text(data[i].memberNickname);
						$commentContent = $("<td align='left'>").text(data[i].commentContents);
						//데이터를 포함하고 있는 td
						
						$commentDate = $("<td width='120'>").text(data[i].commentDate);
// 						$commentDate = $("<td width='200'>").text(data[i].commentDate)
// 										.append("&nbsp&nbsp <a href='javascript:void(0);' onclick='modifyViewComment(this);'> 수정 </a>")
// 										.append("<a href='javascript:void(0);' onclick='removeComment("+data[i].commentNo+");'>삭제 </a>");			
						if(data[i].memberId == memberId) {
							//$commentDate = $("<td width='120'>").text(data[i].commentDate);
							$btnArea = $("<td width='80'>")
										.append("<a id='commentUpdateButton' href='javascript:void(0);' onclick='modifyViewComment(this, \""+data[i].commentContents+"\", "+data[i].commentNo+" );'> 수정 </a>")
										.append("<a id='commentDeleteButton' href='javascript:void(0);' onclick='removeComment("+data[i].commentNo+");'>삭제 </a>");	
						} else {
							//$commentDate = $("<td colspan='3'>").text(data[i].commentDate);
						}
						
						/* 댓글 구분선 추가 */
						$line = $("<tr> <td colspan='4'> <hr style='width:670px;'>");
						
						$tr.append($commentWriter);
						$tr.append($commentContent);
						$tr.append($commentDate);
						
						if(data[i].memberId == memberId){
							$tr.append($btnArea);
						}
						
						
						$tableBody.append($tr);
						$tableBody.append($line);
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
		$trModify.append("<td colspan='3' align='right' id='commentEditTd'><input type='text' size='65px' value='"+commentContents+"' id='modifyCommentVal'></td>");
		$trModify.append("<td colspan='2'><button id='commentEditButton' onclick='modifyComment("+commentNo+", \""+commentContents+"\")'>수정완료</button>");
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