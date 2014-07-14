<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jRating.jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jRating.jquery.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jRating.jquery.css" media="screen" />
<style>
	#thumbnail-view {
			border:1px solid #ddd;
			height:300px;
		}
		#big-picture{
			position:absolute;
			width:100%;
			height:300px;
			left:0;
			top:0;
		}
		.img-thumbnail{
			height:60px;
			cursor:pointer;
		}
		.img-thumbnail.active{
			border:3px solid blue; 
		}
		#info-table input[type=text],#info-table textarea{
			display:block;
			width:100%;
		}
		#info-table textarea{
			resize:none;
			height:260px;
		}
		#thumbnail-view{
			position:relative;
		}
#sticker-view {
	position:absolute;
	overflow:hidden;
	margin:0;
	padding:0;
	top:0;
	right:0;
	width:100px;
	height:100px;
	z-index:1;
}

#sticker-view li{
	list-style:none;
	background-color:#753;
	color:white;
	z-index:2;
	position:absolute;
	margin:0;
	padding:0;
	width:100px;
	height:100px;
	text-align:center;
	line-height:100px;
	cursor:pointer;
}

</style>
<script>

$(document).on("click","form button",function(e){
	if(!$(this).hasClass("submit-button")){
		return false;
	}
});
$(document).on("change","#thumbnail-items input[type=file]",function(){
	//불러진 파일의 확장자를 읽어봅니다.
          if( /(\.png|\.jpeg|\.jpg|\.gif|\.bmp)$/.test($(this).val()) ){
          		//FileRender를 사용 가능한 경우
                  if (this.files && this.files[0]) {
                          var reader = new FileReader();
                          var sender = this;
                          reader.onload = function (e) {
                          	$(sender).parents(".thumbnail-item").find("img").attr('src', e.target.result);
                          	console.log("it!",$(sender).parents(".thumbnail-item"),$(sender).parents(".thumbnail-item").find("img"));
                  		}
                          reader.readAsDataURL(this.files[0]);
                  } else {
                  	//FileRender가 불가능한 경우 (대채로 IE구버전)
                  	$(this).parents(".thumbnail-item").find("img").attr('src', $(this).val());
                  }
          } else {
          	//파일 확장자가 올바르지 않은경우
          	alert("썸네일은 반드시 이미지여야 합니다.");
          	$(this).val("");
          }}
);

//썸내일 이미지 선택시 큰 이미지로
$(document).on("click","#thumbnail-items .img-thumbnail",function(){
	if( $(this).is(".active") ) return false;
	var src = $(this).attr("src");
	if(src)if(src.trim().length>1){
		$("#big-picture").attr("src",src);
		$("#thumbnail-items .img-thumbnail").removeClass("active");
		$(this).addClass("active");
	}
});
$(function(){ $("#thumbnail-items .img-thumbnail").eq(0).trigger("click"); });


var activeStikcer = function(){
	var root = $(this).parents("#sticker-view");
	$("#sticker-view-value").val($(this).data("value"));
	root.removeClass("active");
	var selectedIndex = root.find("ul li").index(this);
	root.find("ul li").each(function(index){
		$(this).css("left",( (index-selectedIndex) *100)+"px");
	});
};
$(document).on("click","#sticker-view.editable",function(e){
	if( $(this).is(".active") ){
		e.preventDefault();
		var target = e.target;
		if( $(target).is("li") ) activeStikcer.call(target);
	} else {
		$(this).addClass("active");
	}
});
$(function(){
	//스티커 초기 위치를 잡아줍니다.
	var initItem = parseInt($("#sticker-view-value").val());
	if(typeof initItem!=="number") initItem = 0;
	activeStikcer.call( $("#sticker-view li").eq(initItem) );
});

$(document).ready(function(){
    // simple jRating call
   $(".basic").jRating({
      onClick : function(element,rate) {
       /* alert(rate); */
       grade = rate;
      $('input[name=grade]').attr('value',grade);
      }
   });      
});
</script>





<h1>상품등록</h1>
<hr/>

<!-- 페이지 액션 -->
<c:choose>
<c:when test="${pageAction == 'insert'}">
	<form action="itemInsertProc.do" method="post" enctype="multipart/form-data">
</c:when>
<c:when test="${pageAction == 'modify'}">
	<form action="itemModifyProc.do" method="post" enctype="multipart/form-data">
</c:when>
<c:otherwise>
	<form>
