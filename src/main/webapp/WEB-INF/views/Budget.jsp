<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="./css.custom.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- 제이쿼리 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
	<!-- chart.js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
	<title>Budget List</title>
</head>

<body class="pt-5">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-white navbar-light fixed-top border-bottom">
			<img src="./resources/assets/img/logo.png" style="width: 80px; height: 55px">
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar">
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
							<a class="nav-link" href="/Budget">BUDGET</a>
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
	<div class="container" style="font-size:18px;">
		<form class="form-inline my-lg-0 ">
			<span>
				<button class="btn border my-3 p-3" type="category1">
					<img src="./resources/assets/img/all_checked.png" style="width: 45px; height: 45px"><br>
					ALL
				</button>
				<button class="btn my-3 p-3" type="category2">
					<img src="./resources/assets/img/travel.png" style="width: 45px; height: 45px"><br>
					TRAVEL
				</button>
				<button class="btn my-3 p-3" type="category3">
					<img src="./resources/assets/img/food.png" style="width: 45px; height: 45px"><br>
					FOOD
				</button>
				<button class="btn my-3 p-3" type="category4">
					<img src="./resources/assets/img/shopping.png" style="width: 45px; height: 45px"><br>
					SHOPPING
				</button>
				<button class="btn my-3 p-3" type="category5">
					<img src="./resources/assets/img/hobby.png"  style="width: 45px; height: 45px"><br>
					HOBBY
				</button>
			</span>
			<span>
				<button class="btn btn-success disabled my-4 p-2 float-end p-2"
					onclick="location.href='budget_statistics'">통계</button>
			</span>
		</form>
	</div>

	<div class="container-fluid row">
		<div class="col-lg-7 col-md-12">
			<div class="container border col-sm-9 my-3 p-3" style="border-radius: 20px;">
				<span style="font-size: 22px;">[여행] 제주도 여행</span>
				<span style="font-size: 15px;">예상지출: 62만</span><br>
				<span style="font-size: 15px;">2022.01.11</span>
				<button class="btn float-end" onclick="location.href='budget_statistics'"
					style="font-size: 16px;">view more>
				</button>
				<br>
			</div>
			<div class="container border col-sm-9 my-3 p-3" style="border-radius: 20px;">
				<span style="font-size: 22px;">[취미] 테니스 배우기</span>
				<span style="font-size: 15px;">예상지출: 11만</span><br>
				<span style="font-size: 15px;">2022.01.11</span>
				<button class="btn float-end" onclick="location.href='budget_statistics'"
					style="font-size: 16px;">view more>
				</button>
				<br>
			</div>
			<div class="container border col-sm-9 my-3 p-3" style="border-radius: 20px;">
				<span style="font-size: 22px;">[취미] 테니스 배우기</span>
				<span style="font-size: 15px;">예상지출: 11만</span><br> 
				<span style="font-size: 15px;">2022.01.11</span>
				<button class="btn float-end" onclick="location.href='budget_statistics'"
					style="font-size: 16px;">view more>
				</button>
				<br>
			</div>
			<div class="container border col-sm-9 my-3 p-3" style="border-radius: 20px;">
				<span style="font-size: 22px;">[취미] 테니스 배우기</span>
				<span style="font-size: 15px;">예상지출: 11만</span><br> 
				<span style="font-size: 15px;">2022.01.11</span>
				<button class="btn float-end" onclick="location.href='budget_statistics'"
					style="font-size: 16px;">view more>
				</button>
				<br>
			</div>
		</div>
		<div class="container-fluid col-lg-5 col-md-12">
			<span style="font-size: 22px;">예산 현황</span>
			<div class="container-fluid col-sm-5 p-3 border" style="border-radius: 10px; height:400px">
				<canvas id="myChart" style="weight:60%; height:100%; padding: 10px;
					border: 1px solid #000000; border-radius: 15px;"></canvas>
			</div>
			<div class="col-sm-7">
				
			</div>
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

	<div class="mt-4 p-3 bg-secondary text-white text-end"
		style="margin-bottom: 0; background-color: #C1DDD3 !important; height: 100px">
		<p class=" pt-5" style="display: inline-block; font-size: 13px">이용약관</p>
		<p class="pt-5" style="display: inline-block; font-size: 13px">도움말</p>
	</div>


	<script src="./js/jquery.min.js"></script>
	<script src="./js/popper.js"></script>
	<script src="./js/bootstrap.min.js"></script>

	<script>
	var xValues = ["예산","지출"];
	new Chart("myChart", {
	  type: "bar",
	  data: {
	    labels: xValues,
	    datasets: [{ 
	      data: [680000/10000,0],
	      stack:true,
	      label:"현월 예산",
	      backgroundColor: "#F4B5B5",
	      fill: false
	    }, { 
	      data: [0,568390/10000],
	      backgroundColor: "#F9D7D7",
	      label:"현재 지출액",
	      stack:true,
	      fill: false
	    }, { 
	      data: [0,1140000/10000],
	      backgroundColor: "#FFE2E2",
	      label:"지출 예정액",
	      stack:true,
	      fill: false
	    }]
	  },
	  options: {
	    legend: {display: false},
	    responsive:true,
	    maintainAspectRatio:false
	  }
	});
	</script>
</body>
</html>
