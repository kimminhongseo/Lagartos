<%@ page import="com.port.lagarto.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="wrap">
    <h1>회원가입</h1>
    <div id="join">
        <form action="/user/join" method="post" id="join_form">
            <div class="form_container">
                <div>
                    <div class="input_name">아이디 (이메일)</div>
                    <label>
                        <button type="reset" class="btn_option reset_btn"></button>
                        <sapn hidden>이메일</sapn>
                        <input type="text" name="uid" placeholder="예) lagarto@lagarto.com" data-regex="<%=Const.UID%>" required autofocus>
                        <span class="warning" rel="email-warning"></span>
                    </label>
                </div>
                <div>
                    <div class="input_name">비밀번호</div>
                    <label>
                        <button type="reset" class="btn_option reset_btn"></button>
                        <span hidden>비밀번호</span>
                        <input type="password" name="upw" placeholder="영문, 숫자, 특수문자 조합 8-16자" data-regex="<%=Const.UPW%>" required>
                    </label>
                </div>
                <div>
                    <div class="input_name">비밀번호 확인</div>
                    <label>
                        <button type="reset" class="btn_option reset_btn"></button>
                        <button class="btn_option"></button>
                        <span hidden>비밀번호 재확인</span>
                        <input type="password" name="upw_check" placeholder="비밀번호 확인" required>
                    </label>
                </div>
                <div>
                    <div class="input_name">휴대전화</div>
                    <div class="num_wrap">
                        <label class="num_box">
                            <span hidden>휴대전화</span>
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
                            <span hidden>휴대전화</span>
                            <input type="number" name="contact_second" maxlength="4" data-regex="<%=Const.CONTACT_SECOND%>" required>
                        </label>
                        <label class="num_box">
                            <span hidden>휴대전화</span>
                            <input type="number" name="contact_third" maxlength="4" data-regex="<%=Const.CONTACT_THIRD%>" required>
                        </label>
                    </div>
                </div>
            </div>
            <div>
                <h2 class="hidden">이용약관</h2>
                <div class="disc_all">
                    <input id="disc_agree_all" name="disc_agree_all" type="checkbox">
                    <label for="disc_agree_all" ></label>
                    <span>약관 전체 동의</span>
                </div>
                <div class="disc_cont">
                    <div class="disc">
                        <input id="disc_agree_a" name="disc_agree_a" type="checkbox" value="1">
                        <label for="disc_agree_a"></label>
                        <a href="/">[필수] 이용 약관에 동의합니다.</a>
                    </div>
                    <div class="disc">
                        <input id="disc_agree_b" name="disc_agree_b" type="checkbox" value="1">
                        <label for="disc_agree_b"></label>
                        <a href="/">[필수] 개인정보 수집 및 이용에 동의합니다.</a>
                    </div>
                    <div class="disc">
                        <input id="disc_agree_c" name="disc_agree_c" type="checkbox" value="1">
                        <label for="disc_agree_c"></label>
                        <a href="/">[선택] 쇼핑정보 수신에 동의합니다.</a>
                    </div>
                </div>
            </div>
            <div class="btn_cont">
                <input class="object_button prop_light" type="button" value="취소">
                <input class="object_button prop_dark" type="submit" value="회원가입">
            </div>
        </form>
    </div>
</div>