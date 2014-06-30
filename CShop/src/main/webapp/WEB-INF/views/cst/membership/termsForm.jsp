<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript">
/* checkbox 전체선택, 전체해제 */
$(document).ready(function(){
	$('#allAgreement').click(function(){
		if($("#allAgreement").is(":checked")){
			$('input:checkbox[name^=agreement]:not(checked)').attr("checked", true);
		} else{
			$('input:checkbox[name^=agreement]:checked').attr("checked", false);
		}
	});
});
</script>
회원가입 동의폼
	<div>
	<f:form action="joinForm.do" method="post">
		<div>
			<div>
				이용약관, 개인정보 수집 및 이용,
				이벤트 메일 수신약관(선택)에 모두 동의합니다.
				<input id="allAgreement" type="checkbox" >
			</div>
			<div>
				이용약관 동의(필수)<input id="serviceAgreement" type="checkbox" name="agreement">
			</div>
			<div>
				개인정보 수집 및 이용에 대한 안내(필수)<input id="privacyAgreement" type="checkbox" name="agreement">
			</div>
			<div>
				이벤트 E-mail 수신약관 동의(선택)<input id="cstEmailAgreement" type="checkbox" name="agreement">
			</div>
		</div>
		<input type="submit" value="AGREE">
	</f:form>
	<a href="../home/homeImage.do">취소</a>
	</div>
