<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="/CShop/resources/css/advanceOrderUI.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.mobiledragdrop.js"></script>
<script src="resources/script/advanceOrderUI.js"></script>
<script type="text/javascript"></script>

<div class="advanceo">
<input type="button" value="선택한 케익  보기" id="btnChoice">
<div id="modal-background"></div>
<div id="modal-content">
	<f:form action="orderDetail.do" method="post">
		<div id="choiceItem"></div>
		<div id="choiceItem2"></div>
		
		<input type="submit" value="주문하기">
	</f:form>
	<input type="button" value="돌아가기" id="modal-close">
</div>

<div id="how">
		
	<div id="itemBasket">
		<div class="dragCream" id="f"><img id="1" class="dragImg" usemap="#mapF.png" src="/CShop/resources/img/cake/CreamF.png"></div>
		<div class="dragCream" id="c"><img id="2" class="dragImg" usemap="#mapC.png" src="/CShop/resources/img/cake/CreamC.png"></div>

		<div class="dragTop" id="s1"><img id="S" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>
		<div class="dragTop" id="s2"><img id="S" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>
		<div class="dragTop" id="s3"><img id="S" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>

		<div class="dragTop" id="b1"><img id="B" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		<div class="dragTop" id="b2"><img id="B" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		<div class="dragTop" id="b3"><img id="B" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		<div class="dragTop" id="g1"><img id="G" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
		<div class="dragTop" id="g2"><img id="G" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
		<div class="dragTop" id="g3"><img id="G" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
	</div>
	
	<div class="sizeRadio">
		<input type="radio" name="size" style="display:none" value="S">
		<input type="radio" name="size" style="display:none" value="M">
		<input type="radio" name="size" style="display:none" value="L">

		<img src="/CShop/resources/img/cake/L1.png" id="sizeL" class="sizeImgRadio"
		onClick="document.getElementsByName('size')[0].checked=true; setImageRadio();" alt="큰 케익">
		<img src="/CShop/resources/img/cake/M1.png" id="sizeM" class="sizeImgRadio"
		onClick="document.getElementsByName('size')[1].checked=true; setImageRadio();" alt="중간 케익">
		<img src="/CShop/resources/img/cake/S1.png" id="sizeS" class="sizeImgRadio"
		onClick="document.getElementsByName('size')[2].checked=true; setImageRadio();" alt="작은 케익">
	</div>

	<div class="drop" id="dropCream" style="position: relative;">
		<div style="clear: both;">
			<p>크림을 선택해 주세요♥</p>
		</div>
	</div>
	
	<div class="drop" id="dropTop" style="position: relative;">
		<div style="clear: both;">
			<p>토핑을 선택해 주세요♥</p>
		</div>
	</div>
	<div style="clear: both">&nbsp;</div>
</div>




<map name="mapS.png"><area shape="circle" coords="280,280,280" href="" target="" alt="딸기" /></map>
<map name="mapB.png"><area shape="circle" coords="280,280,280" href="" target="" alt="바나나" /></map>
<map name="mapG.png"><area shape="circle" coords="280,280,280" href="" target="" alt="포도" /></map>
<map name="mapC.png"><area shape="circle" coords="280,280,280" href="" target="" alt="초코크림" /></map>
<map name="mapF.png"><area shape="circle" coords="280,280,280" href="" target="" alt="생크림" /></map>
</div>
