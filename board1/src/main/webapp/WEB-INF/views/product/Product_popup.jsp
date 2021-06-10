<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입.출고</title>
</head>
<body>
		<form method="post"  name="prod_pop">
		<input type="hidden" name="bno" value="${param.num}">
		<input type="hidden" name="uid" value="${param.id}">
		<input type="radio" name="remark" value="1"> 입고
		<input type="radio" name="remark" value="2"> 출고
		<input type="radio" name="remark" value="3"> 조정
		<br>
		<input type="number" name="changes"  min="1" max="100000000" step="1">
		
		<input type="submit" value="입력">
		
		</form>
</body>
</html>