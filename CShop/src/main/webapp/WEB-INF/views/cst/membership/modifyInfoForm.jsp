<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<script type="text/javascript">
	function modify() {
		document.getElementById("form").action = "modifyInfoProcess.do";
		alert("입력하신 개인정보의 수정이 완료되었습니다.");
		document.getElementById("form").submit();
	}
	function home() {
		document.getElementById("form").action = "homeImage.do";
		document.getElementById("form").submit();
	}
</script>
<style type="text/css">
.row_text {width:200px; float:left; display: inline-block;}
.row_input {width:400px; display: inline-block;}
</style>

개인정보 확인 및 수정 폼 zipKeyword: ${zip.zipKeyword}
<br><br><br>
<div>
<f:form id="form" method="post" commandName="customer">
	<div class="row_group">
		<div id="idDiv">
			<div class="row_text">
				USER ID
			</div>
			<div class="row_input">
				${customer.cstId}
			</div>
		</div>
		<div id="pass1Div">
			<div class="row_text">
				PASSWORD*
			</div>
			<div>
				<f:password path="cstPassword" class="row_input"/>
			</div>
		</div>
		<div id="newPass1Div">
			<div class="row_text">
				NEW PASSWORD
			</div>
			<div>
				<input type="password" name="newPassword1" class="row_input">
			</div>
		</div>
		<div id="newPass2Div">
			<div class="row_text">
				NEW PASSWORD CONFIRM
			</div>
			<div>
				<input type="password" name="newPassword2" class="row_input">
			</div>
		</div>
	</div>
	<div class="row_group">
		<div id="nameDiv">
			<div class="row_text">
				NAME
			</div>
			<div>
				<f:label path="cstName">${customer.cstName}</f:label>
			</div>
		</div>
		<div id="genderDiv">
			<div class="row_text">
				GENDER
			</div>
			<div>
				${customer.cstGender == "M" ? "Man" : "Lady"}
			</div>
		</div>
		<div id="birthDiv">
			<div class="row_text">
				BIRTH DAY
			</div>
			<div>
				<f:label path="cstBirthday" >${customer.cstBirthday}</f:label>
			</div>
		</div>
		<div id="mailDiv">
			<div class="row_text">
				EMAIL
			</div>
			<div>
				<f:input path="cstEmail" value="${customer.cstEmail}" class="row_input"/>
			</div>
		</div>
	</div>
	<div class="row_group">
		<div id="cPDiv">
			<div class="row_text">
				MOBILE PHONE
			</div>
			<div>
				<f:input path="cstCP" value="${customer.cstCP}" class="row_input"/>
			</div>
		</div>
		<div id="codeDiv">
			<div class="row_text">
				
			</div>
			<div>
			
			</div>
		</div>
		<div id="add1Div">
			<div class="row_text">
				ADDRESS
			</div>
			<div id="zipCodeDiv"></div>
				<input type="text" id="scZipText" placeholder="ADDRESS" value="${zip.zipKeyword}" class="row_input"
					onkeydown="if (event.keyCode == 13) document.getElementById('scZipBtn').click()">
				<input type="button" id="scZipBtn" value="SEARCH">
				<div id="scZipCheck"></div>
				<div id="zipInfoDiv" style="width: 100%; height: 100px; overflow: auto; display: none;">
					<table id="zipInfoTable"></table>
				</div>
<%-- 			<div>
				<f:input path="zipCode" value="${zip.zipKeyword}"/>
			</div> --%>
		</div>
		<div id="add2Div">
			<div class="row_text">
				ADDRESS DETAIL
			</div>
			<div>
				<f:input path="cstDetailAddress" value="${customer.cstDetailAddress}" class="row_input"/>
			</div>
		</div>
		<div id="rcvMailDiv">
			<div class="row_text">
				RECEIVE E-MAIL
			</div>
			<div class="row_input">
				<input type="checkbox" name="cstEmailAgreement" value="T" ${customer.cstEmailAgreement == "T" ? "CHECKED" : ""} />
					서비스 오픈/변경 및 이벤트 소식이 담긴 홍보성 메일을 수신하겠습니다.
					주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계 없이 발송되며,
					이메일 수신동의 상태의 반영은 최대 2일이 소요될 수 있습니다.
			</div>
		</div>
	</div>
	cstCode:<input type="text" value="${sessionScope.cstLogin.cstCode}" readonly> 
	<input type="hidden" name="cstCode" value="${sessionScope.cstLogin.cstCode}">
	<input type="submit" onclick="modify()" value="MODIFY">
	<!-- <input type="submit" onclick="home()" value="HOME"> -->
	<input type="reset" value="RESET">
</f:form>
</div>
<script src="resources/script/membership.js"></script>
<script type="text/javascript"></script>
