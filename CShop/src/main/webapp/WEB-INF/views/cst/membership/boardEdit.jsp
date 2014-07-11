<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page session="true"%>
<h1>게시글 수정 페이지으로 이동하셨습니다!!!</h1>


<script type="text/javascript">
	function updateGo() {

		document.getElementById("GoSelect").action = "boardUpdateForm.do";
		document.getElementById("GoSelect").submit();
	}

	function deleteGo() {
		document.getElementById("GoSelect").action = "boardDelete.do";
		document.getElementById("GoSelect").submit();
	}
</script>


${qna}


<%-- <form action="board.do" method="post">
 --%>
	<div>

		<h1 align="center">boardContext</h1>
		<font size="2">
			<table width="90%" align="center" cellpadding="0" cellspacing="0" bgcolor="white" border="0">

				<tr>
					<td width="5"></td>
					<td colspan="3" style="background: repeat-x; text-align: center;"></td>
					<td width="5"></td>
				</tr>
				<tr>
					<td rowspan="3" style="background: repeat-y; text-align: center;"></td>
					<td align="center" width="0">제&nbsp;&nbsp;&nbsp;목</td>
					<td colspan="2">${qna.boardTitle}</td>
					<td rowspan="3" style="background: repeat-y; text-align: center;"></td>
				</tr>
				<tr>
					<td align="center">${qna.cstId}</td>					
				</tr>
				<tr>
					<td align="center">글내용</td>
					<td colspan="2">${qna.postContents}</td>
				</tr>
				<tr>
					<td></td>
					<td align="right" colspan="3"
						style="background: repeat-x; text-align: center;">
	
	
								<form id="GoSelect" method="post">
									<input type="hidden" name="boardCode" value="${qna.boardCode}" class="redBtn"> 
									<input type="button" id="update" onclick="updateGo()" value="수정" class="redBtn" />
									<input type="button" id="delete" onclick="deleteGo()" value="삭제" class="redBtn" />										
									<input type="button" value="목록" onclick="document.location='board.do'" class="redBtn" />	
										
								</form>
						</td>
					
				</tr>

			</table>
			
		</font>
		
	</div>
	
	
	<!-- 여기서부터는 리플입니다. -->
	
	
	
	<form action="commentProc.do" method="post">


<input type="hidden" name="cstCode" value="${qna.cstCode}">
	<%
		int i = 0;
	%>
	<table class="table table-bordered">
		<tr>
			<td colspan="7">평점 및 댓글</td>
		</tr>
		<tr>
			<td width="66px">번호</td>
				
			
			<c:choose>
				<c:when test="${sessionScope.cstLogin.cstId == null }">
				</c:when>
				<c:otherwise>
			<td>
			<input type="text" id="evaluationContents" name="evaluationContents" maxlength="300" style="width: 500px"
				placeholder="의견을 140자 이내로 적어주세요"></td>
				</c:otherwise>
				</c:choose>
			<td>${sessionScope.cstLogin.cstId}</td>
			
			<td align="center">
			
					<input type="submit" id="ok" value="등록"${sessionScope.cstLogin.cstId == null?" disabled":"" }></td>
			
			<c:choose>
				<c:when test="${sessionScope.cstLogin.cstId == null }">
					<!-- <td width="100px" align="center">
					<a href="loginProc.do" class="classname">로긴</a></td> -->
				</c:when>
				<c:otherwise>
					<td width="40px">삭제
				</td>
				</c:otherwise>
			</c:choose>
			
		</tr>

		
		
			<tr height="35px">
				<td align="center">${qna.replyCount}</td>
				<td>${qna.qnaReply }</td>		
				<td>${qna.cstId}</td>
				
				<td align="center">
				<fmt:formatDate value="${board.boardDate }" pattern="yyyy-MM-dd" />
				</td>
			
			 <c:choose>
				<c:when test="${sessionScope.cstLogin.cstCode == board.cstCode }">
				<td align="center"><a href="evaluationDelete.do?evaluationIndex=${board.evaluationIndex}&itemId=${anItem.itemId}">X</a>
				</td>
				</c:when>
				<c:otherwise>
				<td></td>
				</c:otherwise>
			</c:choose>
			</tr>


	</table>

</form>
	
	
	