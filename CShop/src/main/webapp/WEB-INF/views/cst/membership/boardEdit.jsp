<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<h1>게시글 수정 페이지으로 이동하셨습니다!!!</h1>
현재 접속한 cstCode: ${sessionScope.cstLogin.cstCode}<p>

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
					<td rowspan="3" style="background: repeat-y; text-align: center;"></td>
				</tr>
				<tr>
					<td align="center">${qnaContent.boardTitle}</td>					
				</tr>
				<tr>
					<td align="center">글내용</td></tr>
					<tr><td align="center" colspan="2">${qnaContent.postContents}</td>
				</tr>
				<tr>
					<td></td>
					<td align="right" colspan="3"
						style="background: repeat-x; text-align: center;">
	
	
								<form id="GoSelect" method="post">
									<input type="hidden" name="boardCode" value="${qnaContent.boardCode}" class="redBtn"> 
									<input type="button" id="update" onclick="updateGo()" value="수정" class="redBtn" />
									<input type="button" id="delete" onclick="deleteGo()" value="삭제" class="redBtn" />										
									<input type="button" value="목록" onclick="document.location='board.do'" class="redBtn" />	
																	
								</form>
					</td>
				</tr>
			</table>
		</font>
		

	
	<!-- 여기서부터는 리플입니다. -->
	
	
<form action="replyProc.do" method="post">


<%-- <input type="hidden" name="cstCode" value="${reply}"> --%>
	<%
		int i = 0;
	%>
	<table class="table table-bordered">
		<tr>
			<td colspan="7">평점 및 댓글</td>
		</tr>
		<tr>
			<td width="66px">번호</td>
				
			
			
			<td>
			<input type="text" id="qnaReply" name="qnaReply" maxlength="300" style="width: 500px"
				placeholder="의견을 140자 이내로 적어주세요"></td>
			
			<td><%-- ${reply.cstId} --%></td>
			
			<td align="center">
			<input type="hidden" name="boardCode" value="${boardCode}">
			<input type="hidden" name="cstCode" value="${sessionScope.cstLogin.cstCode}">
			<input type="submit" id="ok" value="등록" ></td>
			
		</tr>
	
		<c:forEach var="boardReplys" items="${boardReply}" varStatus="status">
			
			<tr height="35px">
				<td align="center">${status.count}</td>
				<td>${boardReplys.qnaReply}</td>		
				<td>${boardReplys.cstId}</td>
					
				<td align="center">
				<fmt:formatDate value="${boardReplys.replyDate }" pattern="yyyy-MM-dd" />
				</td>
			
			 <c:choose>
				<c:when test="${sessionScope.cstLogin.cstCode == reply.cstCode}">
				<td align="center">
				
				</td>
				</c:when>
				<c:otherwise>
				<td><a href="evaluationDelete.do?evaluationIndex=${reply.boardCode}&itemId=${reply.boardCode}">X</a></td>
				</c:otherwise>
			</c:choose>
			</tr>
			

		</c:forEach>
	</table>
			


</form>
	
	
	