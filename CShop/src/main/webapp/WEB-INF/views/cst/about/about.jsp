<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- 전화걸기 스크립트 없으면 모바일에서 전화,문자보내기가 연동이 안됩니다.	 -->
<script type="text/javascript"> 
function callNumber(num){
   location.href="tel:"+num;
}
</script>

	
<h1>about 화면입니다.

<P>
<P>
<P>
<P>

<!-- 모바일에서 전화걸기, 문자보내기 입니다 -->

<a href = "tel:02-3395-0000">클릭하시면 전화걸기가 됩니다. 3395-0000 </a><p><p>

<p><a href = "sms:010-1234-2345"> 클릭하시면 문자보내기가 작동됩니다. </a>

<!-- 아래의 코드는 이미지를 클릭하면 자동으로 전화걸기가 되는 소스입니다.
<a href="tel:010-8677-9677"><img src="T0000006.png" alt="" width="340" height="236" /></a> -->


<!-- 다음 지도 API로 설정 되어 있습니다.
현재주소는 비트교육센터 별관으로 되어있습니다. -->
<FORM>
<div>
	<iframe src="http://dna.daum.net/include/tools/routemap/map_view.php?width=500
	&height=300&latitude=37.494539069596186&longitude=127.02801704406481&contents=&zoom=4" 
	width="500" height="335" scrolling="no" frameborder="0">
	</iframe>
</div>
</FORM>	