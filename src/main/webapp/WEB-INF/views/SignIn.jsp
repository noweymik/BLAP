<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign In</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="./resources/assets/css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
	<!-- HEADER -->
	<nav class="navbar navbar-expand-sm bg-white navbar-light fixed-top border-bottom">
	  <div class="container-fluid">
	      <a href=".">
	      <img src="./resources/assets/img/logo.png" alt="blap Logo" style="width:80px; height:55px">
	     </a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse d-flex justify-content-center" id="collapsibleNavbar" >
		   <ul class="navbar-nav">
		      <li class="nav-item me-5">
		        <a class="nav-link" href="/about">ABOUT</a>
		      </li>
		      <li class="nav-item me-5">
		        <a class="nav-link" href="Bucketlist">BUCKET</a>
		      </li>
		      <li class="nav-item me-5">
		        <a class="nav-link" href="Budget">BUDGET</a>
		      </li>
		      <li class="nav-item me-5">
		        <a class="nav-link" href="Mypage">PROFILE</a>
		      </li>
		    </ul>
		  </div>
	  </div>
	</nav>
	
	<br>
	<!-- 로그인 폼 -->
	<main class="form-signin">
		<form>
			<img class="mb-4" src="./resources/assets/img/logo.png"
				alt="" width="180" height="120">
			<h1 class="h3 mb-3 fw-normal">로그인</h1>

			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com"> <label for="floatingInput">Email
					address</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>

			<div class="checkbox mb-3 text-end">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			
			<button class="w-100 btn btn-lg" style="background-color:#A3BBAD; color:white" type="submit">로그인</button>
			<button class="w-100 btn btn-lg mt-3" style="background-color:white; color:#A3BBAD; border:1px solid #A3BBAD" type="submit">회원가입</button>
<!-- 			<button class="w-100 btn btn-lg background-color:#A3BBAD; color:white" type="submit">로그인</button>
 -->			<!-- <button class="w-100 btn btn-lg btn-outline-primary mt-3" type="submit">회원가입</button> -->
			<p class="mt-5 mb-3 text-muted">&copy; 본 웹사이트는 실습을 위해 만들어졌습니다.</p>
		</form>
	</main>
	<!-- FOOTER -->
</body>
</html>
