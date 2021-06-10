<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>제품정보 수정</title>

</head>
<body>
<div id="sidebar">
 <%@ include file="../include/sidebar.jsp" %>
</div>
<div style="
    margin-left: 61px;
">
<form method="post">
<label>제품 명</label>
<input type="text" name="pname" value="${pview.pname}"/><br/>

<label>카테고리</label>
<input type="text" name="category" value="${pview.category}"/><br/>

<label>가격</label>
<input type="text" name="product_price" value="${pview.product_price}" /><br/>

<label>남은 개수</label>
<input type="text" name="quantity" value="${pview.quantity}" /><br/>


<button type="submit">수정</button>
</form>
</div>
</body>
</html>