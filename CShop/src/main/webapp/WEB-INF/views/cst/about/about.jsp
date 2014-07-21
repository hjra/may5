<<<<<<< HEAD
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
	
	#container {width: 730px; padding-left: 40px}
	
	/* 여기서부터는 달력에 대한 CSS입니다. */
	
	
	body {
	/* 아래 부분이 about.jsp부분의 백그라운드 색깔을 바꾸는 곳입니다. */
	/* background-color: #CBAC7B; */
	font-family: small Arial,sans-serif;
	margin: 0 auto;
	width: 792px;
	}
	#header {
	font-family: Verdana;
	padding-top: 20px;
	text-align: center;
	}
	#header h1 {
	color: #0D5586;
	font-size: 54px;
	text-shadow: 5px 3px 3px #6374AB;
	margin: 0 0 4px;
	}
	#footer {
	padding: 10px;
	text-align: center;
	}
	#header img {
	vertical-align: middle;
	}
	#date-cur {
	padding: 10px;
	color: #105AD6;
	font-size: 30px;
	text-align: center;
	}

	#calendar {
	margin: 0 0 0 30px;
	padding: 0;
	background-color: #ddd;
	}
	#days {
	margin: 0 0 0 30px;
	padding: 0;
	background-color: #ddd;
	}
	#days li {
	list-style: none;
	width: 91px;
	padding: 5px;
	border: 1px solid #999;
	float: left; 
	background-color: #fff; 
	overflow: hidden;
	text-align: center;
	font-size: 17px;
	background-color: #E6D7BF;
	}
	#calendar li span {
	padding-bottom: 4px;
	display: block;
	text-align: right;
	}
	#calendar li {
	list-style: none;
	font-weight: bold;
	width: 91px;
	height: 88px;
	border: 1px solid #999;
	float: left; 
	background-color: #fff; 
	padding: 5px;
	overflow: hidden;
	position: relative;
	}
	#calendar li ul {
	margin: 0;
	padding: 0;
	clear: both; }
	#calendar li ul li {
	list-style: none;
	font-weight: normal;
	float: none;
	border: none;
	padding: 5px 0;
	margin: 0;
	}
	#calendar li.inactive {
	background-color: #ddd;
	color: #999;
	text-align: right;
	}
	#calendar li.active {
	background-color: #B5CEF9;
	}
	#calendar li.today {
	background-color: #eee;
	}
	#add-event:hover {
	background-color: #ddd;
	}
	#add-event, .add-event {
	text-decoration: none;
	background-color: #F4F4F4;
	border: 1px solid #ccc;
	padding: 0px 6px;
	font-size: 20px;
	}
	#add-event {
	position: absolute;
	top: 4px;
	left: 72px;
	}
	.clear { 
   	clear: both;
	}
	#new-event {
	background-color: #F9F9F9;
	border: 1px solid #727272;
	box-shadow: 10px 11px 15px #9F9F9F;
	position: absolute;
	width: 400px;
	display: none;
	}
	#new-event textarea {
	width: 100%;
	height: 270px;
	}
	#create-event {
	cursor: pointer;
	color: #535353;
	font-size: 15px;
	}
	#event-bar {
	padding: 4px;
	text-align: center;
	}
	.event-item {
	background-color: #FAFAFA;
	color: #777777;
	cursor: pointer;
	line-height: 16px;
	padding: 2px 9px;
	font-size: 11px;
	margin: 1px;
	font-weight: normal;
	border: 1px solid #999999;
	}
	#delete-event {
	display: none;
	float: left;
	}
	.events {
	overflow: auto;
	height: 70px;
	}


	#container #calendar #_20140606 span {
	color: #F00;
	}
	#container #calendar #_20140613 span {
	color: #F00;
	}
	#container #calendar #_20140620 span {
	color: #F00;
	}
	#container #calendar #_20140627 span {
	color: #F00;
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
<img src="/CShop/resources/img/about/qrCode.png" alt="QR코드" style="width: 170px; margin: 181px">
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



