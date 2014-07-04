/<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>

<style>
	#thumbnail-view {
			border:1px solid #ddd;
			height:300px;
		}
		#thumbnail-items .img-thumbnail{
			height:60px;
		}
		#info-table input[type=text],#info-table textarea{
			display:block;
			width:100%;
		}
		#info-table textarea{
			resize:none;
			height:260px;
		}
</style>
<script>
$(document).on("click","form button",function(e){
	if($(this).hasClass("submit-button")){
		alert("form!");
	} else {
		return false;
	}
});
</script>
<h1>상품등록</h1>
<hr/>
<form method="post" action="http://sample.open9.net/callback/submit_data">
	<div class="row">
		<div class="col-xs-6">
			<div id="thumbnail-view">
				이미지
			</div>
			<br/>
			<div id="thumbnail-items" class="row">
				<div class="col-xs-2">
					<img class="img-thumbnail full-width">
					<div>
						<button class="btn btn-default btn-sm full-width">찾기</button>
					</div>
				</div>
				<div class="col-xs-2">
					<img class="img-thumbnail full-width">
					<div>
						<button class="btn btn-default btn-sm full-width">찾기</button>
					</div>
				</div>
				<div class="col-xs-2">
					<img class="img-thumbnail full-width">
					<div>
						<button class="btn btn-default btn-sm full-width">찾기</button>
					</div>
				</div>
				<div class="col-xs-2">
					<img class="img-thumbnail full-width">
					<div>
						<button class="btn btn-default btn-sm full-width">찾기</button>
					</div>
				</div>
				<div class="col-xs-2">
					<img class="img-thumbnail full-width">
					<div>
						<button class="btn btn-default btn-sm full-width">찾기</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-6">
			<table id="info-table" class="table table-bordered">
				<tbody>
					<tr>
						<th>규격</th>
						<td>
							<lable>크기
								<select name="item_size">
									<option value="s">1호</option>
									<option value="m">2호</option>
									<option value="l">3호</option>
								</select>
							</lable>
							<lable>크림
								<select name="item_cream">
									<option value="1">생크림</option>
									<option value="2">초코크림</option>
								</select>
							</lable>
						</td>
					</tr>
					<tr>
						<th>토핑</th>
						<td>
							<label>토핑1
								<select name="item_fruit1">
									<option value="s">딸기</option>
									<option value="b">바나나</option>
									<option value="g">포도</option>
								</select>
							</label>
							<label>토핑2
								<select name="item_fruit2">
									<option value="s">딸기</option>
									<option value="b">바나나</option>
									<option value="g">포도</option>
								</select>
							</label>
							<label>토핑3
								<select name="item_fruit3">
									<option value="s">딸기</option>
									<option value="b">바나나</option>
									<option value="g">포도</option>
								</select>
							</label>
						</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td><input name="item_name" type="text"></td>
					</tr>
					<tr>
						<th>가격</th>
						<td><input name="item_price" type="text"></td>
					</tr>
					<tr>
						<th>칼로리</th>
						<td><input name="item_calorie" type="text"></td>
					</tr>
					<tr>
						<th>상세정보</th>
						<td><textarea name="item_detail"></textarea></td>
					</tr>
				</tbody>
			</table>
			<br />
			<div class="layout">
				<div class="layout-right">
					<button class="btn btn-primary submit-button">등록</button>
				</div>
			</div>
		</div>
	</div>
</form>