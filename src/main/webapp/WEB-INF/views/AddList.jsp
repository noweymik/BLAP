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
            display: inline;
            border-left: 3px solid gray;
            height: 500px;
        }
        .file-button {
            display: inline;
            margin-left: 2.8%;
            border: 1px solid black;
            cursor: pointer;
            padding: 0.4% 9.6%;
            /* justify-content: center; */
            text-align: right;
        }
        #photo {
            visibility: hidden;
        }

        #info-1 {
            display: inline;
        }
        #info-2 {
            display: inline;
        }

    </style>
</head>
<body>
    <nav>
        <h3> BLAP ABOUT </h3>
        <!-- 여기는 nav부분~~ -->
    </nav>

    <h3 style = 'text-align: center;'> New Bucket List </h3><br>

    <!-- 왼쪽 정보 적는 부분 (예상 비용 제외 부분) -->
    <div id="info-1">
        <form method="post" enctype="multipart/form-data" action="#">
        <tr>
            <td><span style = 'margin-left: 20%; '>제목 &nbsp;</span></td>
            <div class="vl"></div>
            <input type="text" name="title" style="margin: 1% 0 0 3.5%; padding: 1px; width: 23%;" />
        </tr><br><br><br>
        <tr>
            <td><span style = 'margin-left: 20%;'>카테고리</span></td>
            <div class="vl"></div>
            <td>
                <div style="margin: 100px 0 0px 35px; display: inline;">
                    <input type="checkbox" id="choice1" name="type" value="여행"> 여행&nbsp;&nbsp;
                    <input type="checkbox" id="choice2" name="type" value="운동"> 운동&nbsp;&nbsp;
                    <input type="checkbox" id="choice3" name="type" value="음식" > 음식&nbsp;&nbsp;
                    <input type="checkbox" id="choice4" name="type" value="취미" > 취미&nbsp;&nbsp;
                    <input type="checkbox" id="choice5" name="type" value="구매" > 구매&nbsp;&nbsp;
                    <input type="checkbox" id="choice6" name="type" value="기타" > 기타<br>
                </div>
            </td>
        </tr>
        
        <tr>
            <td><span style = 'margin-left: 20%;'>목표일 </span></td>
            <div class="vl"></div>
            <td><input type="date" style="margin: 3% 0 0px 3.5%; padding: 1px; width: 23%;" /></td>
        </tr><br><br><br>

        <tr>
            <td><span style = 'margin-left: 20%;'>필요도 &nbsp;&nbsp;</span></td>
            <div class="vl"></div>
            <td>
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
            </td>
        </tr><br><br><br>

        <tr>
            <td><span style = 'margin-left: 20%;'>선호도 &nbsp;&nbsp;</span></td>
            <div class="vl"></div>
            <td>   
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
            </td> 
        </tr><br><br><br>

        <tr>
            <td><span style = 'margin-left: 20%;'>우선순위</span></td>
            <div class="vl"></div>
            <td>
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
            </td>
        </tr><br>

        <tr>
            <td><span style = 'margin-left: 20%;'>사진 &nbsp;&nbsp;</span></td>
            <div class="vl"></div>
            <div class="file-button">
                <label for="photo">
                    업로드
                </label>
            </div>
            <td><input type="file" id="photo" name="photo"style="margin: 3% 0 0px 3.5%; padding: 1px; padding: 2px; width: 300px;" accept="image/*"/></td>
        </tr><br>
        
        <tr>
            <td><span style = 'margin-left: 20% ;'>메모 </span></td>
            <div class="vl"></div>
            <td><textarea cols="50" rows="5" name="detail" style="margin: 3% 0 0px 3.5%; padding:4px; width: 23%;"></textarea></td>
        </tr>
    
        <br>
            <td>
                <input type="reset" value="취소" style="margin-left: 45%; margin-top: 4%;" onclick="alert('취소되었습니다.');">
                <input type="submit" value="등록" style="margin-left: 55%;">
            </td>
    </table>
    </form>
</div>
<!-- 오른쪽 정보 적는 부분 (예상 비용) -->
<div id="info-2">
    <!-- <p style="margin-left: 60%;">예상 비용</p> -->

</div>

</body>
</html>