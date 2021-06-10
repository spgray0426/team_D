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
<div style="margin-left: 61px;">
<form method="post">
<label>제품 명</label>
${pview.pname}<br/>
<label>카테고리</label>
${pview.category}<br/>
<label>가격</label>
${pview.product_price}<br/>
<label>남은 개수</label>
${pview.quantity}<br/>

<c:if test="${member!=null}">
<div>
<a href="/product/ProductModifyForm?bno=${pview.bno}">제품 수정</a>
<a href="/product/Productdelete?bno=${pview.bno}">제품 삭제</a>
</div>
</c:if>
</form>
</div>

</body>
</html>