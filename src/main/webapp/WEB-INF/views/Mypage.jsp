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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- 모달 -->
	<style>
            #cate_m_modal, #cate_p_modal, #add_modal {
                display: none;
                width: 400px;
                height:200px; 
                padding: 10px 60px;
                background-color: #fefefe;
                border: 2px solid black;
                border-radius: 5px;
            }

            #cate_p_modal .modal_close_btn, #cate_m_modal .modal_close_btn, #add_modal .modal_close_btn {
                position: absolute;
                top: 5px;
                right: 10px;
            }
            
             #cate_m_modal .finish, #cate_p_modal .finish {
                position: absolute;
                bottom: 30px;
                right: 50px;
                border: 0px;
            	background-color: white;
            	height:8; 
	            width:16;
            }
             #add_modal .finish{
             	position: absolute;
                bottom: 10px;
                right: 20px;
            }
            input{
	             background-color: #EBEBEB;
	             padding: 5px;
	             border: 0px;
	             text-align: center;
            }
            button{
            	border: 0px;
            	background-color: white;
            }
        </style>
  </head>

  <body>
      <!-- navbar 여기는 지워도 괜찮을 거 같아용 -->
	     <!--  <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
	      </nav> -->
	      
	      <!-- style="border: 3px solid purple" -->
	      
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
    
	<!-- content -->
		<div class="container" style = "font-size:18px;">
		<div class = "col-1" >
		</div>
	    	<div class = "row" sytle="text-align: center;">
				<div class = "col-5 mt-3" >
				
				<!-- 프로필 -->
				
					<div class = "ml-3" style="padding-left: 37px; padding-bottom: 5px;"><img src="resources/assets/img/user.png" height="70" width="70"></div>
					<div  class = "row mt-5" style="padding-left: 58px; display:inline; padding-top: 5px;"> 홍길동
						<a href="SignIn" style="text-decoration-line : none;"><small class = "text-muted"> 로그아웃</small></a>
					</div>
					<div class = "row" style="text-align:center; padding-top: 5px" >2000000@gmail.com</div>
				</div>	
				
				<!-- 잔여금액 -->
				<div class = "col-6"  >
					<div class = "row mt-5"  >
						잔여금액
						<div class = "col-1 " ></div>
						<div class = "col-3  alert-secondary align-middle" style = "text-align:center; line-height: 40px; width: 180px; height: 40px;background-color:#EBEBEB; border-radius:8px;" >360,000</div>
						<div class = "col-1" style="line-height: 40px;">₩</div>
						<div class = "col-3" style = "text-align:center;"><button id="popup_open_btn"><img src="resources/assets/img/금액추가.png" height="40" width="40"></button></div>
					</div>
					
					<!-- 지출내역 -->
					
					<div class = "row mt-3" >지출내역</div>
					
					<!-- 지출내역 한 묶음 현재 입출금 내역이랑 총 내역이 따로 있어서 합치즌 게 나을 거 같기도?? -->
						<div class = "row">
							<div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/1</div>
							<div class = "col-3 " style = "text-align:center; color:#084DFC">+70,000</div>
							<div class = "col"></div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F; border-radius:8px">680,000원</div>
						</div>
					<!-- 여기까지 한 묶음 -->
					
						<div class = "row mt-2">
						    <div class = "col-2"></div>
							<div class = "col-1 "style=" text-align:right;">1/7</div>
							<div class = "col-3 " style = "text-align:center;color:#FC0808">-300,000</div>
							<div class = "col-3" style = "font-size: 15px">제주도 여행</div>
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
							<div class = "col-3 " style = "text-align:center; color:#FC0808;" >-150,000</div>
							<div class = "col-sm-3" style = " font-size: 15px; ">테니스레슨</div>
						</div>
						<div class = "row">
							<div class = "col-3"></div>
							<div class = "col-3 " style = "font-size: 15px; text-align:center; color:#8B8B8F">360,000원</div>
						</div>
					
					<!-- 카테고리 -->
					<div class = "row mt-5">
					카테고리
					<!-- 카테고리 더하기 빼기 버튼-->
					<div class="col-1" style = "padding-left:35px" ><button id="cate_p_popup_open_btn"><img src="resources/assets/img/카테고리 더하기.png" height="20" width="20" ></button></div>
					<div class="col-1" ><button id="cate_m_popup_open_btn"><img src="resources/assets/img/카테고리 빼기.png" height="20" width="20" ></button></div>
					
					<!-- 카테고리 각 항목 버튼-->
					<div class="col-1" style="margin-left:30px; font-size:14; color:#8B8B8F "><img src="resources/assets/img/여행.png" height="50" width="50"><br>    여행</div>
					<div class="col-1" style="margin-left:15px; font-size:14; color:#8B8B8F"><img src="resources/assets/img/음식.png" height="50" width="50">  음식</div>
					<div class="col-1 " style="margin-left:15px; font-size:14; color:#8B8B8F"><img src="resources/assets/img/쇼핑.png" height="50" width="50">  쇼핑</div>
					<div class="col-1" style="margin-left:15px; font-size:14; color:#8B8B8F" ><img src="resources/assets/img/기타.png" height="50" width="50">  기타</div>
					</div>
					
				</div>	
				
				
			</div>
			
					<!-- footer -->
