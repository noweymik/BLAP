<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  	
	<!-- Downloaded chart.css -->
	<link rel="stylesheet" href="chart.css">
	<!-- RawGit CDN chart.css -->
	<link rel="stylesheet" href="https://cdn.rawgit.com/theus/chart.css/v1.0.0/dist/chart.css" />
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
	<nav class = "navbar navbar-expand-sm navbar-light bg-success ">
		<a class = "navbar-brand" href="main">
			<img src="C:\Users\USER\Pictures\img\logo.png">
		</a>	<!-- 로고로 전환 -->
		<button class="navbar-toggler" type="button" data-toggle="collapse">
			<span class="navbar-togler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse justify-content-center">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="main">ABOUT</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="bucket">BUCKET</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="budget_list">BUDGET</a>
				</li>
			</ul>
		</div>
		<div class="float-end">
				<a class="navbar-brand" href="profile">PROFILE</a>
		</div>
	</nav>
	<form class="form-inline col-sm-10 my-lg-0">
		<span>
			<button class="btn btn-outline-success my-3 p-3" type="category1">
				<img src="all.png" class="circle"><br>
				ALL
			</button>
			<button class="btn my-3 p-3" type="category2">
				<img src="./img/travel.png" class="circle"><br>
				TRAVEL
			</button>
			<button class="btn my-3 p-3" type="category3">
				<img src="C:\Users\USER\Pictures\img\food.png" class="circle"><br>
				FOOD
			</button>
			<button class="btn my-3 p-3" type="category4">
				<img src="C:\Users\USER\Pictures\img\shopping.png" class="circle"><br>
				SHOPPING
			</button>
			<button class="btn my-3 p-3" type="category5">
				<img src="C:\Users\USER\Pictures\img\hobby.png" class="circle"><br>
				HOBBY
			</button>
		</span>
		<span>
			<button class="btn btn-outline-success my-4 p-2 float-end" onclick="location.href='budget_statistics'">통계</button>
		</span>
	</form>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div class="container border col-sm-8 my-3">
					<span class="col-sm-3" style="font-size:22px; width:50%">[여행] 제주도 여행</span>
					<span class="col-sm-3"></span>
					<span class="col-sm-3" style="font-size:15px;">예상지출:  62만</span><br>
					<span style="font-size:15px;">2022.01.11</span>
					<button class="btn float-end" onclick="location.href='budget_statistics'" style="font-size:16px;">view more></button><br>
				</div>
				<div class="container border col-sm-8 my-3">
					<span style="font-size:22px;">[취미] 테니스 배우기</span>
					<span style="font-size:15px;">예상지출:  11만</span><br>
					<span style="font-size:15px;">2022.01.11</span>
					<button class="btn float-end" onclick="location.href='budget_statistics'" style="font-size:16px;">view more></button><br>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="bargraph-container col-sm-3 border">
					<p>예산현황</p>
					<div class="charts__chart chart--p80  chart--blue    chart--hover">
						<span class="charts__percent"></span>
					</div><!-- /.charts__chart -->
					
					<div class="charts__chart chart--p60  chart--green   chart--hover">
						<span class="charts__percent"></span>
					</div><!-- /.charts__chart -->
					
					<div class="charts__chart chart--p40  chart--red     chart--hover">
					 	<span class="charts__percent"></span>
					</div><!-- /.charts__chart -->
				</div>
				<div class="col-sm-3">
					<table class="table table-borderless">
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
					      	<td class="primary">+1,028,390</td>
					      </tr>
					    </tbody>
					  </table>
				</div>
			</div>
		</div>
	</div>



	<script src="./js/jquery.min.js"></script>
	<script src="./js/popper.js"></script>
	<script src="./js/bootstrap.min.js">></script>
</body>
</html>
