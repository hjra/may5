<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<h1>게시판.jsp로 이동완료</h1>

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
			<c:forEach items="${qnaList2}" var="board" >
				<tr align="center" bgcolor="white">
					<td></td>
					<td width="80" height="25"><font size="2">${board.boardCode}</font></td>
					<!-- 글번호 -->
				<%-- 	<c:url value="boardCheck.do" var="boardTitle" scope="request">
							<c:param name="boardCode">${board.boardCode}</c:param>
							<c:param name="postPassword">${board.postPassword}</c:param>
						</c:url>	
					<td id="boardTitleAction"  onmouseover="style.color='gray'"  onclick="location='${boardTitle}'">
						 --%>
						<td id="boardTitleAction"  onmouseover="style.color='gray'"  onclick="location='${board.boardTitle}'" >
					<%--${board.boardTitle}--%>						 
						<f:form action="boardCheck.do" method="post" commandName="qnA">
						<input type="submit" name="boardTitle" value="${board.boardTitle}">
						<input type="hidden" name="boardCode" value="${board.boardCode}">
						<input type="hidden" name="postPassword" value="${board.postPassword}">
						<input type="hidden" name="cstCode" value="${board.cstCode}">
						<input type="hidden" name="qnaReply" value="${board.qnaReply}">
						<input type="hidden" name="boardDate" value="${board.boardDate}">
						<input type="hidden" name="replyCount" value="${board.replyCount}">
						<!-- 윗 부분이 없다면 전달 받은 변수들이 다시 컨트롤러로 가지 못하게 된다 위의 구문들이 변수를 가지고
						있다가 다시 컨트롤러로 변수를 전달해주는 그릇 역활을 하게 한다. -->
						<!-- 보드의 제목을 클릭하게 되면 히든 타입으로 글번호가  보드체크를 따라 
						컨트롤로 간다 -->
						</f:form>	
					</td>
					<!-- 제목 -->
					<td width="80"><font size="2">${board.boardDate}</font></td>	
					<!-- 작성자 -->
					<td width="85"><font size="2">${board.cstId}</font></td>
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
				<td><input type="hidden" name="cstId" value="${board.cstId}">
				<input type="button" onclick="document.location='boardWriteForm.do'" value="글쓰기" class="redBtn"></td>
				<td></td>
				<td align="left">
				<td></td>
					
			</tr>
		

		</table>


