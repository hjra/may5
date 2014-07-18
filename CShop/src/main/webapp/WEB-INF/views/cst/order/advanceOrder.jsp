<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>예약주문페이지</h1>
<f:form action="orderDetail.do" method="post">
	<input type="submit" value="다음">
</f:form>
<br>

<style type="text/css">
/* Recommended styles */
/* 	.drag,.drag2 {
	float: left;
	width: 21%;
	background-color: Green;
	color: White;
	margin: 10px 2%;
	cursor: move;
	border-radius: 2em;
}  */

.drag1,.drag2 {
	float: left;
	width: 70px;
	height: 70px;
	margin: 10px 2%;
	cursor: move;
} 

.dragImg{float:left; width:80px; height:80px; margin: 10px 2%;}

.selected {
	/* background-color: white; */
	/* ie를 제외한 최신 웹브라우저*/
	background: none rgba(0, 0, 0, 0.1);
	/* ie전용 백그라운드 필터 */
	filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');
	color: Black;
	width: 90px;
	height: 90px;
	-webkit-border-radius:45px;
	-moz-border-radius:45px;
	border-radius:45px;
}

.drop {
	background-color: #e1b992;
	color: White;
	width: 50%;
	height: 200px;
	margin: 3px;
	padding: 10px;
	border-radius: 2em;
}

#itemBasket {
	background-color: skyblue;
	color: White;
	width: 50%;
	height: 200px;
	margin: 3px;
	padding: 10px;
	border-radius: 2em;
}

.active {
	background-color: #efd59b;
	cursor: crosshair;
}
</style>

<div id="how">
	<div class="drop" id="drop1" style="position:relative;">
		<div style="clear: both;">
			<p>크림을 선택해 주세요♥</p>
		</div>
	</div>
	<div class="drop" id="drop2" style="position:relative;">
		<div style="clear: both;">
			<p>토핑을 선택해 주세요♥</p>
		</div>
	</div>
	
	<div id="itemBasket" >
		<div class="drag1" id="cC"><img id="creamC" class="dragImg" usemap="#mapC.png" src="/CShop/resources/img/cake/CreamC.png"></div>
		<div class="drag1" id="cF"><img id="creamF" class="dragImg" usemap="#mapF.png" src="/CShop/resources/img/cake/CreamF.png"></div>
	
		<div class="drag2" id="tB1"><img id="topB" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		<div class="drag2" id="tB2"><img id="topB" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		<div class="drag2" id="tB3"><img id="topB" class="dragImg" usemap="#mapB.png" src="/CShop/resources/img/cake/TopB.png"></div>
		
		<div class="drag2" id="tS1"><img id="topS" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>
		<div class="drag2" id="tS2"><img id="topS" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>
		<div class="drag2" id="tS3"><img id="topS" class="dragImg" usemap="#mapS.png" src="/CShop/resources/img/cake/TopS.png"></div>
		
		<div class="drag2" id="tG1"><img id="topG" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
		<div class="drag2" id="tG2"><img id="topG" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
		<div class="drag2" id="tG3"><img id="topG" class="dragImg" usemap="#mapG.png" src="/CShop/resources/img/cake/TopG.png"></div>
	</div>
	
	
	<div style="clear: both">&nbsp;</div>
</div>
<input type="button" value="test" id="test">

<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.mobiledragdrop.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".drag1").mobiledraganddrop({
			targets : "#drop1, #itemBasket",
			status : "#status"
		});
		$(".drag2").mobiledraganddrop({
			targets : "#drop2, #itemBasket",
			status : "#status"
		});
		$("#test").click(function(){
			var creamId = $('#drop1 > .drag1 > .dragImg').attr('id');
			alert("선택된 크림: "+creamId);
			var toppingId = $('#drop2 > .drag2 > .dragImg').attr('id').length;
			alert("선택된 토핑"+toppingId);
			
			
		      $.show($("#how").text("테스트입니다."));
		});	
	});
</script>





<map name="mapB.png"><area shape="circle" coords="280,280,280" href="" target="" alt="바나나" /></map>
<map name="mapS.png"><area shape="circle" coords="280,280,280" href="" target="" alt="딸기" /></map>
<map name="mapG.png"><area shape="circle" coords="280,280,280" href="" target="" alt="포도" /></map>
<map name="mapC.png"><area shape="circle" coords="280,280,280" href="" target="" alt="초코크림" /></map>
<map name="mapF.png"><area shape="circle" coords="280,280,280" href="" target="" alt="생크림" /></map>


