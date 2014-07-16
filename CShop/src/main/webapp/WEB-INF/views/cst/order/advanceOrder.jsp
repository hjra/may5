<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>예약주문페이지</h1>
<f:form action="orderDetail.do" method="post">
	<input type="submit" value="다음">
</f:form>
<br>

<style>
#div1 {width:400px;height:400px;padding:10px;border:1px solid #aaaaaa; display: inline-block;}
.dragImg {display: inline-block;}
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

<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<br>
<img id="drag1" class="dragImg" src="/CShop/resources/img/cake/TopB.png" draggable="true" ondragstart="drag(event)" width="100" height="100">
<img id="drag2" class="dragImg" src="/CShop/resources/img/cake/TopS.png" draggable="true" ondragstart="drag(event)" width="100" height="100">
<img id="drag3" class="dragImg" src="/CShop/resources/img/cake/TopG.png" draggable="true" ondragstart="drag(event)" width="100" height="100">





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