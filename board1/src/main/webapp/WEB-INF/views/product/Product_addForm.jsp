<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 등록</title>
	<link rel="stylesheet" type="text/css" href="./css/reset.css">
	<link rel="stylesheet" type="text/css" href="./css/common.css">
	<link rel="stylesheet" type="text/css" href="./css/style.css">
<script type="text/javascript">

function goFirstForm() {
	location.href="MainForm.do";
}	

</script>
</head>
<body>
<div id="sidebar">
 <%@ include file="../include/sidebar.jsp" %>
</div>
<div style="margin-left: 61px;">
   <form method="post">

<label>제품 명</label>
<input type="text" name=pname /><br />

<label>카테고리</label>
<input type="text" name="category" /><br />

<label>가격</label>
<input type="text" name="product_price" /><br />

<label>초기 재고</label>
<input type="text" name="quantity" /><br />

<button type="submit">작성</button>

</form>
      </div>
</body>
</html>