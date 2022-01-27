<%@ page import="com.port.lagarto.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:if test="${sessionScope.loginUser != null}">
    <div id="dupLogin"></div>
</c:if>

<div class="logoMain"><img class="logo" src="/res/img/Lagarto.PNG"></div>

<form id="login" action="/user/login" method="post">
    <div>
        <div class="my-3"><input type="text" class="form-control" id="formId" placeholder="아이디" aria-label="Username"
                                 aria-describedby="basic-addon1" name="uid"></div>
    </div>
    <div>
        <div class="my-3"><input type="password" class="form-control" id="formPw" placeholder="비밀번호"
                                 aria-label="Username" aria-describedby="basic-addon1" name="upw"></div>
    </div>
    <div>
        <div class="my-4" id="btnUser">
            <button type="button" class="btn btn-outline-success" id="btnLogin" >로그인</button>
            <button type="button" class="btn btn-outline-success" id="btnJoin">회원가입</button>
        </div>
    </div>
    <c:if test="${requestScope.msg != null}">
        <div id="msg-login">${requestScope.msg}</div>
    </c:if>
</form>
<div class="social">
    <div class="row row-cols-2">
        <div class="col">
            <!-- 네이버 로그인 버튼 노출 영역 -->
            <div id="naver_id_login"></div>
        </div>
        <div class="col" onclick="loginWithKakao()"><img src="/res/img/kakao_login_medium.png"></div>
        <div class="col" onclick="fnFbCustomLogin();">
                    <a href="javascript:void(0)">
                        <span>Login with Facebook</span>
                    </a>
        </div>
        <div class="col">구글</div>
    </div>
</div>

<div class="findUser">
    <div class="my-1">
        <span>아이디 찾기/</span> <span>비밀번호 찾기</span>
    </div>
</div>

<div id="test"></div>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=612308656721361" nonce="SiOBIhLG"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 네이버 스크립트 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<!--네이버-->


