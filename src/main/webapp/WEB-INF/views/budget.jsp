<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>Budget List</title>
<style>
.bargraph-container {
	width: 500px;
	padding: 1rem;
	border-radius: 5px;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<nav
			class="navbar navbar-expand-sm bg-white navbar-light fixed-top border-bottom">
			<img src="./resources/assets/img/logo.png" alt="blap Logo"
				style="width: 80px; height: 55px">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center"
				id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item me-5">
						<h4>
							<a class="nav-link" href="/about">ABOUT</a>
						</h4>
					</li>
					<li class="nav-item me-5">
						<h4>
							<a class="nav-link" href="/bucket">BUCKET</a>
						</h4>
					</li>
					<li class="nav-item me-5">
						<h4>
							<a class="nav-link" href="/budget">BUDGET</a>
						</h4>
					</li>
					<li class="nav-item me-5 float-end">
						<h4>
							<a class="nav-link" href="/user">PROFILE</a>
						</h4>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<br>
	<div class="container-fluid row">
		<form class="form-inline my-lg-0">
			<span>
				<button class="btn btn-outline-success my-3 p-3" type="category1">
					<img src="./resources/assets/img/all.png" class="circle"><br>
					ALL
				</button>
				<button class="btn my-3 p-3" type="category2">
					<img src="./resources/assets/img/travel.png" class="circle"><br>
					TRAVEL
				</button>
				<button class="btn my-3 p-3" type="category3">
					<img src="./resources/assets/img/food.png" class="circle"><br>
					FOOD
				</button>
				<button class="btn my-3 p-3" type="category4">
					<img src="./resources/assets/img/shopping.png" class="circle"><br>
					SHOPPING
				</button>
				<button class="btn my-3 p-3" type="category5">
					<img src="./resources/assets/img/hobby.png" class="circle"><br>
					HOBBY
				</button>
			</span> <span>
				<button class="btn btn-outline-success my-4 p-2 float-end"
					onclick="location.href='budget_statistics'">통계</button>
			</span>
		</form>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div class="container border col-sm-8 my-3">
					<span class="col-sm-3" style="font-size: 22px; width: 50%">[여행] 제주도 여행</span>
						<span class="col-sm-3"></span>
						<span class="col-sm-3" style="font-size: 15px;">예상지출: 62만</span><br>
						<span style="font-size: 15px;">2022.01.11</span>
					<button class="btn float-end"
						onclick="location.href='budget_statistics'"
						style="font-size: 16px;">view more></button>
					<br>
				</div>
				<div class="container border col-sm-8 my-3">
					<span style="font-size: 22px;">[취미] 테니스 배우기</span>
					<span style="font-size: 15px;">예상지출: 11만</span><br>
					<span style="font-size: 15px;">2022.01.11</span>
					<button class="btn float-end"
						onclick="location.href='budget_statistics'"
						style="font-size: 16px;">view more></button>
					<br>
				</div>
				<div class="container border col-sm-8 my-3">
					<span style="font-size: 22px;">[취미] 테니스 배우기</span>
					<span style="font-size: 15px;">예상지출: 11만</span><br> 
					<span style="font-size: 15px;">2022.01.11</span>
					<button class="btn float-end"
						onclick="location.href='budget_statistics'"
						style="font-size: 16px;">view more></button>
					<br>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="bargraph-container col-sm-3 border">
					<p>예산현황</p>
					<div class="progress">
						<div class="progress-bar" style="width: 40%">현월예산</div>
					</div><br>
					<div class="progress">
						<div class="progress-bar bg-success" style="width: 30%">지출액
						</div>
						<div class="progress-bar bg-warning" style="width: 60%">
							지출예정액</div>
					</div>
				</div>
				<div class="col-sm-3">
					<table class="table table-borderless" style="width: 400px">
						<tbody>
							<tr>
								<td></td>
								<td>현월 예산</td>
								<td>680,000</td>
							</tr>
							<tr>
								<td></td>
								<td>지출액</td>
								<td>568,390</td>
							</tr>
							<tr>
								<td></td>
								<td>지출 예정액</td>
								<td>1,140,000</td>
							</tr>
							<tr>
								<td></td>
								<td>예산 초과액</td>
								<td class="primary">-1,028,390</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="mt-4 p-3 bg-secondary text-white text-end"
		style="margin-bottom: 0; background-color: #C1DDD3 !important; height: 100px">
		<p class=" pt-5" style="display: inline-block; font-size: 13px">이용약관</p>
		<p class="pt-5" style="display: inline-block; font-size: 13px">도움말</p>
	</div>

	<script src="./js/jquery.min.js"></script>
	<script src="./js/popper.js"></script>
	<script src="./js/bootstrap.min.js">
		>
	</script>
</body>
</html>
