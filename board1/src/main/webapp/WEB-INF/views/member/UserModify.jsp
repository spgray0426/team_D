<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		
		
		<div id="wrap" class="main">
            	<div id="container" class="container" style="margin-top: 0px;width: 860px;">
		
		
		<div style="clear:both"></div>
		<div id="content" class="content">
			
			




<style>
	.joinForm .wrapper h3 {
    width: 770px;
    margin: 30px 0;
    text-align: center;
    font-size: 20px!important;
    font-weight: bold;
    color: #4d4d4d;
		margin-bottom: 0!important;
		border-bottom: none!important;
	}
	.joinForm .wrapper table{
		border-collapse: collapse;
	}
	.joinForm .wrapper table th {
    padding: 12px 4px 10px 17px;
    border: 1px solid #e8e8e8;
    background-color: #f5f5f5;
    text-align: left;
    font-size: 12px;
    font-weight: normal;
    vertical-align: middle;
}
	.joinForm .wrapper table td {
    padding: 12px 7px 10px;
    word-wrap: break-word;
    border: 1px solid #e8e8e8;
    background-color: #fff;
    font-size: 12px;
    font-weight: normal;
    color: #4d4d4d;
}
</style>
<div class="sub-right">
  <h3>회원정보 수정</h3>
		<div class="joinForm">
			<div class="wrapper">
				
				<form method="post" name="userInfo" >
			
					<table width="770" border="0" cellpadding="0" cellspacing="0">
						<colgroup>
						<col style="width:160px;">
						<col style="width:610px;">
						</colgroup>
						<tbody><tr>
							<th scope="row">아이디 <span class="necessary">*</span> </th>
							<td>${member.uid}</td>
						</tr>
						<tr>
							<th scope="row">비밀번호 <span class="necessary">*</span> </th>
							<td><input type="password" name="upassword" maxlength="50" 
							value="${member.upassword}"></td>
						</tr>
						<tr>
							<th scope="row">이름 <span class="necessary">*</span> </th>
							<td>${member.uname}</td>
						</tr>
						
						<tr>
							<th scope="row">휴대전화 <span class="necessary">*</span> </th>
							<td><input type="text" name="phone" value="${member.phone}"/></td>
						</tr>
						<tr>
							<th scope="row">가맹점 주소 <span class="necessary">*</span> </th>
							<td><input type="text" size="50" name="address"
							value="${member.address}"/></td>
						</tr>
						
						
					</tbody></table>
					<div class="boardWriteBtn">
				<button type="submit" class="regSubmit" value="회원정보수정" style="cursor:pointer;"><i class="fa fa-pencil" aria-hidden="true"></i> 수정하기</button>
			
				<button type="button" id="cancel" onclick="javascript:window.location='UserInfoForm'"><i class="fa fa-list" aria-hidden="true"></i> 취소하기</button>
				
				 </div>
				</form>
				
					
						
				
			</div>
		</div>
	</div>
</div>

		</div>
	</div>
</body>
</html>