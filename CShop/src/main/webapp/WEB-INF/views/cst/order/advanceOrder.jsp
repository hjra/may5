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
.drag,.drag2 {
	float: left;
	width: 21%;
	background-color: Green;
	color: White;
	margin: 10px 2%;
	cursor: move;
	text-align: center;
	-moz-border-radius: 1em;
	-webkit-border-radius: 1em;
	border-radius: 1em;
}

.selected {
	background-color: Yellow;
	color: Black;
}

.drop {
	background-color: Blue;
	color: White;
	margin: 3px;
	padding: 10px;
	-moz-border-radius: 1em;
	-webkit-border-radius: 1em;
	border-radius: 1em;
}

.active {
	background-color: orange;
	cursor: crosshair;
}
</style>

<div id="how">
	<div class="drop" id="drop1">
		<div style="clear: both;">
			<p>You can drop items here.</p>
		</div>
	</div>
	<div class="drop" id="drop2">
		<div style="clear: both;">
			<p>You can drop items here too.</p>
		</div>
	</div>
	<div class="drag" id="drag1">
		<p>Drag 1</p>
	</div>
	<div class="drag" id="drag2">
		<p>Drag 2</p>
	</div>
	<div class="drag" id="drag3">
		<p>Drag 3</p>
	</div>
	<div class="drag2" id="drag4">
		<p>Drag 4*</p>
	</div>
	<div style="clear: both">&nbsp;</div>
</div>

<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.mobiledragdrop.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".drag").mobiledraganddrop({
			targets : ".drop",
			status : "#status"
		});
		$(".drag2").mobiledraganddrop({
			targets : "#drop2",
			status : "#status"
		});
	});
</script>


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


이미지 맵 설정
<map name="TopB.png"><area shape="circle" coords="279,279,279" href="" target="" alt="바나나" /></map>
<map name="TopS.png"><area shape="circle" coords="279,279,279" href="" target="" alt="딸기" /></map>
<map name="TopG.png"><area shape="circle" coords="279,279,279" href="" target="" alt="포도" /></map>
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