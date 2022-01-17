<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
  <title>BLAP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- 제이쿼리 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
  <!-- chart.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
  
</head>
<body style="height:1500px">

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

<br>

<div class="container" style=" margin-left:0px; background-image:url("./resources/assets/img/main.png");">

  <img src="./resources/assets/img/main.png" alt="blap Logo" style = "margin-left:-15px;">	
</div>

<!-- <div class="d-flex justify-content-center mt-3" style=" margin-left:0px; background-image:url("./resources/assets/img/main_chart.png");">
	<img src="./resources/assets/img/main_chart.png" alt="blap Logo" style = "margin-left:-15px; width:90%">	
</div> -->


 <div class="container-fluid col-sm-5 p-3 border" style="border:1px solid; border-radius: 10px; height:375px;">
    <br>
    <!-- <canvas id="verticalChart" style="weight:60%; height:100%; padding: 10px;"></canvas> -->
    <canvas id="doughnut-chart" width=150 height=50></canvas>
    
 </div>
 



<div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
	<p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
	<p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
</div>

<script src="./js/popper.js"></script>
   <script src="./js/bootstrap.min.js"></script>
   <script>
   new Chart(document.getElementById("doughnut-chart"), {
	    type: 'doughnut',
	    data: {
	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
	      datasets: [
	        {
	          label: "Population (millions)",
	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
	          data: [2478,5267,734,784,433]
	        }
	      ]
	    },
	    options: {
	      title: {
	        display: true,
	        text: 'Predicted world population (millions) in 2050'
	      }
	    }
	});
   </script>
   <script>
   var xValues = ["예산","지출"];
   new Chart("verticalChart", {
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
   <script>
   var yValues = ["예산","지출"];
   new Chart("horizontalChart", {
     type: "horizontalBar",
     data: {
       labels: yValues,
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
   <script>
      function budget_popup_show () {
        document.querySelector(".background").className = "background budget_popup_show";
      }
      function budget_popup_close () { 
        document.querySelector(".background").className = "background";
      }
      function budget_popup_confirm () { 
           document.querySelector(".background").className = "background";
      }
      document.querySelector("#budget_popup_show").addEventListener('click', budget_popup_show);
      document.querySelector("#budget_popup_close").addEventListener('click', budget_popup_close);
      document.querySelector("#budget_popup_confirm").addEventListener('click', budget_popup_close);
   </script>
   <script>
      $(".categoryimg").mouseover(function() {
         $(this).attr("src", $(this).attr("src").slice(0,-4)+"_checked.png");
      });
      $(".categoryimg").mouseout(function() {
         $(this).attr("src", $(this).attr("src").slice(0,-12)+".png");
      });
   </script>

</body>
</html>