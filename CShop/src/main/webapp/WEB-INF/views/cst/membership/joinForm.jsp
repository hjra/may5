<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/CShop/resources/css/membership.css" rel="stylesheet">
<script type="text/javascript">
<!--
//-->
	$(document).ready(function() {
		
		//ADDRESS 텍스트 클릭 시 초기화
		$('#scZipText').dblclick(function(){
			$('input:text[id=scZipText]').val('');
		});
		
		//우편정보 가져오기
		$('#scZipBtn').click(function() {
	
			if ($('#scZipText').val() == '') {
				$('#scZipCheck').html("<font color=red size='2px' style='font-weight:bold'> 도로명 주소를 입력해 주세요. </font>");
			} else {
				$.ajax({
					chche : false,
					async : false,
					type : 'POST',
					url : 'searchZipInfoList.do',
					data : 'zipKeyword=' + $('#scZipText').val(),
					dataType : 'json',
					error : function() {
						alert("Error");
					},
					success : function(json) {
					
						if(json.zip.length == 0){
							$('#zipInfoDiv').html("").hide();
							$('#scZipCheck').html("<font color=red size='2px' style='font-weight:bold'> 도로명 주소가 없습니다</font>");
		
						}else{
							alert("Succsss.zip.length!=0");
							$('#zipInfoDiv').show();
							
							for(var idx=0; idx<json.zip.length; idx++){
								var zipCodej = json.zip[idx].zipCode;
								var zipKeywordj = json.zip[idx].zipKeyword;
								var dongj = json.zip[idx].dong;
								var jibunNum1j = json.zip[idx].jibunNum1;
								var jibunNum2j = json.zip[idx].jibunNum2;
								
								$('#zipInfoDiv').append('<a>' + zipKeywordj + " (" + dongj + jibunNum1j + "-" + jibunNum2j + ")" +'</a><br/>');
				//				$('#zipInfoDiv').append('<a><input type="hidden" name="zipCodeHide" value="'+zipCodej+"/>' + zipKeywordj + " (" + dongj + jibunNum1j + "-" + jibunNum2j + ")" +'</a><br/>');

							};
								
								
							$('#zipInfoDiv').click(function(e){
									
							//	var juso1 = 
								//	'<input class="form-control input-sm" type="text" id="basejuso" name="basejuso" placeholder="기본주소" value="'+$(e.target).text()+'">';
							
								$('input:text[id=scZipText]').val($(e.target).text());
								$('#zipInfoDiv').hide();
							//	$('#add2Div').append(juso1);
							});
						}
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
			<f:input path="cstName" placeholder="NAME"/>
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
			<f:input path="cstCP" placeholder="MOBILE PHONE"  />
		</div>
		<div id="codeDiv">
			<input type="text" name="code" placeholder="CODE" class="row_text">
		</div>
		<div id="add1Div">
			<form method="post" action="javascript:nothing()">
				<input type="text" id="scZipText" placeholder="ADDRESS" value="" class="row_text"
					onkeydown="if (event.keyCode == 13) document.getElementById('scZipBtn').click()">
				<input type="button" id="scZipBtn" value="SEARCH">
				<div id="scZipCheck"></div>
				<div id="zipInfoDiv" style="width: 300px; height: 100px; overflow: auto; display: none;">
					<table id="zipInfoTable"></table>
				</div>
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
	<div class="row_group">
		<f:hidden path="cstEmailAgreement" />
		<input type="submit" id="joinOk" value="JOIN OK">
	</div>
</f:form>


