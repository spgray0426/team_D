<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/sidebar.js"></script>
<link rel="stylesheet" href="/resources/css/normalize.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/sidebar.css">

</head>
<body>
	<div class="navigation">
		
			<ul>
				<li>
					<a href="/">
						<span class="icon"><i class="fa fa-home" aria-hidden="true"></i></span>
						<span class="title">Home</span>
					</a>
				
				</li>
				<c:if test="${member!=null}">
				<li>
					<a href="/product/Product_addForm">
						<span class="icon"><i class="fa fa-pencil" aria-hidden="true"></i></span>
						<span class="title">제품 등록</span>
					</a>
				
				</li>
				</c:if>
				<li>
					<a href="/product/productlistPage?num=1">
						<span class="icon"><i class="fa fa-list-alt" aria-hidden="true"></i></span>
						<span class="title">제품 목록</span>
					</a>
				
				</li>
				  <c:if test="${member==null}">
				 <li>
					<a href="/member/register">
						<span class="icon"><i class="fa fa-history" aria-hidden="true"></i></span>
						<span class="title">회원가입</span>
					</a>
				
				</li>
				</c:if>
				<!-- <li>
					<a href="/product/productlistPage?num=1">
						<span class="icon"><i class="fa fa-history" aria-hidden="true"></i></span>
						<span class="title">히스토리</span>
					</a>
				
				</li> -->
				<c:if test="${member!=null && member.uid !='admin'}">
				<li>
					<a href="/member/UserInfoForm">
						<span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span>
						<span class="title">내정보</span>
					</a>
				
				</li>
				</c:if>
				<c:if test="${member==null}">
				<li>
					<a href="/member/login">
						<span class="icon"><i class="fa fa-unlock" aria-hidden="true"></i></span>
						<span class="title">로그인</span>
					</a>
				
				</li>
				</c:if>
				<c:if test="${member!=null}">
				<li>
					<a href="/member/logout">
						<span class="icon"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
						<span class="title">로그아웃</span>
					</a>
				
				</li>
				</c:if>
				
			
			</ul>
		
		
		
		</div>
</body>
</html>