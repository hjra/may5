<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.advanceo {padding-top: 100px; }
#modal-background {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: white;
	opacity: .50;
	-webkit-opacity: .5;
	-moz-opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 1000;
}

#modal-content {
	background-color: white;
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	box-shadow: 0 0 20px 0 #222;
	-webkit-box-shadow: 0 0 20px 0 #222;
	-moz-box-shadow: 0 0 20px 0 #222;
	display: none;
	height: 400px;
	left: 50%;
	margin: -120px 0 0 -160px;
	padding: 10px;
	position: fixed;
	top: 30%;
	width: 400px;
	z-index: 1000;
}

#modal-background.active,#modal-content.active {
	display: block;
}




.dragCream,.dragTop {
	float: left;
	width: 70px;
	height: 70px;
	margin: 10px 2%;
	cursor: move;
}

.dragImg {
	float: left;
	width: 80px;
	height: 80px;
	margin: 10px 2%;
}

#itemImage {
	width: 300px;
	height: 300px;
}

.selected {
	/* background-color: white; */
	/* ie를 제외한 최신 웹브라우저*/
	background: none rgba(0, 0, 0, 0.1);
	/* ie전용 백그라운드 필터 */
	filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000',
		endColorstr='#80000000');
	color: Black;
	width: 90px;
	height: 90px;
	-webkit-border-radius: 45px;
	-moz-border-radius: 45px;
	border-radius: 45px;
}

.drop {
	background-color: #e1b992;
	color: White;
	height: 190px;
	padding: 10px;
	border-radius: 2em;
	margin-top: 20px;
}

#itemBasket {
	background-color: white;
	color: White;
	height: 200px;
	padding: 10px;
	border-radius: 2em;
}

.active {
	background-color: #efd59b;
	cursor: crosshair;
}

.testDiv {
	color: black;
}

#sizeS {
	width: 60px;
	height: 60px;
	right: 20%;
}

#sizeM {
	width: 50px;
	height: 50px;
	right: 53%;
}

#sizeL {
	width: 40px;
	height: 40px;
	right: 80%;
}

#creamImg{
	position:absolute;
	width: 70px;
	height: 70px;
	bottom: 0;
	left: 250px;
}

.sizeRadio {
	position: relative;
	width: 280px;
	height: 50px;
}
.sizeImgRadio {
	position: absolute;
	bottom: 0;
}



</style>

<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.mobiledragdrop.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$(function(){
		var cbox = $('#cream')[0];

		$('#creamImg').click(function() {
		    cbox.checked = !cbox.checked;
		    this.src = (cbox.checked)?
		    		"/CShop/resources/img/cake/CreamC.png"
		    		:"/CShop/resources/img/cake/CreamF.png";
			});	
	});	
	
	$(".dragTop").mobiledraganddrop({
		targets : "#dropTop, #itemBasket",
		status : "#status"
	});
	$("#btnChoice").click(function() {
		$('#choiceItem').html('');
		$('#choiceItem2').html('');
		var sizeId = $('input:radio[name=size]:checked').attr('value');
		var creamId = $('input:checkbox[id=cream]').attr("checked")? '2':'1';
		/* alert("선택된 크기: " + sizeId+"\n선택된 크림: " + creamId); */

		var topLen = $('#dropTop > .dragTop > .dragImg').length;
		/* alert("선택된 토핑 수: " + topLen); */

		var toppingList = $.map($('#dropTop > .dragTop > .dragImg'),function(n, i) {
			return n.id;
		});
		/* alert("toppingList: " + toppingList); */
		var toppingId = toppingList.sort().join('');
		/* alert("배열 join 결과: " + toppingId); */

		/* var strId = toppingList.replace(",","");
		 alert(", 삭제 결과: "+strId); */
		/* $("<input type='text' name='itemId' value='"
			+ toppingList.sort() +"'>").insertAfter('#choiceItem'); */

		$('#choiceItem').append("<input type='hidden' name='itemId' value='"
			+ sizeId + creamId + toppingId + "'>");
		$('#choiceItem2').append("<img id='itemImage' src='/CShop/resources/img/cake/"
				+ sizeId + creamId + toppingId + "1.png'>");
	});
	
	$(function(){
	    $("#btnChoice, #modal-background, #modal-close").click(function() {
	        $("#modal-content, #modal-background").toggleClass("active");
	    });
	});
	
	
});
function setImageRadio(){
	document.getElementById('sizeL').src=
	(document.getElementsByName('size')[0].checked==true)?"/CShop/resources/img/cake/L2.png":"/CShop/resources/img/cake/L1.png";

	document.getElementById('sizeM').src=
	(document.getElementsByName('size')[1].checked==true)?"/CShop/resources/img/cake/M2.png":"/CShop/resources/img/cake/M1.png";

	document.getElementById('sizeS').src=
	(document.getElementsByName('size')[2].checked==true)?"/CShop/resources/img/cake/S2.png":"/CShop/resources/img/cake/S1.png";
}
</script>



