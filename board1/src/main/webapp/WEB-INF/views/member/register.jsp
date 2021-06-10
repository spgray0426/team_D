<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		
		
			$("#submit").on("click", function(){
				if($("#uid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#uid").focus();
					return false;
				}
				if($("#upassword").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#upassword").focus();
					return false;
				}
				if($("#uname").val()==""){
					alert("성명을 입력해주세요.");
					$("#uname").focus();
					return false;
				}
				if($("#phone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#phone").focus();
					return false;
				}
				if($("#address").val()==""){
					alert("주소를 입력해주세요.");
					$("#address").focus();
					return false;
				}
				
			});
			
				
			
		})
	</script>
	<body>
		<div id="sidebar">
 <%@ include file="../include/sidebar.jsp" %>
</div>
<div style="margin-left: 61px;">
			<form  method="post">
				<label >아이디</label>
				<input type="text" name=uid id="uid" /><br />
				<label >패스워드</label>
				<input type="text" name=upassword id="upassword" /><br />
				<label >이름</label>
				<input type="text" name=uname id="uname" /><br />
				<label >전화번호</label>
				<input type="text" name=phone id="phone" /><br />
				<label >주소</label>
				<input type="text" name=address id="address" /><br />
			
				
					<button  type="submit" id="submit">회원가입</button>
					<button  type="button"  onclick="location.href='/'">취소</button>
				
			</form>
		
		</div>
	</body>

</html>