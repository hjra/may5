<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
<!--
//-->
	$(document).ready(
			function() {
				$('#scZipBtn').click(
						function() {
							if ($('#scZipText').val() == '') {
								return false;
							} else {
								$.ajax({
									chche : false,
									async : false,
									type : 'POST',
									url : 'searchZipInfoList.do',
									data : 'zipKeyword='
											+ $('#scZipText').val(),
									dataType : 'json',
									error : function(request, status, error) {
										alert("code:" + request.status + "\n"
												+ "message:"
												+ request.responseText + "\n"
												+ "error:" + error);
									},
									success : function(result) {
										$.each(result, function(key) {
											var list = result[key];
											if(list != "null"){
												var content = "<ul>";

												for (i=0; i<list.length; i++) {
													content += "<li>";
													content += "<input type='text' readonly name='";
															+ list[i].zipCode
															+=' value=';
															+ list[i].zipCode
															+ '/>";
															+ list[i].zipKeyword
															+ " ("
															+ list[i].dong
															+ list[i].jibunNum1
															+ "-"
															+ list[i].jibunNum2
															+ ")";
													content += "</li>";
												}
												content += "</ul>";

												$('#zipInfoDiv').html(content).css("display", "block");
											}else if(list == "null"){
												$('#zipInfoDiv').html("").css("display", "none"),
												$('#scZipCheck').text("도로명 주소가 없습니다.");
											}else{
												$('#zipInfoDiv').html("").css("display", "none"),
												$('#scZipCheck').text("도로명 주소를 잘못 입력하셨습니다.");
												return false;
											}
										});
									}
								});
							}
						});
			function nothing() {
					return;
			}
		});

</script>

회원가입 입력폼
<br>
<f:form action="joinOk.do" method="Post" commandName="customer">
	<div class="row_group">
		<div id="idDiv">
			<f:input path="cstId" placeholder="USER ID" id="cstId" />
		</div>
		<span id="check"></span>
		<div id="pass1Div">
			<f:password path="cstPassword" placeholder="PASSWORD" />
		</div>
		<div id="pass2Div">
			<input type="password" name="cstPassword2"
				placeholder="PASSWORD CONFIRM">
		</div>
	</div>
	<div class="row_group">
		<div id="nameDiv">
			<f:input path="cstName" placeholder="NAME" />
		</div>
		<div id="genderDiv">
			<f:radiobutton path="cstGender" value="M" label="Man" />
			<f:radiobutton path="cstGender" value="L" label="Lady" />
		</div>
		<div id="birthDiv">
			<f:input path="cstBirthday" placeholder="BIRTH DAY"
				class="date-picker" />
		</div>
		<div id="mailDiv">
			<f:input path="cstEmail" placeholder="E-MAIL" />
		</div>
	</div>
	<div class="row_group">
		<div id="cPDiv">
			<f:input path="cstCP" placeholder="MOBILE PHONE" />
		</div>
		<div id="codeDiv">
			<input type="text" name="code" placeholder="CODE">
		</div>
		<div id="add1Div">
			<form method="post" action="javascript:nothing()">
				<input type="text" id="scZipText" placeholder="ADDRESS"
					onkeydown="if (event.keyCode == 13) document.getElementById('scZipBtn').click()">
				<input type="button" id="scZipBtn" value="SEARCH">
				<div id="scZipCheck"></div>
				<div id="zipInfoDiv" style="width: 300px; height: 100px; overflow: auto; display: none;"></div>
			</form>
			<%-- <f:input path="zipCode" placeholder="ADDRESS"/> --%>
			<%-- 			<f:select path="zipCode">
				<c:forEach var="zip" items="${zip}">
					<option value="${zip.zipCode}">${zip.sido}&nbsp;${zip.sigungu}</option>
				</c:forEach>
			</f:select> --%>
		</div>
		<div id="add2Div">
			<f:input path="cstDetailAddress" placeholder="ADDRESS DETAIL" />
		</div>
	</div>
	<f:hidden path="cstEmailAgreement" />
	<input type="submit" id="joinOk" value="JOIN OK">
</f:form>


