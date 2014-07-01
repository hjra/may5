<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<h1>게시판.jsp로 이동완료</h1>
<P><a href="/controller/cst/membership/boardCheck.do">(게시판 글 제목3)</a>

<p><f:form action="boardWriteForm.do" >
	<input type="submit" value="글쓰기">
	</f:form>

	<div>
		<h1 align="center">boardList</h1>
		<table align="center" border="1" width="90%">

			<tr align="center">
				<td width="80">글번호</td>
				<td>제&nbsp;목</a></td>
				<td width="80">작성자</td>
				<td width="80">시&nbsp;&nbsp;간</td>
				<td width="80">조회수</td>
			</tr>
			<c:forEach items="${boards}" var="board">
				<tr align="center">
					<td width="80">${board.boardCode}</td>
					<!-- 글번호 -->
					<td><a href="boardContext.do?boardNumber=${board.boardCode}">${board.boardTitle}</a></td>
					<!-- 제목 -->
					<td width="80">${board.cstId }</td>
					<!-- 작성자 -->
					<td width="85">${board.boardDate }</td>
					<!-- 작성일 -->
					<td width="80">${board.boardDate}</td>
					<!--나중에 잠금 아이콘으로 바꾸시오!!!!!-->
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td colspan="2" align="right"><form action="myBoardList.do">
						<input type="hidden" name="userId" value="${users.userid }">
						
						<input type="submit" value="내글 목록">
					</form> <input type="button"
					onclick="document.location='boardWriteForm.do'" value="글쓰기"></td>
			</tr>

		</table>
		<br>
	</div>