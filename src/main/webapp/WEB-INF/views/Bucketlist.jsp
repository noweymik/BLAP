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
</style>
</head>
<body>
    <!-- HEADER -->
	<div class="container-fluid pt-3 border bg-white text-dark text-center">
        <div class="row">
            <div class="col-sm-2 text-start">
                <button type="button" class="btn btn-outline-white text-dark">
                    <div class="fakeimg">Fake Image</div>
                </button>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-outline-white text-dark">
                            <h3> ABOUT </h3>
                        </button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-outline-white text-dark">
                            <h3> BUCKET </h3>
                        </button>
                    </div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-outline-white text-dark">
                            <h3> BUDGET </h3>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-2 text-end">
                <button type="button" class="btn btn-outline-white text-dark">
                    <h3> PROFILE </h3>
                </button>
            </div>
        </div>
	</div>
    <!-- MAIN -->
    <div class="row">
        <!-- CATEGORY -->
        <div class="col-sm-6 pt-3 px-5">
            <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                <li>
                    <a href="#" class="nav-link px-4 link-dark"> 
                        <span class="rounded-circle"></span> 
                        ALL
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link px-4 link-dark">
                        <span class="rounded-circle"></span>
                        TRAVEL
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link px-4 link-dark">
                        <span class="rounded-circle"></span>
                        FOOD
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link px-4 link-dark">
                        <span class="rounded-circle"></span>
                        SHOPPING
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link px-4 link-dark">
                        <span class="rounded-circle"></span>
                        HOBBY
                    </a>
                </li>
            </ul>
        </div>
        <!-- ADD & ORDER BY -->
        <div class="col-sm-6 pt-3 px-5">
            <div class="container-fluid pt-3 border bg-white text-dark">
                <ul class="nav flex-column">
                    <li class="nav-item text-end">
                        <button type="button" class="btn btn-outline-white btn-sm text-dark">
                            추가하기
                        </button>
                    </li>
                    <li class="nav-item">
                        <hr width = "100%" color = "black">
                    </li>
                    <li class="nav-item">
                        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                            <li>
                                <a href="#" class="nav-link link-dark"> 
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        필요도순
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        선호도순
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        우선순위순
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        목표일 가까운 순
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        가능한 예상비용만
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        시작안한 것만
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        진행중인 것만
                                    </button>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link link-dark">
                                    <button type="button" class="btn btn-outline-white btn-sm text-dark">
                                        완료된 것만
                                    </button>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- LIST -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">제주도 여행</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">테니스 배우기</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">애플워치 구매</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>

            <div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">일본 여행</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">부모님 여행</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
			<div class="col-sm-4 pt-3">
				<div class="card" style="width:400px">
                    <img class="card-img-top" src="unnamed.png" alt="Card image" style="width:100%">
                    <div class="card-body">
                        <h4 class="card-title">첼로 배우기</h4>
                        <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                        <ul class="nav justify-content-end">
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">수정</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">삭제</a>
                            </li>
                            <li class="nav-item mx-1">
                                <a href="#" class="btn btn-dark">자세히</a>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
		</div>
	</div>
    <!-- FOOTER -->
    <div class="mt-5 p-4 bg-dark text-white text-center">
        <button type="button" class="btn btn-outline-dark text-light">
            <p class="fs-6">이용약관</p>
        </button>
        <button type="button" class="btn btn-outline-dark text-light">
            <p class="fs-6">도움말</p>
        </button>
    </div>
</body>
</html>