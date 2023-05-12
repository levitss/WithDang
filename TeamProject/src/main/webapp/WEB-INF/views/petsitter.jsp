<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="loginout" value="${member==null ? 'Login' : 'Logout' }" />
<c:set var="loginoutlink" value="${member==null ? '/login' : '/logout' }" />
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/care.css">
    <script src="https://kit.fontawesome.com/kit_code.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/cac1ec65f4.js" crossorigin="anonymous"></script>
    <script src="resources/js/main.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
        integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
        integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
        crossorigin="anonymous"></script>

    <title>펫시터지원하기</title>
</head>

<body>
    <header>
        <nav class="navbar">

            <div class="navbar__logo">
                <a href="/withdang">with DANG</a>
            </div>

            <ul class="navbar__menu">
                <li><a href="/withdang">댕댕여지도</a></li>
                <li><a href="/withdang/dangguen">댕근마켓</a></li>
                <li><a href="/withdang/dangcare">댕댕케어</a></li>
                <li><a href="/withdang/dangcomu">댕댕커뮤</a></li>
                <li><a href="/withdang/dangoffice">댕사무소</a></li>
                <c:if test="${ member != null }">
                	<li><a href="/withdang/mypage"><i class="fa fa-user-o" id="mypage" aria-hidden="true"></i></a></li>
                </c:if>
                <li><button class="btnLogin"><a href="<c:url value='${loginoutlink }' />">${loginout}</a></button></li>

            </ul>
            <a href="#" class="navbar__toggleBtn">
                <i class="fas fa-bars" aria-hidden="true"></i>
            </a>
        </nav>
    </header>

    <div class="form-sec">
        <form id="form-pet">
            <h1 id="title-pet">펫시터 지원하기</h1><br>
            <section id="user-form">
                <p>1. 필수정보</p>
                <p></p>
                <p>●이름
                <p></p><input type="text" name="name" class="input-form" placeholder="실명 입력"></p>
                <p>●생일
                <p></p><input type="text"  name="birth" class="input-form" placeholder="생년월일 8자리로 입력">
                <fieldset calss="input-box">
                    <label>
                        <input type="radio" name="gender" value="man">남
                        <input type="radio" name="gender" value="woman">여</p>
                    </label>
                </fieldset>

                <p>●연락처
                <p></p><input type="text"  name="phone" class="input-form" placeholder="숫자로 입력"></p>
                <p>●거주지 주소
                <p></p><input type="text"  name="adress" class="input-form" placeholder="시/군/구까지 입력"></p>
                <p>●거주지 유형</p>
                
                        <input type="radio" name="residence" value="">20평 이하
                        <input type="radio" name="residence" value="">20평 이상
                        <input type="radio" name="residence" value="">마당 있음
            
                <p>●본인 포함 가족구성원 흡연 여부</p>
                <input type="radio" name="smoke" value="">예
                <input type="radio" name="smoke" value="">아니오
                <br>
                <hr> <br>
                <p class="cureer">2. 반려동물 경험 및 경력</p>
                <p></p>
                <p>●현재 반려동물이 있습니까?</p>
                <input type="radio" name="pet" value="">있음
                <input type="radio" name="pet" value="">없음
                <p>●강아지 반려 경험 유무</p>
                <input type="radio" name="exp" value="">있음
                <input type="radio" name="exp" value="">없음
                <p>●기타 반려 경험 유무(상세히 적어주세요.)</p>
                <textarea style="width:80%; height:100px" class="textarea-form" name="etc"></textarea>

            </section>
            <button class="sumit-btn">지원하기</button>

        </form>
    </div>


</body>

</html>