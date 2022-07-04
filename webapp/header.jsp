<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인벤 정리</title>
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"
	rel="stylesheet">
</head>
<body>

	<c:set var="session" value="${login_session }" scope="session" />
	<c:if test="${session ne null }">
		<a href="#" id="ts">
      ${session.name }<br>
			${session.grade_name }
		</a>
		<a class="btn btn-success" href="/login/logout">Log out</a>
	</c:if>
	<c:if test="${session eq null }">
	 <a href="#" id="ts"></a>
	</c:if>

	<div class="container-fluid mt-3">
		<div class="mt-4 p-5 bg-primary text-white text-center rounded">
			<h1>인벤 정리</h1>
			<p>재고관리 & 파트너 명부</p>
		</div>

		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="container-fluid col">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" href="/main.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="/invt/list?classifi=100&vendor=110">재고</a></li>
					<li class="nav-item"><a class="nav-link" href="/pnr/list">고객</a></li>
					<li class="nav-item"><a class="nav-link" href="#">운영</a></li>
				</ul>
				<form class="d-flex">
					<div class="form-floating" style="margin-right: 15px">
						<input type="text" class="form-control"
							style="margin-right: 100px" id="email" placeholder=" "
							name="email"> <label for="email">Serial Number</label>
					</div>
					<button class="search-btn btn btn-primary" type="button">Search</button>
				</form>
			</div>
		</nav>

	</div>
	
<!-- 	<script>
    const test = '<c:out value="${login_session}"/>';
  </script>
	<script src="/resources/js/header.js"></script> -->