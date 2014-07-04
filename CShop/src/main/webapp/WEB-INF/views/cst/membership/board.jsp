<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<h1>게시판.jsp로 이동완료</h1>

<h2> 테스트 :: qnaList:: ${qnaList }</h2>



<%-- <P><a href="boardCheck.do">(게시판 글 제목3)</a>

<p><f:form action="boardWriteForm.do" >
	<input type="submit" value="글쓰기">
	</f:form>

	<div align="center">
		<h1 align="center">boardList</h1>
		<table align="center" cellpadding="0" cellspacing="0" border="0"
			width="100%">
			<tr
				style="background: repeat-x; text-align: center;">
				<td width="5">
				<td width="80">글&nbsp;번&nbsp;호</td>
				<td>제&nbsp;목</td>
				<td width="80">&nbsp;등&nbsp;&nbsp;록&nbsp;&nbsp;일&nbsp;&nbsp;자</td>
				<td width="80">&nbsp;&nbsp;&nbsp;&nbsp;작&nbsp;성&nbsp;자</td>
				
				<td width="7">
			</tr>
			<c:forEach items="${boards}" var="board" >
				<tr align="center" bgcolor="white">
					<td></td>
					<td width="80" height="25"><font size="2">${board.boardNumber}</font></td>
					<!-- 글번호 -->
					<td><a class="no-uline"
						href="boardContext.do?boardNumber=${board.boardNumber}"><font
							size="2">${board.title}</font></a></td>
					<!-- 제목 -->
					<td width="80"><font size="2">${board.userId }</font></td>
					<!-- 작성자 -->
					<td width="85"><font size="2">${board.qaDate }</font></td>
					<!-- 작성일 -->
									
					<td></td>
				</tr>
			</c:forEach>
			<tr height="1" bgcolor="#D2D2D2">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="hidden" name="userId" value="${users.userid }"><input type="button"
				onclick="document.location='boardWriteForm.do'" value="글쓰기"
				class="redBtn"></td>
				<td></td>
				<td align="left">
				<td></td>
					
			</tr>

		</table>
		<br>
	</div> --%>
