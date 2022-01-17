<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>View My Bucket</title>
    <style>
        .star-rating input {
            display: none;
        }
        
        .star-rating label {
            -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
            -webkit-text-stroke-width: 0.5px;
            -webkit-text-stroke-color: #2b2a29;
            cursor: pointer;
        }
            
        .star-rating :checked ~ label {
            -webkit-text-fill-color: gold;
        }

        .star-rating label:hover,
        .star-rating label:hover ~ label {
            -webkit-text-fill-color: #fff58c;
        }
        .vl {
            margin-left: 7px;
            display: inline;
            border-left: 3px solid gray;
            height: 500px;
        }
        
        #info-1 {
            display: inline-block;
            margin-left: 15%;
            width: 35%;
        }
        #info-2 {
            float:right;
            margin-right: 10%;
            width : 35%;
        }
        
        .title{
            text-align: right; 
            width: 80px; 
            display: inline-block; 
            justify-content: space-between;
        }
        img {
            height: 18px;
        }
        .item, .expense {
            width :90%;
        }
        .col {
            text-align: center;
        }
        .expense {
            text-align: center;
        }
        .index {
            text-align: right;
        }
        #startbutton {
            background-color: rgba(227, 158, 153, 1);
            color : white;
            border: none;
            padding: 5px 20px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10%;
        }
        #completebutton {
            background-color: rgba(153, 174, 227, 1);
            color : white;
            border: none;
            padding: 5px 20px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10%;
        }
    </style>
</head>
<body>
    <script language="javascript"> 
        function add() {
            document.getElementById('allexpense').value = 0;
            if(parseInt(document.getElementById('expense1').value)) document.getElementById('allexpense').value = parseInt(document.getElementById('allexpense').value) + parseInt(document.getElementById('expense1').value);
            if(parseInt(document.getElementById('expense2').value)) document.getElementById('allexpense').value = parseInt(document.getElementById('allexpense').value) + parseInt(document.getElementById('expense2').value);
            if(parseInt(document.getElementById('expense3').value)) document.getElementById('allexpense').value = parseInt(document.getElementById('allexpense').value) + parseInt(document.getElementById('expense3').value);
            if(parseInt(document.getElementById('expense4').value)) document.getElementById('allexpense').value = parseInt(document.getElementById('allexpense').value) + parseInt(document.getElementById('expense4').value);
            if(parseInt(document.getElementById('expense5').value)) document.getElementById('allexpense').value = parseInt(document.getElementById('allexpense').value) + parseInt(document.getElementById('expense5').value);
        }
    </script>
    
	<!-- head navbar -->
	    <nav class="navbar navbar-expand-sm bg-white navbar-light border-bottom ">
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

    <h3 style = 'text-align: center;'> 제목 변수명 </h3><br>  
    <!-- <%-- <%= u.getUserid()%> --%> -->
    
       
    <div id="info-1">

        
        <div class="title"><span>카테고리</span>
            <div class="vl"></div></div>
                <!-- <div style="margin: 100px 0 0px 3.5%; display: inline;"> -->
                    <span style="margin-left: 2%;">카테고리 변수명</span>
                <!-- </div> -->
                <br><br><br>
                
        <div class="title"><span>목표일</span>
			<div class="vl"></div></div>
            	<span style="margin-left: 2%;">목표일 변수명</span>
                <br><br><br>

		<div class="title"><span>필요도</span>
            <div class="vl"></div></div>
                <div class="star-rating ness" style="display: inline; margin-left: 3%;">
                    <input type="radio" id="5-stars-ness" name="rating-ness" value="5"/>
                    <label for="5-stars-ness" class="star-ness">★</label>
                    <input type="radio" id="4-stars-ness" name="rating-ness" value="4"/>
                    <label for="4-stars-ness" class="star-ness">★</label>
                    <input type="radio" id="3-stars-ness" name="rating-ness" value="3"/>
                    <label for="3-stars-ness" class="star-ness">★</label>
                    <input type="radio" id="2-stars-ness" name="rating-ness" value="2"/>
                    <label for="2-stars-ness" class="star-ness">★</label>
                    <input type="radio" id="1-star-ness" name="rating-ness" value="1"/>
                    <label for="1-star-ness" class="star-ness">★</label>
                </div>
                <br><br><br>

                <div class="title"><span>선호도</span>
            <div class="vl"></div></div>
                <div class="star-rating pref" style="display: inline; margin-left: 3%;">
                    <input type="radio" id="5-stars-pref" name="rating-pref" value="5"/>
                    <label for="5-stars-pref" class="star-pref">★</label>
                    <input type="radio" id="4-stars-pref" name="rating-pref" value="4"/>
                    <label for="4-stars-pref" class="star-pref">★</label>
                    <input type="radio" id="3-stars-pref" name="rating-pref" value="3"/>
                    <label for="3-stars-pref" class="star-pref">★</label>
                    <input type="radio" id="2-stars-pref" name="rating-pref" value="2"/>
                    <label for="2-stars-pref" class="star-pref">★</label>
                    <input type="radio" id="1-star-pref" name="rating-pref" value="1"/>
                    <label for="1-star-pref" class="star-pref">★</label>
                </div>
                <br><br><br>
                <div class="title"><span>우선순위</span>
                <div class="vl"></div></div>
                
                <div class="star-rating prio" style="display: inline; margin-left: 3%;">
                    <input type="radio" id="5-stars-prio" name="rating-prio" value="5"/>
                    <label for="5-stars-prio" class="star-prio">★</label>
                    <input type="radio" id="4-stars-prio" name="rating-prio" value="4"/>
                    <label for="4-stars-prio" class="star-prio">★</label>
                    <input type="radio" id="3-stars-prio" name="rating-prio" value="3"/>
                    <label for="3-stars-prio" class="star-prio">★</label>
                    <input type="radio" id="2-stars-prio" name="rating-prio" value="2"/>
                    <label for="2-stars-prio" class="star-prio">★</label>
                    <input type="radio" id="1-star-prio" name="rating-prio" value="1"/>
                    <label for="1-star-prio" class="star-prio">★</label>
                </div>
                <br><br><br>
                <div class="title"><span>사진</span>
            <div class="vl"></div></div>
            <span style="margin-left: 2%;">사진</span>
        <br><br><br>
        <div class="title" style="vertical-align: top;"><span>메모</span>
            <div class="vl"></div></div>
            <span style="margin-left: 2%;">메모 변수명</span>
        <br>
