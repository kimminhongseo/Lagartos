<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="logoMain"><img class="logo" src="/res/img/Lagarto.PNG"></div>

<form id="login" action="/user/login" method="post">
    <div>
        <div class="my-3"><input type="text" class="form-control" id="formId" placeholder="아이디" aria-label="Username"
                                 aria-describedby="basic-addon1"></div>
    </div>
    <div>
        <div class="my-3"><input type="password" class="form-control" id="formPw" placeholder="비밀번호"
                                 aria-label="Username" aria-describedby="basic-addon1"></div>
    </div>
    <div>
        <div class="my-4" id="btnUser">
            <button type="button" class="btn btn-outline-success" id="btnLogin">로그인</button>
            <button type="button" class="btn btn-outline-success" id="btnJoin">회원가입</button>
        </div>
    </div>
</form>
<div class="social">
    <div class="row row-cols-2">
        <div class="col">네이버</div>
        <div class="col" onclick="loginWithKakao()"><img src="/res/img/kakao_login_medium.png"></div>
        <div class="col">페이스북</div>
        <div class="col">구글</div>
    </div>
</div>

<div class="findUser">
    <div class="my-1">
        <span>아이디 찾기/</span> <span>비밀번호 찾기</span>
    </div>
</div>

<div id="test"></div>



<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v12.0&appId=100077093453861" nonce="SiOBIhLG"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>



