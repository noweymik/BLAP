<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bucket</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
   .star-pref{
   		color : #FFCC16;
   }
   .card{
   		background-repeat : no-repeat;
        background-size : cover;
     }
	
	.dropdown-menu > li > a:hover {
    background-color: #C1DDD3;
}
</style>
</head>
<body class="pt-5">
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
	<br>
    <!-- MAIN -->
    <div class="row">
        <!-- CATEGORY -->
        <div class="col-sm-6 pt-3 px-5">
            <div class="mt-5">
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
        <!-- ADD & ORDER BY -->
        <div class="col-sm-6 pt-3 px-5">
            <div class="container-fluid pt-3 border bg-white text-dark">
                <ul class="nav flex-column">
                    <li class="nav-item text-end">
	                    <form class="p-2 mb-2 border-bottom">
					      	<input type="search" class="form-control" autocomplete="false" placeholder="Type # to filter...">
					    </form>
                        <button  onclick="location.href='./AddList'" type="button" class="btn btn-outline-white btn-sm text-dark">
                            추가하기
                        </button>
                        <button  onclick="location.href='#'" type="button" class="btn btn-outline-white btn-sm text-dark">
                            전체 삭제
                        </button>
                    </li>
                    <li class="nav-item">
                        <hr width = "100%" color = "black">
                    </li>
                    <li class="nav-item text-end">
                        <div class="btn-group">
						  <button type="button" class="btn btn-sm mb-3 btn-outline-dark dropdown-toggle border-0" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
						    정렬 기순
						  </button>
						  <ul class="dropdown-menu dropdown-menu-lg-end">
						    <li><button class="dropdown-item" type="button">필요도</button></li>
						    <li><button class="dropdown-item" type="button">선호도</button></li>
						    <li><button class="dropdown-item" type="button">우선순위</button></li>
						    <li><button class="dropdown-item" type="button">가까운 목표일</button></li>					    
						    <li><button class="dropdown-item" type="button">가능한 예상비용만</button></li>						    
						    <li><button class="dropdown-item" type="button">미시작</button></li>						    
						    <li><button class="dropdown-item" type="button">진행 중</button></li>						    
						    <li><button class="dropdown-item" type="button">완료</button></li>
						  </ul>
						</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- LIST -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket1.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">제주도 여행</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
		                        <div class=" d-flex justify-content-end w-100" id="contentElement">
								  <p class="fst-italic mt-3 me-3"> 백두산이 #마르고 닳도록 #안녕 </p>
								</div> 
	                        </div>
	                    </div>
	                </div>
				</div>
				<div class="col-sm-4 pt-3">
					<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket2.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">테니스 배우기</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                </div>
				</div>
				<div class="col-sm-4 pt-3">
					<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket3.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">애플워치 구매</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                </div>
				</div>
			</div>
			<div class="row">
	            <div class="col-sm-4 pt-3">
					<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket4.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">일본 여행</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                </div>
				</div>
				<div class="col-sm-4 pt-3">
					<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket5.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">부모님 여행</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                </div>
				</div>
				<div class="col-sm-4 pt-3">
					<div class="card" style="width:370px; height:370px; text-align:center; vertical-align:middle; display:table-cell; background-image: url(./resources/assets/img/bucket6.png);">
	                   <div class="align-middle text-center mt-3 w-100" style=" text-align:center; vertical-align:middle; display: inline-block;">
	                        <h5 class="fw-bolder">첼로 배우기</h5>
	                        <div align="left">
	                        	<div align="left" class="mt-5 d-flex justify-content-around ">
								  	<p class="text-start" style="display: inline; ">예상비용</p>
								  	<p style="display: inline; " >700,000원</p>
								</div> 
								 <div align="left" class="d-flex justify-content-around w-100">
								  	<p style="display: inline; ">필요도<p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★★</label>
								</div> 
								 <div class="d-flex justify-content-around w-100">
								  	<p style="display: inline;">선호도</p>
								    <label for="5-stars-pref" class="star-pref"  style="display: inline;" >★</label>
								</div> 
								 <div class=" d-flex justify-content-around w-100">
								  	<p style="display: inline;">우선순위</p>
								  	<label for="5-stars-pref" class="star-pref"  style="display: inline;" >★★</label>
								</div> 
		                        <ul class="nav justify-content-end mt-3">
		                            <li class="nav-item mx-1">
		                               <button class="bg-white"  onclick="location.href='./EditList'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">수정</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white"   onclick="alert('삭제되었습니다.'); location.href='./Bucketlist'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">삭제</button>
		                            </li>
		                            <li class="nav-item mx-1">
		                                <button class="bg-white" onclick="location.href='./View'" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">자세히</button>
		                            </li>
		                        </ul>
	                        </div>
	                    </div>
	                </div>
				</div>
			</div>
		</div>
	
    <!-- FOOTER -->
	<div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
		<p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
		<p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
	</div>
	
	<script>
		var content = document.getElementById('contentElement').innerHTML;
		var splitedArray = content.split(' ');
		var linkedContent = '';
		for(var word in splitedArray)
		{
		  word = splitedArray[word];
		   if(word.indexOf('#') == 0)
		   {
		      word = '<a href=\'Bucketlist\'>'+word+'</a>';
		   }
		   linkedContent += word+' ';
		}
		document.getElementById('contentElement').innerHTML = linkedContent; 
 	</script>
</body>
</html>