<!-- 월별 달력을 조립중입니다.
 소스참고는   입니다 
 문제시 자체 삭제하겠습니다.-->
 
 <div id="header">
		<h1> C# <br />7월 대박 할인 이벤트</h1>
	</div>

	<div id="container">
		<div id="date-cur"> </div>
		<ol id="days">
			<li>월요일</li>
			<li>화요일</li>
			<li>수요일</li>
			<li>목요일</li>
			<li>금요일</li>
			<li>토요일</li>
			<li>일요일</li>
		</ol>
	  <div class="clear"></div>
		<ol id="calendar">
		<li id="_20140530" class="inactive">30</li><li id="_20140601"><span>1</span><div class="events">
		</div></li><li id="_20140602"><span>2</span><div class="events"><img onclick="location.href='menuInfo.do?itemId=S2SSS'" src="/CShop/resources/img/cake/S2SSS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140603"><span>3</span><div class="events">
		</div></li><li id="_20140604"><span>4</span><div class="events">
		</div></li><li id="_20140605"><span>5</span><div class="events">
		</div></li><li id="_20140606"><span>6</span><div class="events">
		</div></li><li id="_20140607"><span style="color: #00F">7</span><div class="events">
		</div></li><li id="_20140608"><span>8</span><div class="events">
		</div></li><li id="_20140609"><span>9</span><div class="events">
		</div></li><li id="_20140610"><span>10</span><div class="events">
		</div></li><li id="_20140611"><span>11</span><div class="events">
		<img onclick="location.href='menuInfo.do?itemId=L1BBS'" src="/CShop/resources/img/cake/L1BBS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140612"><span>12</span><div class="events">
		</div></li><li id="_20140613"><span>13</span><div class="events">
		</div></li><li id="_20140614"><span style="color: #00F">14</span>
		<div class="events"><img onclick="location.href='menuInfo.do?itemId=S2GGG'" src="/CShop/resources/img/cake/S2GGG1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140615"><span>15</span>
		<div class="events"></div></li><li id="_20140616"><span>16</span>
		<div class="events"></div></li><li id="_20140617"><span>17</span>
		<div class="events"></div></li><li id="_20140618" class="events">
		<span>18</span><div class="events"></div><a id="add-event" >
		</a></li><li id="_20140619"><span>19</span><div class="events">
		</div></li><li id="_20140620"><span>20</span><div class="events">
		</div></li><li id="_20140621"><span style="color: #00F">21</span><div class="events">
		<img onclick="location.href='menuInfo.do?itemId=S1SSS'" src="/CShop/resources/img/cake/S1SSS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140622"><span>22</span><div class="events">
		</div></li><li id="_20140623"><span>23</span><div class="events">
		</div></li><li id="_20140624"><span>24</span><div class="events">
		</div></li><li id="_20140625"><span>25</span><div class="events">
		</div></li><li id="_20140626"><span>26</span><div class="events">
		</div></li><li id="_20140627"><span>27</span><div class="events">
		</div></li><li id="_20140628"><span style="color: #00F">28</span>
		<div class="events"></div></li><li id="_20140629"><span>29</span>
		<div class="events"></div></li><li id="_20140630"><span>30</span>
		<div class="events"></div></li><li id="_20140631"><span>31</span>
		<div class="events"><img onclick="location.href='menuInfo.do?itemId=S1BGS'" src="/CShop/resources/img/cake/S1BGS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140701" class="inactive">1</li>
		<li id="_20140702" class="inactive">2</li>
		<li id="_20140703" class="inactive">3</li>
		
		</ol>
		<div class="clear"></div>
	</div>
	<div id="footer">
		<td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
	</div>
 
=======
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
	
	#container {width: 730px; padding-left: 40px}
	
	/* 여기서부터는 달력에 대한 CSS입니다. */
	
	
	body {
	background-color: #CBAC7B;
	font-family: small Arial,sans-serif;
	margin: 0 auto;
	width: 792px;
	}
	#header {
	font-family: Verdana;
	padding-top: 20px;
	text-align: center;
	}
	#header h1 {
	color: #0D5586;
	font-size: 54px;
	text-shadow: 5px 3px 3px #6374AB;
	margin: 0 0 4px;
	}
	#footer {
	padding: 10px;
	text-align: center;
	}
	#header img {
	vertical-align: middle;
	}
	#date-cur {
	padding: 10px;
	color: #105AD6;
	font-size: 30px;
	text-align: center;
	}

	#calendar {
	margin: 0 0 0 30px;
	padding: 0;
	background-color: #ddd;
	}
	#days {
	margin: 0 0 0 30px;
	padding: 0;
	background-color: #ddd;
	}
	#days li {
	list-style: none;
	width: 91px;
	padding: 5px;
	border: 1px solid #999;
	float: left; 
	background-color: #fff; 
	overflow: hidden;
	text-align: center;
	font-size: 17px;
	background-color: #E6D7BF;
	}
	#calendar li span {
	padding-bottom: 4px;
	display: block;
	text-align: right;
	}
	#calendar li {
	list-style: none;
	font-weight: bold;
	width: 91px;
	height: 88px;
	border: 1px solid #999;
	float: left; 
	background-color: #fff; 
	padding: 5px;
	overflow: hidden;
	position: relative;
	}
	#calendar li ul {
	margin: 0;
	padding: 0;
	clear: both; }
	#calendar li ul li {
	list-style: none;
	font-weight: normal;
	float: none;
	border: none;
	padding: 5px 0;
	margin: 0;
	}
	#calendar li.inactive {
	background-color: #ddd;
	color: #999;
	text-align: right;
	}
	#calendar li.active {
	background-color: #B5CEF9;
	}
	#calendar li.today {
	background-color: #eee;
	}
	#add-event:hover {
	background-color: #ddd;
	}
	#add-event, .add-event {
	text-decoration: none;
	background-color: #F4F4F4;
	border: 1px solid #ccc;
	padding: 0px 6px;
	font-size: 20px;
	}
	#add-event {
	position: absolute;
	top: 4px;
	left: 72px;
	}
	.clear { 
   	clear: both;
	}
	#new-event {
	background-color: #F9F9F9;
	border: 1px solid #727272;
	box-shadow: 10px 11px 15px #9F9F9F;
	position: absolute;
	width: 400px;
	display: none;
	}
	#new-event textarea {
	width: 100%;
	height: 270px;
	}
	#create-event {
	cursor: pointer;
	color: #535353;
	font-size: 15px;
	}
	#event-bar {
	padding: 4px;
	text-align: center;
	}
	.event-item {
	background-color: #FAFAFA;
	color: #777777;
	cursor: pointer;
	line-height: 16px;
	padding: 2px 9px;
	font-size: 11px;
	margin: 1px;
	font-weight: normal;
	border: 1px solid #999999;
	}
	#delete-event {
	display: none;
	float: left;
	}
	.events {
	overflow: auto;
	height: 70px;
	}


	#container #calendar #_20140606 span {
	color: #F00;
	}
	#container #calendar #_20140613 span {
	color: #F00;
	}
	#container #calendar #_20140620 span {
	color: #F00;
	}
	#container #calendar #_20140627 span {
	color: #F00;
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
<img src="/CShop/resources/img/about/qrCode.png" alt="QR코드" style="width: 170px; margin: 181px">
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