</c:otherwise>
</c:choose>
<!-- 페이지 액션 -->

	<div class="row">
		<div class="col-xs-6">
			<div id="thumbnail-view">
				<div id="sticker-view" class="${pageAction == 'view' ? 'view-mode' : 'editable'}">
					<ul id="sticker-view-display">
						<li data-value="0">없음</li>
						<li data-value="1">BEST</li>
						<li data-value="2">SPECIAL</li>
						<li data-value="3">SALE</li>
					</ul>
					<input id="sticker-view-value" name="STICKER" type="hidden" value="${sticker}" />
				</div>
				<img id="big-picture" src=""/>
			</div>
			<br/>
			<div id="thumbnail-items" class="row">
				<div class="thumbnail-item col-xs-2">
					<img src="/CShop/resources/img/cake/${itemId}1.png" class="img-thumbnail full-width">
				</div>
				<div class="thumbnail-item col-xs-2">
					<img class="img-thumbnail full-width">
					<label class="full-width">
						<input type="file" name="ITEMIMG2" src="${itemImg2 }" class="hidden" />
						<c:if test="${pageAction != 'view'}">
							<span class="btn btn-default btn-sm full-width">찾기</span>
						</c:if>
					</label>
				</div>
				<div class="thumbnail-item col-xs-2">
					<img class="img-thumbnail full-width">
					<label class="full-width">
						<input type="file" name="ITEMIMG3" src="${itemImg3 }" class="hidden" />
						<c:if test="${pageAction != 'view'}">
							<span class="btn btn-default btn-sm full-width">찾기</span>
						</c:if>
					</label>
				</div>
				<div class="thumbnail-item col-xs-2">
					<img class="img-thumbnail full-width">
					<label class="full-width">
						<input type="file" name="ITEMIMG4" src="${itemImg4 }" class="hidden" />
						<c:if test="${pageAction != 'view'}">
							<span class="btn btn-default btn-sm full-width">찾기</span>
						</c:if>
						
					</label>
				</div>
				<div class="thumbnail-item col-xs-2">
					<img class="img-thumbnail full-width">
					<label class="full-width">
						<input type="file" name="ITEMIMG5" src="${itemImg5 }" class="hidden" />
						<c:if test="${pageAction != 'view'}">
							<span class="btn btn-default btn-sm full-width">찾기</span>
						</c:if>
					</label>
				</div>
			</div>
		</div>

		<div class="col-xs-6">
			<table id="info-table" class="table table-bordered">
				<tbody>
					<tr>
						<th>규격</th>
						<td>
						itemId::${itemId }
							<input type="hidden" name="itemId" value="${itemId }">
							<c:choose>
								<c:when test="${pageAction == 'view' || pageAction == 'modify'}">
									크기 : ${item_size} / 크림 : ${ item_cream}
									<!-- 수정을 위한 input입니다 -->
									<input type="hidden" name="item_size" value="${item_size}">
									<input type="hidden" name="item_cream" value="${ item_cream}">
								</c:when>
								<c:otherwise>
									<label>크기
										<select name="item_size">
											<option value="X">4호</option>
										</select>
									</label>
									<label>크림
										<select name="item_cream">
											<option value="1">생크림</option>
											<option value="2">초코크림</option>
										</select>
									</label>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>토핑</th>
						<td>
							<c:choose>
								<c:when test="${pageAction == 'view' || pageAction == 'modify'}">
									토핑 : ${item_fruit1}, ${item_fruit2}, ${item_fruit3}
									<!-- 수정을 위한 input입니다 -->
									<input type="hidden" name="item_fruit1" value="${item_fruit1}">
									<input type="hidden" name="item_fruit2" value="${item_fruit2}">
									<input type="hidden" name="item_fruit3" value="${item_fruit3}">
								</c:when>
								<c:otherwise>
									<label>토핑1
										<select name="item_fruit1">
											<option value="S">딸기</option>
											<option value="B">바나나</option>
											<option value="G">포도</option>
										</select>
									</label>
									<label>토핑2
										<select name="item_fruit2">
											<option value="S">딸기</option>
											<option value="B">바나나</option>
											<option value="G">포도</option>
										</select>
									</label>
									<label>토핑3
										<select name="item_fruit3">
											<option value="S">딸기</option>
											<option value="B">바나나</option>
											<option value="G">포도</option>
										</select>
									</label>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>
							<c:choose>
								<c:when test="${pageAction == 'view'}">
									[${itemId}] ${itemName}
								</c:when>
								<c:otherwise>
									<input name="ITEMNAME" type="text" value="${itemName}">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>가격</th>
						<td>
							<c:choose>
								<c:when test="${pageAction == 'view'}">
									${price}
								</c:when>
								<c:otherwise>
									<input name="PRICE" type="text" value="${price}">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>칼로리</th>
						<td>
							<c:choose>
								<c:when test="${pageAction == 'view'}">
									${itemCalorie }
								</c:when>
								<c:otherwise>
									<input name="ITEMCALORIE" type="text" value="${itemCalorie}">
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>상세정보</th>
						<td>
							<c:choose>
								<c:when test="${pageAction == 'view'}">
									${itemInfo}
								</c:when>
								<c:otherwise>
									<textarea name="ITEMINFO">${itemInfo}</textarea>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</tbody>
			</table>
			<c:choose>
				<c:when test="${pageAction == 'view'}"></c:when>
				<c:otherwise>
					<div class="layout">
						<div class="layout-right">
							<button class="btn btn-primary submit-button">등록</button>
						</div>
					</div>
					<br />
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</form>


