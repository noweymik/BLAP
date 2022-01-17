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
    <title>New Bucket list</title>
    <style>
        .star-rating input{
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
        .file-button {
            display: inline;
            margin-left: 2.8%;
            /* width: 65%; */
            border: 1px solid black;
            cursor: pointer;
            padding: 0.48% 31%;
            /* justify-content: center; */
            text-align: right;
        }
        #photo {
            visibility: hidden;
        }

        #info-1 {
            display: inline-block;
            margin-left: 150px;
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
        input[type=submit] {
            background-color: rgba(173, 172, 172, 1);
            border: none;
            color: white;
            padding: 5px 20px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10%;
        }
        input[type=reset] {
            background-color: white;
            border: 0.2px solid black;
            padding: 4.8px 19.8px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10%;
        }
        button[type=submit] {
            background-color: rgba(173, 172, 172, 1);
            border: none;
            color: white;
            padding: 5px 20px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10%;
        }
        button[type=reset] {
            background-color: white;
            border: 0.2px solid black;
            padding: 4.8px 19.8px;
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
    
    <nav class="navbar navbar-expand-sm bg-white navbar-light border-bottom">
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
        <!-- 여기는 nav부분~~ -->

    <h3 style = 'text-align: center;'> NEW BUCKET LIST </h3><br>
    
    <form method="post" enctype="multipart/form-data" action="#"></form>
    <!-- 왼쪽 정보 적는 부분 (예상 비용 제외 부분) -->
    <!-- <div id = "infoWrite"> -->
    
    <div id="info-1">
            <div class="title"><span>제목</span>
            <div class="vl"></div></div>
            <input type="text" name="title" style="margin: 1% 0 0 3.5%; padding: 1px; width: 65%;" />
        <br><br><br>
        <div class="title"><span>카테고리</span>
            <div class="vl"></div></div>
                <div style="margin: 100px 0 0px 3.5%; display: inline;">
                    <input type="checkbox" id="choice1" name="type" value="여행"> 여행&nbsp;&nbsp;
                    <input type="checkbox" id="choice2" name="type" value="운동"> 운동&nbsp;&nbsp;
                    <input type="checkbox" id="choice3" name="type" value="음식" > 음식&nbsp;&nbsp;
                    <input type="checkbox" id="choice4" name="type" value="취미" > 취미&nbsp;&nbsp;
                    <input type="checkbox" id="choice5" name="type" value="구매" > 구매&nbsp;&nbsp;
                    <input type="checkbox" id="choice6" name="type" value="기타" > 기타<br>
                </div>
                <br>
                <div class="title"><span>목표일</span>
            <div class="vl"></div></div>
            <input type="date" style="margin: 3% 0 0px 3.5%; padding: 1px; width: 65%;" />
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
            <div class="file-button">
                <label for="photo">
                    <img src="/resurces/assets/img/img.png">
                </label>
            </div>
            <input type="file" id="photo" name="photo"style="margin: 3% 0 0px 3.5%; padding: 1px; padding: 2px; width: 300px;" accept="image/*"/></td>
        <br>
        <div class="title" style="vertical-align: top;"><span>메모</span>
            <div class="vl"></div></div>
            <textarea cols="50" rows="5" name="detail" style="margin: 0% 0 0px 3.5%; padding:4px; width: 65%;"></textarea>
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
        <div class="col"><input class="item" type="text"/></div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="expense1" type="text" onkeyup='add()' style="width: 78%;"/> 원</div>
        <br><br>

        <div class="index">2</div>  
        <div class="col"><input class="item" type="text"/></div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="expense2" type="text" onkeyup='add()'style="width: 78%;"/> 원</div>
        <br><br>

        <div class="index">3</div>  
        <div class="col"><input class="item" type="text"/></div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="expense3" type="text" onkeyup='add()'style="width: 78%;"/> 원</div>
        <br><br>

        <div class="index">4</div>  
        <div class="col"><input class="item" type="text"/></div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="expense4" type="text" onkeyup='add()'style="width: 78%;"/> 원</div>
        <br><br>
        <div class="index">5</div>  
        <div class="col"><input class="item" type="text"/></div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="expense5" type="text" onkeyup='add()'style="width: 78%;"/> 원</div>
        
        <br><br>
        <div class="col"></div>  
        <div class="col">예상지출총액</div>
        <div class="col">&nbsp;&nbsp;<input class="expense" id="allexpense" type="text" style="width: 78%;"/><span> 원</span></div>
        
    </div>
</div>

   <!-- <input type="reset" value="취소" style="margin-left: 43%; margin-top: 5px;" onclick="alert('취소되었습니다.');">
    <input type="submit" value="등록" style="margin-left: 5%;" onclick="alert('등록되었습니다.');">  -->
    <button type="reset"  style="margin-left: 43%; margin-top: 5px;" onclick="location.href='./Bucketlist'">취소</button>
    <button type="submit"  style="margin-left: 5%;" onclick="alert('등록되었습니다.'); location.href='./Bucketlist'">등록</button>
</form>

<footer>
    <div style="float:right;">
        <span><a href="#">이용약관</a></span>
        <span> <a href="#">도움말</a></span>
    </div>
</footer>
</body>
</html>