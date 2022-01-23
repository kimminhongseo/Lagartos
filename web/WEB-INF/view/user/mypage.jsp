<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="row">
    <div class="col-4">
        <div class="list-group" id="list-tab" role="tablist">
            <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">회원 정보 설정</a>
            <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">비밀번호 변경</a>
            <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">거래 내역</a>
            <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="list-settings">나의 리뷰</a>
            <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-steamed" role="tab" aria-controls="list-steamed">나의 찜</a>
        </div>
    </div>
    <div class="col-8">
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                <div id="headerP">
                    <div id="h1_User">
                        <div>
                            <h1>회원 정보 수정</h1>
                        </div>
                        <div>
                            다양한 Lagarto 서비스에서 사용되는 나와 내 환경설정에 관한 정보입니다.
                        </div>
                    </div>

                    <img id="profileImg" src="/res/img/pro.png" class="img-thumbnail" alt="...">

                    <div id="userLi">
                        <table class="table" id="profile_my">
                            <tbody>
                            <tr>
                                <th scope="row">Level</th>
                                <td>1</td>
                            </tr>
                            <tr>
                                <th scope="row">성별</th>
                                <td>남자</td>
                            </tr>
                            <tr>
                                <th scope="row">닉네임</th>
                                <td>대용</td>
                            </tr>
                            <tr>
                                <th scope="row">팔로워</th>
                                <td>19</td>
                            </tr>
                            <tr>
                                <th scope="row">팔로잉</th>
                                <td>25</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="certification">
                    <div id="certification_h5"><h5>나의 인증 상태</h5></div>
                    <br>
                    <div id="certification_span">
                        <span>팔로워</span>
                        <span>팔로잉</span>
                        <span>업적</span>
                    </div>
                    <div id="certification_span1">
                        <span>email</span>
                        <span>휴대폰</span>
                        <span>계좌인증</span>
                    </div>
                    <br>
                </div>
            </div>
            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                <div>
                    <h1>비밀번호 변경</h1>
                    <div class="msg">${msg}</div>
                    <form action="/user/mypage/password" method="post" id="password-frm">
                        <div><label>현재 비밀번호 : <input type="password" name="currentupw"></label></div>
                        <div><label>변경 비밀번호 : <input type="password" name="upw"></label></div>
                        <div><label>확인 비밀번호 : <input type="password" id="confirmupw"></label></div>
                        <div><input type="submit" value="변경"></div>
                    </form>
                </div>
            </div>
            <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
            <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
            <div class="tab-pane fade" id="list-steamed" role="tabpanel" aria-labelledby="list-steamed-list">ㅋ</div>
        </div>
    </div>
</div>
