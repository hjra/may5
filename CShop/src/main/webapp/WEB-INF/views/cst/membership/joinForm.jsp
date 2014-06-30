<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
회원가입 입력폼
<f:form action="joinOk.do" method="post" commandName="customer">
	<div class="row_group">
		<div id="idDiv">
			<f:input path="cstId" placeholder="USER ID" />
		</div>
		<div id="pass1Div">
			<f:password path="cstPassword" placeholder="PASSWORD"/>
		</div>
		<div id="pass2Div">
			<input type="password" name="cstPassword2" placeholder="PASSWORD CONFIRM">
		</div>
	</div>
	<div class="row_group">
		<div id="nameDiv">
			<f:input path="cstName" placeholder="NAME"/>
		</div>
		<div id="genderDiv">
			<f:radiobutton path="cstGender" value="M" label="Man" />
			<f:radiobutton path="cstGender" value="L" label="Lady" />
		</div>
		<div id="birthDiv">
			<f:input path="cstBirthday" placeholder="BIRTH DAY"/>
		</div>
		<div id="mailDiv">
			<f:input path="cstEmail" placeholder="E-MAIL"/>
		</div>
	</div>
	<div class="row_group">
		<div id="cPDiv">
			<f:input path="cstCP" placeholder="MOBILE PHONE"/>
		</div>
		<div id="codeDiv">
			<input type="text" name="code" placeholder="CODE">
		</div>
		<div id="add1Div">
			<f:input path="zipCode" placeholder="ADDRESS"/>
		</div>
		<div id="add2Div">
			<f:input path="cstDetailAddress" placeholder="ADDRESS DETAIL"/>
		</div>
	</div>
	<input type="submit" value="JOIN OK">
</f:form>
