<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  </head>

  <body>
      <!-- navbar -->
	      <nav class="navbar navbar-expand-lg navbar-light bg-light">
	        <div class="container-fluid">
	          <a class="navbar-brand" href="#">Navbar</a>
	          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="navbar-toggler-icon"></span>
	          </button>
	          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	            <div class="navbar-nav">
	              <a class="nav-link active" aria-current="page" href="#">Home</a>
	              <a class="nav-link" href="#">Features</a>
	              <a class="nav-link" href="#">Pricing</a>
	              <a class="nav-link disabled">Disabled</a>
	            </div>
	          </div>
	        </div>
	      </nav>
    
	<!-- content -->
		<div class="container" style = "font-size:18px;">
		<div class = "col-1" >
		</div>
	    	<div class = "row" sytle="text-align: center;">
				<div class = "col-5 mt-3" >
					<div class = "ml-3" style="padding-left: 37px; padding-bottom: 5px;"><img src="resources/assets/img/user.png" height="70" width="70"></div>
					<div  class = "row mt-5" style="padding-left: 58px; display:inline; padding-top: 5px"> 홍길동<small class = "text-muted"> logout</small></div>
					<div class = "row" style="text-align:center; padding-top: 5px" >20000000@gmail.com</div>
				</div>	
				
				<div class = "col-6 " >
					<div class = "row mt-5" >
						잔여금액
						<div class = "col-1 "></div>
						<div class = "col-3  alert-secondary" style = "text-align:center" >360,000</div>
						<div class = "col-1 ">₩</div>
						<div class = "col-3" input type = "button" style = "text-align:center;"><img src="resources/assets/img/금액추가.png" height="40" width="40"></div>
					</div>
					<div class = "row mt-3" >지출내역</div>
					
						<div class = "row">
							<div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/1</div>
							<div class = "col-3 " style = "text-align:center; color:#084DFC">+70,000</div>
							<div class = "col"></div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">680,000원</div>
						</div>
						
						<div class = "row mt-2">
						    <div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/7</div>
							<div class = "col-3 " style = "text-align:center;color:#FC0808">-300,000</div>
							<div class = "col-3" style = "text-align:center">제주도 여행</div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">680,000원</div>
						</div>
						
						<div class = "row mt-2">
							<div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/9</div>
							<div class = "col-3 " style = "text-align:center; color:#084DFC">+100,000</div>
							<div class = "col "></div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">480,000원</div>
						</div>
						
						<div class = "row mt-2">
							<div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/15</div>
							<div class = "col-3 " style = "text-align:center; color:#084DFC">+30,000</div>
							<div class = "col "></div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">510,000원</div>
						</div>
						
						<div class = "row mt-2">
							<div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/22</div>
							<div class = "col-3 " style = "text-align:center; color:#FC0808">-150,000</div>
							<div class = "col-3" style = "text-align:center">테니스레슨</div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">360,000원</div>
						</div>
						
					<div class = "row mt-5">
					카테고리
					<div class="col-1" style = "padding-left:35px" ><img src="resources/assets/img/카테고리 더하기.png" height="20" width="20" ></div>
					<div class="col-1" ><img src="resources/assets/img/카테고리 빼기.png" height="20" width="20"></div>
					<div class="col-1" style="margin-left:30px; font-size:14; color:#8B8B8F "><img src="resources/assets/img/여행.png" height="50" width="50"><br>    여행</div>
					<div class="col-1" style="margin-left:15px; font-size:14; color:#8B8B8F"><img src="resources/assets/img/음식.png" height="50" width="50">  음식</div>
					<div class="col-1 " style="margin-left:15px; font-size:14; color:#8B8B8F"><img src="resources/assets/img/쇼핑.png" height="50" width="50">  쇼핑</div>
					<div class="col-1" style="margin-left:15px; font-size:14; color:#8B8B8F" ><img src="resources/assets/img/기타.png" height="50" width="50">  기타</div>
					</div>
					
				</div>	
				
				
			</div>
		</div>
		
		
	<!-- footer -->
		<div class = "mt-5"> 
		 	<p class="alert-secondary"></p>
		</div>
		
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
</html>
