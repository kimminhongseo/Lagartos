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
        <div class="col">카카오톡</div>
        <div class="col" onclick="fnFbCustomLogin();">
                    <a href="javascript:void(0)">
                        <span>Login with Facebook</span>
                    </a>
        </div>
        <div class="col">구글</div>
    </div>
</div>

<div id="test"></div>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/user/certification" method="post" id="cert_form">
                    <div class="form_container">
                        <div>
                            <div class="input_name">휴대전화</div>
                            <div class="num_wrap">
                                <label class="num_box">
                                    <select name="contact_first">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                </label>
                                <label class="num_box">
                                    <input type="number" name="contact_second" maxlength="4" data-regex="<%=Const.CONTACT_SECOND%>" required>
                                </label>
                                <label class="num_box">
                                    <input type="number" name="contact_third" maxlength="4" data-regex="<%=Const.CONTACT_THIRD%>" required>
                                </label>
                            </div>
                        </div>

                        <div class="btn_cont">
                            <input class="object_button prop_light" type="button" value="취소">
                            <input class="object_button prop_dark" type="submit" value="인증하기">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=612308656721361" nonce="SiOBIhLG"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>



