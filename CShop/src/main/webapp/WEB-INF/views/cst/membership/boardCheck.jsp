<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ page session="true"%>
<html>
<head>
<SCRIPT language="javascript">
	function check() {

		with (document.boardCheck) {

			if (postPassword.value != p.value) {
				alert("게시글의 암호를 입력해주세요!!!");
				postPassword.focus();
				return false;
			}
			return true;
		}
	}
</SCRIPT>
</head>
<body>
<%-- qna: ${qna} --%>
<p>!!!비밀번호 : ${qna.postPassword}	 참고 하세요.!!!</p>
	<h1>게시글의 암호체크페이지 입니다.</h1>

	<FORM name="boardCheck" method="post" action="boardEdit.do" onsubmit="return check()">


		<p>
			비밀번호: <input type="password" name="postPassword" size="20" value="">
			현재 접속한 글번호: ${qna.boardCode}<br> 현재 접속한 글번호의 password :
			${qna.postPassword}<br> <input type="hidden" name="p"
				value="${qna.postPassword}">
		<p>
			<f:form action="boardEdit.do" method="Post">
				<input type="submit" value="입력완료">
				<input type="hidden" name="boardCode" value="${qna.boardCode}">
			</f:form>
		</p>
		</FORM>
</body>
</html>