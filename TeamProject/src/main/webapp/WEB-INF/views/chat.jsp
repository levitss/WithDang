<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="loginout" value="${sessionScope.member==null ? 'Login' : 'Logout' }" />
<c:set var="loginoutlink" value="${sessionScope.member==null ? '/login' : '/logout' }" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../../resources/image/favicon.ico" type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/chat.css">
    <script src="https://kit.fontawesome.com/kit_code.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/cac1ec65f4.js" crossorigin="anonymous"></script>
    <script src="./script/main.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
            integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
            integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
            crossorigin="anonymous"></script>

    <title>채팅</title>
</head>

<body>
<header>
    <nav class="navbar">

        <div class="navbar__logo">
            <a href="${pageContext.request.contextPath}/main">with DANG</a>
        </div>

        <ul class="navbar__menu">
            <li><a href="${pageContext.request.contextPath}/main">댕댕여지도</a></li>
            <li><a href="${pageContext.request.contextPath}/dangguen">댕근마켓</a></li>
            <li><a href="${pageContext.request.contextPath}/dangcare">댕댕케어</a></li>
            <li><a href="${pageContext.request.contextPath}/dangcomu/list">댕댕커뮤</a></li>
            <li><a href="${pageContext.request.contextPath}/dangoffice">댕사무소</a></li>
            <c:if test="${ member != null }">
                <li><a href="${pageContext.request.contextPath}/mypage"><i class="fa fa-user-o" id="btnMypage" aria-hidden="true"></i></a></li>
            </c:if>
            <li><button class="btnLogin"><a href="<c:url value='${loginoutlink }' />">${loginout}</a></button></li>

        </ul>

        <a href="#" class="navbar__toggleBtn">
            <i class="fas fa-bars" aria-hidden="true"></i>
        </a>
    </nav>
</header>


<p></p>

<div class="chat-container">
    <div class="chat-wrapper">
        <div class="chat-header">
            <h2>[쫑이사랑]님과의 채팅방</h2>
            <!-- <div class="chat-header-icons">
                <span class="icon icon-search"></span>
                <span class="icon icon-menu"></span>
            </div> -->
        </div>
        <div class="chat-body">
            <div class="message-bubble received">
                <div class="message-info">
                    <div class="message-sender">쫑이사랑</div>
                    <div class="message-timestamp">오후 2:30</div>
                </div>
                <div class="message-content">안녕하세요! 구매 원합니다!</div>
            </div>
            <div class="message-bubble sent">
                <div class="message-info">
                    <div class="message-timestamp">오후 2:35</div>
                </div>
                <div class="message-content">직거래 가능하신가요?</div>
            </div>
            <div class="message-bubble received">
                <div class="message-info">
                    <div class="message-sender">쫑이사랑</div>
                    <div class="message-timestamp">오후 2:37</div>
                </div>
                <div class="message-content">네! 오늘 저녁 퇴근 후 폴리텍대학교 앞에서 봅시다!</div>
            </div>
            <div class="message-bubble sent">
                <div class="message-info">
                    <div class="message-timestamp">오후 2:35</div>
                </div>
                <div class="message-content">넵 이따 만나요~</div>
            </div>
        </div>
        <div class="chat-footer">
            <span class="icon icon-plus"></span>
            <input type="text" placeholder="메시지를 입력하세요...">
            <span class="icon icon-smile"></span>
            <button>보내기</button>
        </div>
    </div>
</div>
</body>

</html>