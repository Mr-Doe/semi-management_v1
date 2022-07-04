<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인벤 정리</title>
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>

<div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 600px;">
	<h2>로그인</h2>
	<form action="/login/login_auth">
		<div class="form-floating mb-3 mt-3">
			<input type="text" class="form-control" id="account" placeholder=" "
				name="account"> <label>ID</label>
		</div>
		<div class="form-floating mb-3 mt-3">
			<input type="password" class="form-control" id="pwd" placeholder=" "
				name="pwd"> <label>Password</label>
		</div>
		<button type="submit" class="btn-lg btn-primary col-12 mt-3">Log-in</button>
	</form>
</div>

</body>
</html>