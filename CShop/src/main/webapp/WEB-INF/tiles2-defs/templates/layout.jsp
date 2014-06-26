<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="/controller/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/controller/resources/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" type="text/css" href="/controller/resources/css/style.css" />
	<script type="text/javascript" src="/controller/resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/controller/resources/js/bootstrap.min.js"></script>
	<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="body">
		<tiles:insertAttribute name="body" />
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>