</div>
<!-- 오른쪽 정보 적는 부분 (예상 비용) -->
<div id="info-2">
    
    <p>예상 비용</p>
    <div class="row row-cols-3" style="border: black 1px solid; padding: 10px 8px; background-color: rgba(245, 245, 245, 1);">
        
        <div class="col"></div>
        <div class="col">항목</div>
        <div class="col">예상지출액</div>
        <br><br>
        
        <div class="index">1</div>  
        <div class="col"> 1번 항목 내용 변수명 </div>
        <div class="col">&nbsp;&nbsp;1-예상비용변수명 원</div>
        <br><br>

        <div class="index">2</div>  
        <div class="col"> 2번 항목 내용 변수명 </div>
        <div class="col">&nbsp;&nbsp;2-예상비용변수명 원</div>
        <br><br>

        <div class="index">3</div>  
        <div class="col"> 3번 항목 내용 변수명 </div>
        <div class="col">&nbsp;&nbsp;3-예상비용변수명 원</div>
        <br><br>

        <div class="index">4</div>  
        <div class="col"> 4번 내용 변수명 </div>
        <div class="col">&nbsp;&nbsp;4-예상비용변수명 원</div>
        <br><br>
        
        <div class="index">5</div>  
        <div class="col"> 5번 항목 내용 변수명 </div>
        <div class="col">&nbsp;&nbsp;5-예상비용변수명 원</div>
        <br><br>
        
        <div class="col"></div>  
        <div class="col">예상지출총액</div>
        <div class="col">&nbsp;&nbsp;총 예상비용변수명 원</span></div>
        
    </div>
</div>

    <input type="button" id = "startbutton" value="시작" style="margin-left: 75%; margin-top: 5px;" onclick="alert('해당 버킷이 시작되었습니다.');">
    <input type="button" id = "completebutton" value="완료" style="margin-left: 5%;" onclick="alert('해당 버킷이 완료로 처리되었습니다.');">

<!-- <input type="button" value="돌아가기" style="margin-left: 50%;"> -->
<br><br><br>
<a href ="Bucketlist" style="margin-left: 48%; ">돌아가기</a>


<div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
	<p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
	<p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
</div>


</body>
</html>
</html>
