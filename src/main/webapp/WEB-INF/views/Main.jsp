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

<div class="container-fluid" style="padding:0px; background-image:url("./resources/assets/img/main.png");">

  <img src="./resources/assets/img/main.png" alt="blap Logo" style = "width:100%;">   
</div>

<div class="container border mt-4 mb-4" style="border:1px solid; border-radius: 10px; height:375px;">
  <div class="row">
    <div class="col">
         <div class="mt-3 fs-5 fw-normal">STATE</div>
      <canvas id="doughnut-chart" width=250 height=100 style=" margin-top:30px"></canvas> 
    </div>
    <div class="col">
       <div class="mt-3 fs-5 fw-normal">ACHIEVEMENT</div>
        <div class="mt-5 d-flex justify-content-between">
           <p style="display: inline;">2022</p>
           <p style="display: inline;" >73%</p>
        </div>
      <div class="progress" style="margin-top:-15px">
        <div class="progress-bar" role="progressbar" style="width: 73%; background-color:#D3ABA6; border-radius:3px" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="mt-3 d-flex justify-content-between">
           <p style="display: inline;">여행</p>
           <p style="display: inline;" >62%</p>
        </div>
      <div class="progress" style="margin-top:-15px">
        <div class="progress-bar" role="progressbar" style="width: 62%; background-color:#E2CC7D" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="mt-3 d-flex justify-content-between">
           <p style="display: inline;">운동</p>
           <p style="display: inline;" >39%</p>
        </div>
      <div class="progress" style="margin-top:-15px">
        <div class="progress-bar" role="progressbar" style="width: 39%; background-color:#C1DDD3" aria-valuenow="39" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <div class="mt-3 d-flex justify-content-between">
           <p style="display: inline;">쇼핑</p>
           <p style="display: inline;" >17%</p>
        </div>
      <div class="progress" style="margin-top:-15px">
        <div class="progress-bar" role="progressbar" style="width: 17%; background-color:#A6C6D3" aria-valuenow="17" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
   </div>
  </div>
</div>



<div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
   <p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
   <p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
</div>

<script src="./resources/assets/js/popper.js"></script>
   <script src="./resources/assets/js/bootstrap.min.js"></script>
   <script>
   new Chart(document.getElementById("doughnut-chart"), {
       type: 'doughnut',
       data: {
        labels: ["시작하지 않음", "진행중", "완료"],
         datasets: [
           {
             label: "STATE (percent)",
             backgroundColor: ["#CE6B6B", "#F1CD71","#569D73"],
             data: [49, 27, 24]
           }
         ]
       },
   });
 </script>
  
</body>
</html>