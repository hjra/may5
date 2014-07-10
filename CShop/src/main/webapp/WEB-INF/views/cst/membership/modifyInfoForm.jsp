<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript">
	function modify() {
		document.getElementById("form").action = "modifyInfoProcess.do";
		document.getElementById("form").submit();
	}
	function home() {
		document.getElementById("form").action = "homeImage.do";
		document.getElementById("form").submit();
	}
</script>
개인정보 확인 및 수정 폼
<div>
<f:form id="form" method="post" commandName="customer">
	<div class="row_group">
		<div id="idDiv">
			<div class="row_text">
				USER ID
			</div>
			<div class="row_input">
				${sessionScope.cstLogin.cstId}
			</div>
		</div>
		<div id="pass1Div">
			<div>
				PASSWORD*
			</div>
			<div>
				<f:password path="cstPassword"/>
			</div>
		</div>
		<div id="newPass1Div">
			<div>
				NEW PASSWORD
			</div>
			<div>
				<input type="password" name="newPassword1">
			</div>
		</div>
		<div id="newPass2Div">
			<div>
				NEW PASSWORD CONFIRM
			</div>
			<div>
				<input type="password" name="newPassword2">
			</div>
		</div>
	</div>
	<div class="row_group">
		<div id="nameDiv">
			<div>
				NAME
			</div>
			<div>
				<f:input path="cstName" value="${sessionScope.cstLogin.cstName}"/>
			</div>
		</div>
		<div id="genderDiv">
			<div>
				GENDER
			</div>
			<div>
				${sessionScope.cstLogin.cstGender == "M" ? "Man" : "Lady"}
			</div>
		</div>
		<div id="birthDiv">
			<div>
				BIRTH DAY
			</div>
			<div>
				<f:label path="cstBirthday" >${sessionScope.cstLogin.cstBirthday}</f:label>
			</div>
		</div>
		<div id="mailDiv">
			<div>
				EMAIL
			</div>
			<div>
				<f:input path="cstEmail" value="${sessionScope.cstLogin.cstEmail}"/>
			</div>
		</div>
	</div>
	<div class="row_group">
		<div id="cPDiv">
			<div>
				MOBILE PHONE
			</div>
			<div>
				<f:input path="cstCP" value="${sessionScope.cstLogin.cstCP}"/>
			</div>
		</div>
		<div id="codeDiv">
			<div>
				
			</div>
			<div>
			
			</div>
		</div>
		<div id="add1Div">
			<div>
				ADDRESS
			</div>
			<div>
				<f:input path="zipCode" value="${zip.zipKeyword}"/>
			</div>
		</div>
		<div id="add2Div">
			<div>
				ADDRESS DETAIL
			</div>
			<div>
				<f:input path="cstDetailAddress" value="${sessionScope.cstLogin.cstDetailAddress}"/>
			</div>
		</div>
		<div id="rcvMailDiv">
			<div>
				RECEIVE E-MAIL
			</div>
			<div>
				<input type="checkbox" name="cstEmailAgreement" value="T" ${sessionScope.cstLogin.cstEmailAgreement == "T" ? "CHECKED" : ""} />
			</div>
		</div>
	</div>
	<input type="submit" onclick="modify()" value="MODIFY">
	<!-- <input type="submit" onclick="home()" value="HOME"> -->
	<input type="reset" value="RESET">
</f:form>
</div>
<script src="resources/script/membership.js"></script>
<script type="text/javascript"></script>
