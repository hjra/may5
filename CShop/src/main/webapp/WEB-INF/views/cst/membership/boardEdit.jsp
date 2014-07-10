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
					<td colspan="2">${board.boardTitle}</td>
					<td rowspan="3" style="background: repeat-y; text-align: center;"></td>
				</tr>
				<tr>
					<td align="center">${board.cstId}</td>					
				</tr>
				<tr>
					<td align="center">글내용</td>
					<td colspan="2">${board.postContents}</td>
				</tr>
				<tr>
					<td></td>
					<td align="right" colspan="3"
						style="background: repeat-x; text-align: center;">
	
	
								<form id="GoSelect" method="post">
									<input type="hidden" name="boardCode" value="${board.boardCode}" class="redBtn"> 
									<input type="button" id="update" onclick="updateGo()" value="수정" class="redBtn" />
									<input type="button" id="delete" onclick="deleteGo()" value="삭제" class="redBtn" />										
									<%-- <input type="button" id="delete" onclick="document.location='boardDelete.do?boardCode=${board.boardCode}'" value="삭제" class="redBtn" />										
									 --%>
									<input type="button" value="목록" onclick="document.location='board.do'" class="redBtn" />		
								</form>
						</td>
					<td></td>
				</tr>

			</table>
		</font>
	</div>