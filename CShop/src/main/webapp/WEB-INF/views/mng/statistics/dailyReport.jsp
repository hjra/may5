<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<style>
ul.menu-list {
	list-style: none;
}

li {
	display: inline-block;
	zoom: 1;
	*display: inline;
}

a {
	display: block;
	width: 100px;
	height: 100px;
	border: 1px solid #ddd;
}
</style>
일일현황
<br>
<ul>
<li><a href="/controller/mng/statistics/orderReport.do">판매분석</a></li>
<li><a href="/controller/mng/statistics/rsvReport.do">예약분석</a></li>
</ul>
<ul>
<li><a href="/controller/mng/statistics/salesReport.do">매출분석</a></li>
<li><a href="/controller/mng/statistics/memberReport.do">고객분석</a></li>
</ul>
