<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<html>
<head>

	<title>로그인 화면</title>


	<script type="text/javascript">

		function checkValue()
		{
			inputForm = eval("document.loginInfo");
			if(!inputForm.uid.value)
			{
				alert("아이디를 입력하세요");	
				inputForm.uid.focus();
				return false;
			}
			if(!inputForm.upassword.value)
			{
				alert("비밀번호를 입력하세요");	
				inputForm.upassword.focus();
				return false;
			}
		}
	
		// 취소 버튼 클릭시 첫화면으로 이동
		function goFirstForm() {
			location.href="/";
		}
	</script>

</head>
<body>
<div id="sidebar">
 <%@ include file="../include/sidebar.jsp" %>
</div>
<div style="margin-left: 61px;">
	   <div id="wrap" class="main">
         

		<div id="content" class="content">
			
			<style>
	.login{;padding:0;min-height: 87px;}
	.login .loginboxcombine{display: flex;flex-flow:column;}
	.login .loginbox{display: flex;justify-content:space-between;}
	.login .loginbox .loginInput{flex-basis: 60%;}
	.login .loginbox .loginSubmit{flex-basis: 35%;}
	.login .loginbox .loginInput input{width: 100%;height: 30px;display: inline-block;border: 1px solid #d5d5d5;border-radius: 3px;margin-bottom: 5px;padding-left: 5px;}
	.login .loginbox .loginSubmit input{width:100%;	height : 73px;display: inline-block;border : 1px solid #3a414c;border-radius: 3px;background: #3a414c;font-weight: bold;color: #fff;cursor:pointer;float: left;}
	.login .loginboxcombine .loginSubmit.combine .submit{width: 100%;height: 30px;border: 1px solid #d5d5d5;border-radius: 3px;margin-bottom: 5px;padding-left: 5px;background-color: #3a414c;color: #fff;height: 73px;display: flex;justify-content: center;align-items: center;font:bold 13.3333px arial;}
	.login .loginboxcombine .submit.combine{text-align: center;}
</style>
<div class="sub-right">
	
	<h3>로그인</h3>
	<div class="login" style="height: 120px;">
		<div class="wrapper">
			<form name="loginInfo" id="loginpage" method="post" onsubmit="return checkValue()">
				
				<div class="loginbox">
					<div class="loginInput">
						<input type="text" name="uid" id="uid" class="userid" placeholder="아이디">
						<input type="password" name="upassword" id="upassword" class="passwd" placeholder="비밀번호">
					</div>
					<div class="loginSubmit">
						<input type="submit" value="로그인" class="submit">
					</div>
				</div>
			</form>
			
		</div>
	</div>
	
</div>
		</div>
	
		<%-- 
			// 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
			String loginMsg = (String)request.getAttribute("fail");
			
			if(loginMsg!=null && loginMsg.equals("0")){
				out.println("<br>");
				out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
			}
			else if(loginMsg!=null && loginMsg.equals("-1")){	
				out.println("<br>");
				out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
			}
			
			위의 if 문을 EL과 JSTL로 변경한 것은 아래와 같다. 
		--%>	
		
		<c:set var="failMessage" value="${requestScope.fail}"/>
		<c:if test="${failMessage!=null}">	
			<c:choose>
				<c:when test="${failMessage=='0'}">
					<br><font color='red' size='5'>비밀번호를 확인해 주세요.</font>
				</c:when>
				<c:otherwise>
					<br><font color='red' size='5'>아이디를 확인해 주세요.</font>
				</c:otherwise>
			</c:choose>
		</c:if>
		
	</div>	
</div>
</body>
</html>