<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Statistics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link href="./resources/assets/css/statistics.css" rel="stylesheet">

<style>
	#budget{
		color : #A3BBAD;
		background-color : white;
		border : 1px solid #A3BBAD;
		border-radius : 5px;
	}
	#budget:hover{
		color : white;
		background-color :  #A3BBAD;
		border : 1px solid white;
		border-radius : 5px;
	}
</style>
</head>

<body class="pt-5">
	<!-- MAIN -->
	<main>
		<div class="container">
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
		        <a class="nav-link" href="about">ABOUT</a>
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
	
	<br/>

			<div class="p-5 mb-auto">
				<div class="container-fluid">
					<div class="row align-items-md-stretch">
							<!-- CATEGORY -->
							<div class="col-sm-6">
								<div>
									<ul
										class="nav col-12 justify-content-center mb-md-0">
										<li><a href="#" class="nav-link px-4 link-dark"> <img
												src="./resources/assets/img/all_checked.png" class="circle"
												alt="all" style="width: 50px; height: 50px"><br>
												<p class="text-center ">ALL</p>
										</a></li>
										<li><a href="#" class="nav-link px-4 link-dark"> <img
												src="./resources/assets/img/travel.png" class="circle"
												alt="travel" style="width: 50px; height: 50px"><br>
												<p class="text-center">TRAVEL</p>
										</a></li>
										<li><a href="#" class="nav-link px-4 link-dark"> <img
												src="./resources/assets/img/food.png" class="circle"
												alt="food" style="width: 50px; height: 50px"><br>
												<p class="text-center">FOOD</p>
										</a></li>
										<li><a href="#" class="nav-link px-4 link-dark"> <img
												src="./resources/assets/img/shopping.png" class="circle"
												alt="shopping" style="width: 50px; height: 50px"><br>
												<p class="text-center">SHOPPING</p>
										</a></li>
										<li><a href="#" class="nav-link px-4 link-dark"> <img
												src="./resources/assets/img/hobby.png" class="circle"
												alt="hobby" style="width: 50px; height: 50px"><br>
												<p class="text-center">HOBBY</p>
										</a></li>
									</ul>
								</div>
							</div>
							<!-- RETURN TO LIST -->
							<div class="col-sm-6">
								<div>
									<div class="container-fluid pt-3 pe-5 text-end">
										<button id="budget" type="button" class="btn btn-outline-primary" onclick=" location.href='./Budget'">목록</button>
									</div>
								</div>
							</div>
						</div>
					<!-- CHART -->
					<div class="row align-items-md-stretch">
						<div class="col-sm-6">
							<div class="p-5">
								<div>
									<canvas id="myChart1"></canvas>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="p-5">
								<div>
									<canvas id="doughnut-chart" width=250 height=100 style=" margin-top:30px"></canvas> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- FOOTER -->
	<footer class="footer mt-auto mb-0">
		<div class="mt-4 bg-secondary text-white text-end"
			style="margin-bottom: 0; background-color: #C1DDD3 !important; height: 100px">
			<button type="button"
				class="btn btn-outline-#C1DDD3 text-light w-auto mt-5">
				<p style="display: inline-block; font-size: 13px">이용약관</p>
			</button>
			<button type="button"
				class="btn btn-outline-#C1DDD3 text-light w-auto mt-5">
				<p style="display: inline-block; font-size: 13px">도움말</p>
			</button>
		</div>
	</footer>
	<script>
		const labels = [ 'Jan.', 'Feb.', 'Mar.', 'Apr.', 'May', 'Jun.', 'Jul.',
				'Aug.', 'Sep.', 'Oct.', 'Nov.', 'Dec.', ];

		const data = {
			labels : labels,
			datasets : [
					{
						label : '당월 사용',
						fill : false,
						backgroundColor : 'rgba(54, 162, 235, 0.5)',
						borderColor : 'rgba(54, 162, 235, 0.5)',
						borderWidth : 1,
						data : [ 2500, 3200, 4000, 2700, 2600, 4900, 7400,
								7600, 5500, 5400, 5500, 8500 ],
					},
					{
						label : '전년 동월',
						backgroundColor : 'rgba(255, 99, 132, 0.5)',
						borderColor : 'rgba(255, 99, 132, 0.5)',
						borderWidth : 1,
						data : [ 2400, 3100, 2500, 500, 2000, 2300, 4000, 6000,
								4800, 4400, 5000, 5500 ],
					} ]
		};

		const config = {
			type : 'line',
			data : data,
			options : {
				responsive : true,
				plugins : {
					legend : {
						position : 'top',
					},
					title : {
						display : true,
						text : '월별 지출 내역'
					}
				}
			},
		};

		const myChart1 = new Chart(document.getElementById('myChart1'), config);
	</script>
	
	<script src="./resources/assets/js/popper.js"></script>
   <script src="./resources/assets/js/bootstrap.min.js"></script>
   <script>
/*    new Chart(document.getElementById("doughnut-chart"), {
       type: 'doughnut',
       data: {
        labels: "여행", "음식", "취미", "쇼핑", "기타"],
         datasets: [
           {
             label: "STATE (percent)",
             backgroundColor: ["#CE6B6B", "#F1CD71","#569D73"],
             data: [49, 27, 24]
           }
         ]
       },
   }); */
   new Chart(document.getElemenyById("doughnut-chart"),{
			   type: 'polarArea',
			   data: data,
			   options: {
			     responsive: true,
			     scales: {
			       r: {
			         pointLabels: {
			           display: true,
			           centerPointLabels: true,
			           font: {
			             size: 18
			           }
			         }
			       }
			     },
			     plugins: {
			       legend: {
			         position: 'top',
			       },
			       title: {
			         display: true,
			         text: 'Chart.js Polar Area Chart With Centered Point Labels'
			       }
			     }
			   },
		
   })
 </script>
 
</body>
</html>
