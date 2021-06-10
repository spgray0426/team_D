<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	  table {
    width: 90%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  cent{
  text-align: sticky;
  
  }
 
  .wdh{
  	
  	text-align :left;
	  margin:0;
  
  	
  }
  
  .button{
	width:70px;
	height: 20px;
	color:#fff;
	background: #301D32;
	font-size: 16px;
	border:none;
	border-radius: 20px;
	box-shadow: 0 4px 16px rgba(0,79,255,0.3);
	transition:0.3s;
	
	
}
.button:focus {
	outline:0;
}
.button:hover{
	background: #CB7ED7;
	cursor: pointer;
	
}

  .button2{
	width:90px;
	height: 35px;
	color:#fff;
	background:#6F12CD;
	font-size: 16px;
	border:none;
	border-radius: 10px;
	
	transition:0.3s;
	
	float :right;
	margin-right: 3%;
	margin-bottom: 6px;
}
.button2:focus {
	outline:0;
}
.button2:hover{
	background: #CB7ED7;
	cursor: pointer;
	
}
  .button3{
	width:70px;
	height: 28px;
	color:#fff;
	background:#3100CE;
	font-size: 16px;
	border:none;
	border-radius: 10px;
	
	transition:0.3s;
	
	
}
.button3:focus {
	outline:0;
}
.button3:hover{
	background: #8362F0;
	cursor: pointer;
	
}

select { width:90px; height:30px; font-size:13px; border:2px solid #ddd; 
background:url(../img/down_arrow.png) no-repeat right 10px center;

appearance: none; -webkit-appearance: none;}
select::-ms-expand { display:none; }






</style>
<script type="text/javascript">
		function writeForm(){
			location.href="Product_addForm";
		}
		function popup(num,name){
			var id='${sessionScope.sessionID}';
			
            var url = "Product_popup?num="+num+"&id="+id;
            var name = "popup test";
            var popupX = (document.body.offsetWidth / 2) - (200 / 2);
          //&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

          	var popupY= (window.screen.height / 2) - (300 / 2);
          //&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
 			var option = "status=no width = 300, height = 100,left="+ popupX + ", top="+ popupY+", location = no";
			
            window.open(url, name, option);
        }
	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="sidebar">
 <%@ include file="../include/sidebar.jsp" %>
</div>
<div style="margin-left: 61px;">
<div style="float: left; width: 100px; height:100%; display:inline-block;"></div>
<br>
<br>
	<h3 style=" text-align: left;"><font size="6" color="gray" >제품 목록</font></h3>
	<br><br>
	
	<div >
        <form class="wdh" method="post">
            <select name="opt">
                <option value="0">제품 번호</option>
                <option value="1">제품 명</option>
                <option value="2">카테코리</option>
               
            </select>
            <input type="text" size="20" name="condition" style="border:2px solid #89878B; height:29px; width: 250px; " />&nbsp;
            <input type="submit" value="검색" class="button3"/>
        </form>    
   
	
		<c:if test="${member.uid!=null}">
			<input type="button" value="제품 등록" onclick="writeForm()" class="button2">
		</c:if>	
		<br>
	</div>
	
	<br>
	<div >
		<table class="cent">	
		<tr align="center">
			<td id=title>제품번호</td>
			<td id=title>제품명</td>
			<td id=title>카테고리</td>
			<td id=title>수량</td>
			<td id=title>가격</td>
			<c:if test="${member.uid!=null}">
			<td id=title>   </td>
			</c:if>
		</tr>
		
		
		<c:forEach var="productlist" items="${productlist}">
			<tr>
				<td>${productlist.bno}</td>
				<td><a href="/product/ProductDetailForm?bno=${productlist.bno}">${productlist.pname}</a></td>
				<td>${productlist.category}</td>
				<td>${productlist.quantity}</td>
				<td>${productlist.product_price}</td>
				<c:if test="${member.uid!=null}">
				<td><input type="button" value="입력" class="button" onclick="popup(${productlist.product_number});" /></td>
				</c:if>
			</tr>
		</c:forEach>	
	</table>
</div>
</div>
</body>
</html>