<c:choose>
	<c:when test="${pageAction == 'view'}">
		<br/>
		<br/>
		<div class="row-fluid">
			<form action="commentProc.do" method="post">
				<input type="hidden" name="cstCode" value="${sessionScope.cstLogin.cstCode}">
					<%
						int i = 0;
					%>
					<table class="table table-bordered">
						<tr>
							<td colspan="6">평점 및 댓글</td>
						</tr>
						<tr>
							<td width="66px">번호
														<input type="hidden" name="itemId" value="${itemId }">
							</td>
							<!-- <td width="100px"><label>평점</label> 
								<select name="grade" id="grade">
									<option value="5">★★★★★</option>
									<option value="4">★★★★☆</option>
									<option value="3">★★★☆☆</option>
									<option value="2">★★☆☆☆</option>
									<option value="1">★☆☆☆☆</option>
								</select></td> -->
										<td>
   <!-- in this exemple, 12 is the average and 1 is the id of the line to update in DB -->
   <div class="basic" data-average="5" data-id="1"  >
   <input id="grade" type="hidden" name="grade"/></div>
      </td>
							<c:choose>
								<c:when test="${sessionScope.cstLogin.cstId == null }">
								<td><input type="text" maxlength="300" style="width: 300px"
								placeholder="의견을 등록하시려면 먼저 로그인을 해주세요" readonly></td>
								</c:when>
								<c:otherwise>
							<td>
							<input type="text" id="evaluationContents" name="evaluationContents" maxlength="300" style="width: 300px"
								placeholder="의견을 140자 이내로 적어주세요"></td>
								</c:otherwise>
								</c:choose>
							<td>${sessionScope.cstLogin.cstId}</td>
							
							<td align="center">
							<input type="IMAGE" name="Submit" value="Submit"  ${sessionScope.cstLogin.cstId == null?" disabled":"" }
							src="/CShop/resources/img/button/comment.png">
</td>
							<c:choose>
								<c:when test="${sessionScope.cstLogin.cstId == null }">
									<!-- <td width="100px" align="center">
									<a href="loginProc.do" class="classname">로긴</a></td> -->
								</c:when>
								<c:otherwise>
									<td width="40px">삭제
								</td>
								</c:otherwise>
							</c:choose>
						</tr>
				
						<c:forEach var="board" items="${evaluationList}">
							<%
								i++;
							%>
							<tr height="35px" >
								<td align="center">${board.evaluationIndex}</td>
								<td align="center">
								<c:choose>
										<c:when test="${board.grade ==5}">
										<img src="/CShop/resources/img/stars/5.png" style="width: 100px">
							</c:when>
										<c:when test="${board.grade ==4}">
										<img src="/CShop/resources/img/stars/4.png" style="width: 100px">
							</c:when>
										<c:when test="${board.grade ==3}">
										<img src="/CShop/resources/img/stars/3.png" style="width: 100px">
							</c:when>
										<c:when test="${board.grade ==2}">
										<img src="/CShop/resources/img/stars/2.png" style="width: 100px">
							</c:when>
										<c:when test="${board.grade ==1}">
										<img src="/CShop/resources/img/stars/1.png" style="width: 100px">
							</c:when>
									</c:choose></td>
								<td>${board.evaluationContents }</td>
								<td>${board.cstId}</td>
								
								<td align="center">
								<fmt:formatDate value="${board.evaluationDate }" pattern="yyyy-MM-dd" />
								
							
							 <c:choose>
								<c:when test="${sessionScope.cstLogin.cstId == null }">
				
								</c:when>
								<c:when test="${sessionScope.cstLogin.cstCode == board.cstCode }">
								<td align="center">
									<img src="/CShop/resources/img/button/delete.png" onclick="location.href='evaluationDelete.do?evaluationIndex=${board.evaluationIndex}&itemId=${itemId}'">
								</td>
								</c:when>
								<c:otherwise>
								<td></td>
								</c:otherwise>
							</c:choose>
							</tr>
				
						</c:forEach>
				
						<tr>
							<td colspan="6" align="center"><c:if test="${page <= 1 }">[이전]&nbsp; </c:if>
								<c:if test="${page > 1 }">
									<a href="menuInfo.do?itemId=${itemId }&page=${page-1}">이전</a>&nbsp;</c:if>
									 <c:forEach begin="${startpage }" end="${endpage }" var="a">
									<c:if test="${a==page }">[${a}]</c:if>
									<c:if test="${a!=page }">
										<a href="menuInfo.do?itemId=${itemId }&page=${a}">[${a}]</a>&nbsp;</c:if>
								</c:forEach> <c:if test="${page>=maxpage }">[다음]</c:if> <c:if
									test="${page<maxpage }">
									<a href="menuInfo.do?itemId=${itemId }&page=${page+1}">[다음]</a>
								</c:if></td>
						</tr>
				
				
					</table>
				</form>
		</div><!-- row-fluid -->
	</c:when>
</c:choose>
