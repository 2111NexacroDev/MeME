<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<h1 align="center">${board.boardNo }번 게시글 상세보기</h1>
	<br><br>
	<table align="center" width="500" border="1">
		<tr>
			<td>제목</td>
			<td>${board.boardTitle }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${board.boardWriter }</td>
		</tr>
		<tr>
			<td>작성날짜</td>
			<td>${board.bCreateDate }</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${board.boardCount }</td>
		</tr>
		<tr height="300">
			<td>내용</td>
			<td>${board.boardContents }</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<a href="#">수정 페이지로 이동</a>
				<a href="#">삭제하기</a>
			</td>
		</tr>
	</table>
	
	
	<!-- 댓글 등록  -->
	<table align="center" width="500" border="1">
		<tr>
			<td>
				<textarea rows="3" cols="55" id="rContents"></textarea>
			</td>
			<td>
				<button id="rSubmit">등록하기</button>
			</td>
		</tr>
	</table>
	
	<!-- 댓글 목록 -->
	<table align="center" width="500" border="1" id="rtb">
		<thead>
			<tr>
			<!-- 댓글 갯수 -->
				<td colspan="4"><b id="rCount"></b></td>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
	
	
	
	<script>
		getReplyList();
		//호출
		
		$("#rSubmit").on("click", function(){
			var refBoardNo = "${board.boardNo }";
			//여기에 무슨 값을 넣어줘야 할까?
			//복붙 해주기
			var rContents = $("#rContents").val();
			$.ajax({
				url: "/board/replyAdd.kh",
				type: "post",
				data: { "refBoardNo" : refBoardNo,
					"replyContents" : rContents},
				success: function(data){
					if(data == "success"){
						//댓글 불러오기
						getReplyList();
						//작성 후 내용 초기화
						$("#rContents").val("");
					} else {
						alert("댓글 등록 실패")
					}
					
// 					console.log("ajax 성공!");
				},
				error: function(){
					console.log("ajax 실패");
				}
			});
		});
		
		function getReplyList(){
			var boardNo = "${board.boardNo }";
			$.ajax({
				url: "/board/replyList.kh",
				type: "get",
				data : {"boardNo" : boardNo },
				success : function(data) {
// 					console.log(data);
					var $tableBody = $("#rtb tbody");
					$tableBody.html("");
					var $rWriter;
					var $rContent;
					var $rCreateDate;
					var $tr;
					/* jquery 아님 그냥 변수 선안 */
					
					$("#rCount").text("댓글 ("+ data.length +")"); //댓글 개수 표시
					//document.querySelector("#rCount").value = "댓글 (" + data.length + ")";
					if(data.length > 0){
						for(var i in data){
							//배열의 인덱스를 가져오는 구문
							$tr = $("<tr>");
							//기능이없는 $, tr태그 만들어줌
							$rWriter = $("<td width='100'>").text(data[i].replyWriter);
							$rContent = $("<td>").text(data[i].replyContents);
							//데이터를 포함하고 있는 td
							$rCreateDate = $("<td width='100'>").text(data[i].rCreateDate);
							
							$btnArea = $("<td width='80'>")
										.append("<a href='javascript:void(0);' onclick='modifyViewReply(this, \""+data[i].replyContents+"\", "+data[i].replyNo+");'>수정 </a>")
										.append("<a href='javascript:void(0);' onclick='removeReply("+data[i].replyNo+");'>삭제 </a>");
							$tr.append($rWriter);
							$tr.append($rContent);
							$tr.append($rCreateDate);
							$tr.append($btnArea);
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
		
		function removeReply(replyNo) {
// 			alert("test");
			$.ajax({
				url : "/board/replyDelete.kh",
				type : "get",
				data : {"replyNo" : replyNo},
				success : function(data){
					if(data == "success"){
						getReplyList(); //갱신
						console.log("댓글 삭제 완료");
					} else {
						alert("댓글 삭제 실패!");
					}
					
				},
				error : function(){
					alert("ajax 통신 오류! 관리자에게 문의해주세요.");
				}
			});
		}
		
		function modifyViewReply(obj, replyContents, replyNo){
			var $trModify = $("<tr>");
			$trModify.append("<td colspan='3'><input type='text' size='50' value='"+replyContents+"' id='modifyReplyVal'></td>");
			$trModify.append("<td><button onclick='modifyReply("+replyNo+", \""+replyContents+"\")'>수정완료</button>");
			console.log(obj);
			$(obj).parent().parent().after($trModify);
		}
		
		function modifyReply(replyNo){
			var replyContents = $("#modifyReplyVal").val();
// 			alert("test");
			$.ajax({
				url : "/board/replyModify.kh",
				type : "post",
				data : { "replyNo" : replyNo, "replyContents" : replyContents },
				success : function(data) {
					if(data == "success") {
						getReplyList();
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