<!-- 월별 달력을 조립중입니다.
 소스참고는   입니다 
 문제시 자체 삭제하겠습니다.-->
 
 <div id="header">
		<h1> C# <br />7월 대박 할인 이벤트</h1>
	</div>

	<div id="container">
		<div id="date-cur"> </div>
		<ol id="days">
			<li>월요일</li>
			<li>화요일</li>
			<li>수요일</li>
			<li>목요일</li>
			<li>금요일</li>
			<li>토요일</li>
			<li>일요일</li>
		</ol>
	  <div class="clear"></div>
		<ol id="calendar">
		<li id="_20140530" class="inactive">30</li><li id="_20140601"><span>1</span><div class="events">
		</div></li><li id="_20140602"><span>2</span><div class="events"><img onclick="location.href='menuInfo.do?itemId=S2SSS'" src="/CShop/resources/img/cake/S2SSS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140603"><span>3</span><div class="events">
		</div></li><li id="_20140604"><span>4</span><div class="events">
		</div></li><li id="_20140605"><span>5</span><div class="events">
		</div></li><li id="_20140606"><span>6</span><div class="events">
		</div></li><li id="_20140607"><span style="color: #00F">7</span><div class="events">
		</div></li><li id="_20140608"><span>8</span><div class="events">
		</div></li><li id="_20140609"><span>9</span><div class="events">
		</div></li><li id="_20140610"><span>10</span><div class="events">
		</div></li><li id="_20140611"><span>11</span><div class="events">
		<img onclick="location.href='menuInfo.do?itemId=L1BBS'" src="/CShop/resources/img/cake/L1BBS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140612"><span>12</span><div class="events">
		</div></li><li id="_20140613"><span>13</span><div class="events">
		</div></li><li id="_20140614"><span style="color: #00F">14</span>
		<div class="events"><img onclick="location.href='menuInfo.do?itemId=S2GGG'" src="/CShop/resources/img/cake/S2GGG1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140615"><span>15</span>
		<div class="events"></div></li><li id="_20140616"><span>16</span>
		<div class="events"></div></li><li id="_20140617"><span>17</span>
		<div class="events"></div></li><li id="_20140618" class="events">
		<span>18</span><div class="events"></div><a id="add-event" >
		</a></li><li id="_20140619"><span>19</span><div class="events">
		</div></li><li id="_20140620"><span>20</span><div class="events">
		</div></li><li id="_20140621"><span style="color: #00F">21</span><div class="events">
		<img onclick="location.href='menuInfo.do?itemId=S1SSS'" src="/CShop/resources/img/cake/S1SSS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140622"><span>22</span><div class="events">
		</div></li><li id="_20140623"><span>23</span><div class="events">
		</div></li><li id="_20140624"><span>24</span><div class="events">
		</div></li><li id="_20140625"><span>25</span><div class="events">
		</div></li><li id="_20140626"><span>26</span><div class="events">
		</div></li><li id="_20140627"><span>27</span><div class="events">
		</div></li><li id="_20140628"><span style="color: #00F">28</span>
		<div class="events"></div></li><li id="_20140629"><span>29</span>
		<div class="events"></div></li><li id="_20140630"><span>30</span>
		<div class="events"></div></li><li id="_20140631"><span>31</span>
		<div class="events"><img onclick="location.href='menuInfo.do?itemId=S1BGS'" src="/CShop/resources/img/cake/S1BGS1.png" alt="대표이미지" style="width: 60px; ">
		</div></li><li id="_20140701" class="inactive">1</li>
		<li id="_20140702" class="inactive">2</li>
		<li id="_20140703" class="inactive">3</li>
		
		</ol>
		<div class="clear"></div>
	</div>
	<div id="footer">
		<td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
	</div>
 
>>>>>>> branch 'master' of https://github.com/hjra/may5.git
