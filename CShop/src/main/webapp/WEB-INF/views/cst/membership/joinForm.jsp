<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function zipInfoAjaxList(){
		$.ajax({
			type	: 'POST',
			url		: "searchZipInfoList.do",
			dataType: "json",
			data	: "",
			contentType: "application/json; charset=utf-8",
			error: function(request,status,error){
				//alert("loading error:" + request.status);
				console.log("code : " +  request.statusText  + "\r\nmessage : " + request.responseText);},
			success : function(result){
				$.each(result, function(key){
					var list = result[key];
					
					var content = "<table>";
					
					for(i=0; i<list.length; i++){
						content += "<tr>";
						content += "<td>" + list[i].ZIPKEYWORD + "</td>";
						content += "</tr>";
					}
					content += "<table>";
					
					$("#zipInfoDiv").html(content);
				});
			}
		});
	}

</script>


회원가입 입력폼<br>
<f:form action="joinOk.do" method="Post" commandName="customer">
	<div class="row_group">
		<div id="idDiv">
			<f:input path="cstId" placeholder="USER ID" id="cstId"/>
		</div>
		<span id="check"></span>
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
			<f:input path="cstBirthday" placeholder="BIRTH DAY" class="date-picker"/>
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
			<%-- <f:input path="zipCode" placeholder="ADDRESS"/> --%>
<%-- 			<f:select path="zipCode">
				<c:forEach var="zip" items="${zip}">
					<option value="${zip.zipCode}">${zip.sido}&nbsp;${zip.sigungu}</option>
				</c:forEach>
			</f:select> --%>
		</div>
		<div id="add2Div">
			<f:input path="cstDetailAddress" placeholder="ADDRESS DETAIL"/>
		</div>
	</div>
	<f:hidden path="cstEmailAgreement"/>
	<input type="submit" id="joinOk" value="JOIN OK">
</f:form>
<br>
<br>
<form action="searchZipInfoList.do" method="post">
	<input type="text" name="zipKeyword" placeholder="zipKeyword">
	<input type="submit" value="도로명 검색" onclick="zipInfoAjaxList()">
<!-- <input type="button" value="우편정보 갖고 오기" onclick="zipInfoAjaxList()"> -->
</form>
<div id="zipInfoDiv"></div>