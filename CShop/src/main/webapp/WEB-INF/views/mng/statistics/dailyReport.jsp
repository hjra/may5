<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<style>
li.stt {
	display: inline-block;
	width: 100px;
	height: 100px;
	border: 1px solid #ddd;
}
</style>
일일현황
<br>
<ul>
<li class="stt"><a href="orderReport.do">판매분석</a>
${getOrderCount}
</li>

<li class="stt"><a href="menuReport.do">메뉴분석</a>
${getDailyCountForMenu}
</li>
</ul>
<ul>
<li class="stt"><a href="salesReport.do">매출분석</a></li>

<li class="stt"><a href="memberReport.do">고객분석</a>
${getCustomerResCount}
</li>
</ul>