<!-- <div class="mt-4 p-3 bg-secondary text-white text-end" style="margin-bottom:0; background-color:#C1DDD3 !important; height:100px">
	<p class=" pt-5" style="display: inline-block; font-size:13px">이용약관</p>
	<p class="pt-5" style="display: inline-block; font-size:13px">도움말</p>
</div> -->


			<!-- 금액추가모달 -->
			 <div id="add_modal">
			 <div style = "font-size: 18px; text-align:center; ">예산추가</div>
            	
            <div class = "row mt-4 mb-4 pt-4">
            <div class="col-4" style = "font-size:15px;" >추가할 금액</div>
            <div class="col-3" style = "font-size: 16px; border-radius:3px;" ><input type = "text"></div>
            </div>
            <!-- <a class="finish"><img src="resources/assets/img/완료버튼 이미지.png" ></a> -->
            <button class="finish" style="border-radius:10px; border: 1px solid #DDDDDD; width:60px; height:30px; font-size:14px">완료</button>
            <a class="modal_close_btn" style = "font-size 25px; text-align:center;  text-decoration-line: none; color : black">x</a>
<!--             <a class="modal_close_btn"><i class="fas fa-times "></i></a>-->
        </div>
        
        <!-- 카테고리추가모달 -->
			 <div id="cate_p_modal">
			 <div style = "font-size: 18px; text-align:center; ">카테고리 추가</div>
            	
            <div class = "row mt-4 mb-4">
            <div class="col" style = "font-size:14px;" >카테고리 명</div>
            <div class="col" style = "font-size: 14px;" ><input type = "text"></div>
            </div>
            <a class="finish"><img src="resources/assets/img/완료버튼 이미지.png" ></a>
            <a class="modal_close_btn" style = "font-size 14px; text-align:center; ">x</a>
        </div>
        
        <!-- 카테고리제거모달 -->
			 <div id="cate_m_modal">
			 <div style = "font-size: 18px; text-align:center; ">카테고리 삭제</div>
            	
            <div class = "row mt-4 mb-4">
            <div class="col" style = "font-size:14px;" >카테고리 명</div>
            <div class="col" style = "font-size: 14px;" ><input type = "text"></div>
            </div>
            <a class="finish"><img src="resources/assets/img/완료버튼 이미지.png" ></a>
            <a class="modal_close_btn" style = "font-size 14px; text-align:center; ">x</a>
        </div>
		</div>
		


		        <script>
            function modal(id) {
                var zIndex = 9999;
                var modal = document.getElementById(id);

                // 모달 div 뒤에 희끄무레한 레이어
                var bg = document.createElement('div');
                bg.setStyle({
                    position: 'fixed',
                    zIndex: zIndex,
                    left: '0px',
                    top: '0px',
                    width: '100%',
                    height: '100%',
                    overflow: 'auto',
                    // 레이어 색갈은 여기서 바꾸면 됨
                    backgroundColor: 'rgba(0,0,0,0.1)'
                });
                document.body.append(bg);

                // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
                modal.querySelector('.modal_close_btn').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });
                
                modal.querySelector('.finish').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });

                modal.setStyle({
                    position: 'fixed',
                    display: 'block',
                    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                    // 시꺼먼 레이어 보다 한칸 위에 보이기
                    zIndex: zIndex + 1,

                    // div center 정렬
                    top: '50%',
                    left: '50%',
                    transform: 'translate(-50%, -50%)',
                    msTransform: 'translate(-50%, -50%)',
                    webkitTransform: 'translate(-50%, -50%)'
                });
            }

            // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
            Element.prototype.setStyle = function(styles) {
                for (var k in styles) this.style[k] = styles[k];
                return this;
            };

            document.getElementById('popup_open_btn').addEventListener('click', function() {
                // 모달창 띄우기
                modal('add_modal');
            });
            document.getElementById('cate_p_popup_open_btn').addEventListener('click', function() {
                // 모달창 띄우기
                modal('cate_p_modal');
            });
            document.getElementById('cate_m_popup_open_btn').addEventListener('click', function() {
                // 모달창 띄우기
                modal('cate_m_modal');
            });
        </script>
		
	
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