<div id="modal-background"></div>
<div id="modal-content">
	<f:form action="orderDetail.do" method="post">
		<div id="choiceItem"></div>
		<div id="choiceItem2"></div>
		
		<br/>
		<input type="submit" value="주문하기"><input type="button" value="돌아가기" id="modal-close">
	</f:form>
	
</div>

<div class="row-fluid">
	<div class="col-xs-12">
		<input type="button" value="선택한 케익  보기" id="btnChoice">
	</div>
</div>


<div class="clearfix"></div>
<br>
<div id="how">
	<div class="row-fluid">
		<div class="col-sm-12">
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
				
				<div class="creamCheck">
					<img id="creamImg" src = "/CShop/resources/img/cake/CreamF.png" />
					<input type="checkbox" id="cream" style="visibility:hidden;"/>
				</div>
			</div>
		</div>
	</div>

	
			
	<div class="row-fluid">
		<div class="col-sm-6">
			<div class="drop" id="dropTop" style="position: relative;">
				<div style="clear: both;">
					<p>토핑을 선택해 주세요♥</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<br>
			<div id="itemBasket">
				<div class="dragTop" id="s1">
					<img id="S" class="dragImg" usemap="#mapS.png"
						src="/CShop/resources/img/cake/TopS.png">
				</div>
				<div class="dragTop" id="s2">
					<img id="S" class="dragImg" usemap="#mapS.png"
						src="/CShop/resources/img/cake/TopS.png">
				</div>
				<div class="dragTop" id="s3">
					<img id="S" class="dragImg" usemap="#mapS.png"
						src="/CShop/resources/img/cake/TopS.png">
				</div>
				<div class="dragTop" id="b1">
					<img id="B" class="dragImg" usemap="#mapB.png"
						src="/CShop/resources/img/cake/TopB.png">
				</div>
				<div class="dragTop" id="b2">
					<img id="B" class="dragImg" usemap="#mapB.png"
						src="/CShop/resources/img/cake/TopB.png">
				</div>
				<div class="dragTop" id="b3">
					<img id="B" class="dragImg" usemap="#mapB.png"
						src="/CShop/resources/img/cake/TopB.png">
				</div>
				<div class="dragTop" id="g1">
					<img id="G" class="dragImg" usemap="#mapG.png"
						src="/CShop/resources/img/cake/TopG.png">
				</div>
				<div class="dragTop" id="g2">
					<img id="G" class="dragImg" usemap="#mapG.png"
						src="/CShop/resources/img/cake/TopG.png">
				</div>
				<div class="dragTop" id="g3">
					<img id="G" class="dragImg" usemap="#mapG.png"
						src="/CShop/resources/img/cake/TopG.png">
				</div>
			</div>
		</div>
	</div>
</div>



<map name="mapS.png"><area shape="circle" coords="280,280,280" href="" target="" alt="딸기" /></map>
<map name="mapB.png"><area shape="circle" coords="280,280,280" href="" target="" alt="바나나" /></map>
<map name="mapG.png"><area shape="circle" coords="280,280,280" href="" target="" alt="포도" /></map>
<map name="mapC.png"><area shape="circle" coords="280,280,280" href="" target="" alt="초코크림" /></map>
<map name="mapF.png"><area shape="circle" coords="280,280,280" href="" target="" alt="생크림" /></map>






