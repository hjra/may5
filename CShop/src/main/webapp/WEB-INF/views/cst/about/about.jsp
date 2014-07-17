<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	body{
	background:#f5f5f5;
	}
	#emailSubmit{
	background:#cb9f9a;
	color:#ffffff;
	border:none;
	}
	.emailBox {
		width:500px;
		margin:80px auto;
	}
	.emailBox input,.emailBox textarea {
		display:block;
		width:100%;
		height:40px;
		line-height:30px;
		padding:5px;
		border:1px solid #ddd;
		resize:none;
	}
	.emailBox textarea {
	height:120px;
	}
	.emailRow{
		margin-bottom:10px;
	}
</style>


	
	<!-- 전화걸기 스크립트 없으면 모바일에서 전화,문자보내기가 연동이 안됩니다.	 -->
<script type="text/javascript"> 
function callNumber(num){
   location.href="tel:"+num;
}
</script>

	
<h1>about 화면입니다.</h1>

<P>
<P>
<P>
<P>

<!-- 모바일에서 전화걸기, 문자보내기 입니다 -->
<br><br><br>
<a href = "tel:02-3395-0000">클릭하시면 전화걸기가 됩니다. 3395-0000 </a><p>                      <a href = "sms:010-1234-2345"> 클릭하시면 문자보내기가 작동됩니다. </a>

<!-- 아래의 코드는 이미지를 클릭하면 자동으로 전화걸기가 되는 소스입니다.
<a href="tel:010-8677-9677"><img src="T0000006.png" alt="" width="340" height="236" /></a> -->


<!-- 다음 지도 API로 설정 되어 있습니다.
현재주소는 비트교육센터 별관으로 되어있습니다. -->
<FORM>
<center>
<div>
	<iframe src="http://dna.daum.net/include/tools/routemap/map_view.php?width=500
	&height=300&latitude=37.494539069596186&longitude=127.02801704406481&contents=&zoom=4" 
	width="500" height="335" scrolling="no" frameborder="0">
	</iframe>
</div>
</center>
</FORM>	<p><br><br><br>



<center>
<h5>이것은 QR코드입니다 나중에 시연영상 할때 C#관리자처럼 이름을 바꿔서 실시간 상담이 가능하도록 설정하면 됩니다.</h5><p>
<h3>C# 관리자에게 실시간 상담을 받으세요~<p>카톡 앱 안에서 QR코드 친구등록을 누르시면 자동으로 친구등록이 됩니다!!!<p>(상담시간 오전 9시~오후 6시)</h3>
<img src="/CShop/resources/img/about/qrCode.png" alt="대표이미지" style="width: 170px; margin: 181px">
</center>


<!-- 이메일 보내기 -->
<h2 align="center">메일 문의</h2>
<form action="/CShop/mailProc.do" method="POST">
	<div class="emailBox">
		<div class="emailRow">
			<input type="text" name="name" placeholder="이름"/>
		</div>
		<div class="emailRow">
			<input type="text" name="email" placeholder="연락받을 이메일 주소"/>
		</div>
		<div class="emailRow">
			<textarea name="description"></textarea>
		</div>
		<div class="emailRow">
			<input id="emailSubmit" type="submit"/>
		</div>
	</div>
</form>
