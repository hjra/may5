<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
/* checkbox 전체선택, 전체해제 */
$(document).ready(function(){
	$('#allAgreement').click(function(){
		if($("#allAgreement").is(":checked")){
			$('input:checkbox[id^=agreement]:not(checked)').attr("checked", true);
		} else{
			$('input:checkbox[id^=agreement]:checked').attr("checked", false);
		}
	});
});
</script>
회원가입 동의폼
	<div>
	<f:form action="joinForm.do" method="post" commandName="cstEmailAgreement">
		<div>
			<div>
				이용약관, 개인정보 수집 및 이용,
				이벤트 메일 수신약관(선택)에 모두 동의합니다.
				<input id="allAgreement" type="checkbox" >
			</div>
			<div>
				이용약관 동의(필수)<input name="serviceAgreement" type="checkbox" id="agreement">
			</div>
			<div>
				개인정보 수집 및 이용에 대한 안내(필수)<input name="privacyAgreement" type="checkbox" id="agreement">
			</div>
			<div>
				이벤트 E-mail 수신약관 동의(선택)<input name="cstEmailAgreement" type="checkbox" id="agreement" value="T">
			</div>
		</div>
		<input type="submit" value="AGREE">
	</f:form>
	<a href="/controller/home/homeImage.do">취소</a>
	</div>