<!-- <style>
#afterItemBasket {width:400px;height:400px;;border:1px solid #aaaaaa; float:left; display: inline-block;}
#beforeItemBasket {width:400px;height:400px;padding:10px;border:1px solid #aaaaaa; display: inline-block;}
.dragImg {}
</style>
<script>
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("Text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("Text");
    ev.target.appendChild(document.getElementById(data));
}
</script>

<div id="afterItemBasket" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<br>

<div id="beforeItemBasket" ondrop="drop(event)" ondragover="allowDrop(event)">
	<img id="drag1" class="dragImg" usemap="#TopB.png" src="/CShop/resources/img/cake/TopB.png" draggable="true" ondragstart="drag(event)" width="100" height="100">
	<img id="drag2" class="dragImg" usemap="#TopS.png" src="/CShop/resources/img/cake/TopS.png" draggable="true" ondragstart="drag(event)" width="100" height="100">
	<img id="drag3" class="dragImg" usemap="#TopG.png" src="/CShop/resources/img/cake/TopG.png" draggable="true" ondragstart="drag(event)" width="100" height="100">
</div>
 -->
<!-- 
-------------------------------------- 테스트 중 ----------------------------------------<br><br>
  <script type="text/javascript">
 
    function onDragStart(event){
      document.getElementById("msg").innerHTML += "onDragStart->";
     
      //드래그 대상 요소가 option 일 경우에만 가능토록 함
      if(event.target.tagName.toLowerCase() == "option"){
     
        //dataTransfer 객체에 이동할 요소의 ID를 "selectOption"라는 이름으로 등록함
        event.dataTransfer.setData("selectOption", event.target.id);
      }
      else{
        //만일 드래그 대상 요소가 option이 아닐 경우 취소함
        event.preventDefault();
      }
    }       
   
    function onDragEnter(event){
      document.getElementById("msg").innerHTML += "onDragEnter->";
     
      //드래그 대상이 selectOption 일 경우에만 드롭 가능토록 설정함
      var types = event.dataTransfer.types;
      for(var i = 0; i < types.length; i++){
        if(types[i] == "selectOption"){
          event.preventDefault();
          return;
        }
      }
    }
   
    function onDragOver(event){
      document.getElementById("msg").innerHTML += "onDragOver->";
     
      //드롭이 가능하도록 기본 상태를 취소함
      event.preventDefault();
    }       
   
    function onDrop(event){  
      document.getElementById("msg").innerHTML += "onDrop";  
     
      //dataTransfer 객체로 부터 데이터를 꺼내옴
      var id = event.dataTransfer.getData("selectOption");
     
      //현재 문서객체에서 해당 요소를 가져옴
      var optionElement = document.getElementById(id);
     
      //데이터가 존재하고 드래그 대상과 드롭 대상이 같지 않을 경우 드롭 실행
      if(optionElement && optionElement.parentNode != event.currentTarget){
        //드래그 대상에서 이동할 데이터 삭제
        optionElement.parentNode.removeChild(optionElement);
       
        //드롭 대상에 데이터 추가
        event.currentTarget.appendChild(optionElement);
      }
           
      //드롭 완료 후 이벤트 버블링을 막기 위해 호출           
      event.stopPropagation();
           
    }
   
  </script>
 
         
    드래그 대상 요소
    <select size= 4 id="select1" ondragstart="onDragStart(event)">
      <option id="option1_1" draggable="true">옵션1-1</option> 드래그 데이터
      <option id="option1_2" draggable="true">옵션1-2</option> 드래그 데이터
      <option id="option1_3" draggable="true">옵션1-3</option> 드래그 데이터
    </select>
   
    드롭 대상 요소
    <select size= 4 id="select2"
       ondragenter="onDragEnter(event)"
      ondragover="onDragOver(event)"
      ondrop="onDrop(event)">
      <option id="option2_1">옵션2-1</option>
      <option id="option2_2">옵션2-2</option>
      <option id="option2_3">옵션2-3</option>
    </select>
   
    <br><br><div id="msg"></div>
   
-------------------------------------- 테스트 중 ----------------------------------------<br><br> -->