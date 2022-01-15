<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    
<a href="/blapweb/chart/chart1.do">구글차트(json)</a>    
<a href="/blap/chart/chart2.do">구글차트(db)</a>    
<a href="/blap/jchart/chart1.do">JFreeChart1(png)</a>    
<a href="/blap/jchart/chart2.do">JFreeChart2(pdf)</a>    
    
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
      <img src="./resources/assets/img/logo.png" alt="blap Logo" style="width:80px; height:55px">
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse d-flex justify-content-center" id="collapsibleNavbar" >
	   <ul class="navbar-nav">
	      <li class="nav-item me-5">
	        <a class="nav-link" href="/about">ABOUT</a>
	      </li>
	      <li class="nav-item me-5">
	        <a class="nav-link" href="/bucket">BUCKET</a>
	      </li>
	      <li class="nav-item me-5">
	        <a class="nav-link" href="/budget">BUDGET</a>
	      </li>
	      <li class="nav-item me-5">
	        <a class="nav-link" href="/user">PROFILE</a>
	      </li>
	    </ul>
	  </div>
  </div>
</nav>

<br>

<div class="container" style=" margin-left:0px; background-image:url("./resources/assets/img/main.png");">

  <img src="./resources/assets/img/main.png" alt="blap Logo" style = "margin-left:-15px;">	
</div>

<div class="d-flex justify-content-center mt-3" style=" margin-left:0px; background-image:url("./resources/assets/img/main_chart.png");">
	<img src="./resources/assets/img/main_chart.png" alt="blap Logo" style = "margin-left:-15px; width:90%">	
</div>

<div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
	<p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
	<p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
</div>

</body>
</html>


