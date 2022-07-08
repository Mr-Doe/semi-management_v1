<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인벤 정리</title>
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body>

  <c:set var="session" value="${login_session }" scope="session" />
  
	<div class="container-fluid mt-3">
		<div class="mt-4 p-5 bg-primary text-white text-center rounded">
			<h1>인벤 정리</h1>
			<p>재고 & 고객사 관리</p>
		</div>

		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="container-fluid col">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" href="/main.jsp">홈</a></li>
					<li class="nav-item dropdown">
            <a class="nav-link" data-bs-toggle="dropdown" href="#">재고</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/invt/list?classifi=100&vendor=110">노트북</a></li>
              <li><a class="dropdown-item" href="/invt/list?classifi=200&vendor=210">서버</a></li>
            </ul>
          </li>
					<li class="nav-item"><a class="nav-link" href="/pnr/list">고객</a></li>
					<li class="nav-item dropdown">
            <a class="nav-link" data-bs-toggle="dropdown" href="#">운영</a>
            <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="/adm/mem">계정 목록</a></li>
	            <li><a class="dropdown-item" href="/adm/invt">삭제된 재고</a></li>
            </ul>
          </li>
				</ul>
				<form class="d-flex">
					<div class="form-floating" style="margin-right: 15px">
						<input type="text" class="form-control" style="margin-right: 100px" id="email" placeholder=" " name="email"> 
						<label for="email" style="font-size:12px;">Serial Number(미구현)</label>
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