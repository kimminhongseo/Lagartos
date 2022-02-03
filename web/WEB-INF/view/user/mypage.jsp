<%@ page import="com.port.lagarto.Const" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="row">
	<div class="col-4">
		<div class="list-group" id="list-tab" role="tablist">
			<a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">회원 정보 설정</a><a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">비밀번호 변경</a><a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">거래 내역</a><a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="list-settings">나의 리뷰</a><a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#list-steamed" role="tab" aria-controls="list-steamed">나의 찜</a>
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
					<div id="mypage_container">
						<div>
							<img id="profileImg" src="/res/img/pro.png" class="img-thumbnail" alt="...">
						</div>
						<div id="userLi">
							<table class="table" id="profile_my">
								<tbody>
								<tr>
									<th scope="row">
										Level
									</th>
									<td>
										1
									</td>
								</tr>
								<tr>
									<th scope="row">
										성별
									</th>
									<td>
										남자
									</td>
								</tr>
								<tr>
									<th scope="row">
										닉네임
									</th>
									<td>
										대용
									</td>
								</tr>
								<tr>
									<th scope="row">
										팔로워
									</th>
									<td>
										19
									</td>
								</tr>
								<tr>
									<th scope="row">
										팔로잉
									</th>
									<td>
										25
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="certification">
					<div id="certification_h5">
						<h5>나의 인증 상태</h5>
					</div>
					<br>
					<div id="certification_span">
						<span id="email_span">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="email-button">
						Email </button>
							<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Email 인증</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" id="email-modal">
										<div>
											<div>
												<input type="text" class="form-control" id="formEmail" placeholder="이메일" aria-label="Username" aria-describedby="basic-addon1">
												<button class="btn btn-primary" type="button" id="formEmail-send">인증메일 전송</button>
											</div>
											<div>
												<input type="text" class="form-control" id="formEmail_Number" placeholder="인증번호 입력" aria-label="Username" aria-describedby="basic-addon1">
												<button class="btn btn-primary" type="button" id="formEmail_submit">확인</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
									</div>
								</div>
							</div>
						</div>
						</span>
						<span>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1" id="Phone-button">휴대폰</button>
							<!-- Modal -->
						<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel1">휴대폰 인증</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" id="phone-modal">
										<div>
											<div>
												<input type="text" class="form-control" id="formPhone" placeholder="휴대폰" aria-label="Username" aria-describedby="basic-addon1">
												<button class="btn btn-primary" type="button" id="formPhone-send">인증번호 전송</button>
											</div>
											<div>
												<input type="text" class="form-control" id="formPhone_Number" placeholder="인증번호 입력" aria-label="Username" aria-describedby="basic-addon1">
												<button class="btn btn-primary" type="button" id="formPhone_submit">확인</button>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						</span>
						<span>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
						팔로워</button>
							<!-- Modal -->
						<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable" id="modal-foll">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel2">팔로워</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<table class="table">
										<thead>
										<tr>
											<th scope="col">
												 이름
											</th>
											<th scope="col">
												 sangtae
											</th>
											<th scope="col">
												 Level
											</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												 균기
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 gyungi
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 수아
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 sua
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 유영
											</td>
											<td>
												 follow
											</td>
											<td>
												 m
											</td>
										</tr>
										<tr>
											<td>
												 yuyoung
											</td>
											<td>
												 follow
											</td>
											<td>
												 1
											</td>
										</tr>
										<tr>
											<td>
												 대용
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 dyeyoung
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 도흠
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 dohum
											</td>
											<td>
												 follow
											</td>
											<td>
												 2
											</td>
										</tr>
										<tr>
											<td>
												 현민
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 성완
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 동윤
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 check
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 this
											</td>
											<td>
												 follow
											</td>
											<td>
												 2
											</td>
										</tr>
										<tr>
											<td>
												 out
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										<tr>
											<td>
												 상수
											</td>
											<td>
												 follow
											</td>
											<td>
												 4
											</td>
										</tr>
										</tbody>
										</table>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						</span>
						<span>팔로잉</span>
					</div>
					<br>
					<div id="Precautions">
						<div id="Precautions-text">
							<div>
								* 닉네임은 변경 시점 30일 이후로 변경이 가능합니다.
							</div>
							<div>
								* 다른 문제 발생시 고객센터로 문의 해주십시오.
							</div>
							<div>
								* 이메일 인증, 휴대폰인증을 완료 해주십시오.
							</div>
							<div>
								* 본인 명의 휴대폰으로 인증 해주십시오.
							</div>
							<div>
								* Level을 활성 조건(휴대폰 인증, 이메일 인증)
							</div>
							<div>
								* 담당자 김대용(eodyd0313@gmail.com)
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
				<div id="header-password">
					<div>
						<h1>비밀번호 변경</h1>
					</div>
				</div>
				<div id="password-frm">
					<div id="data" data-iuser="${sessionScope.loginUser.iuser}"></div>
					<div>
					<div id="password-update">
						<div>
							<span id="password-current">현재 비밀번호</span>
							<span><input type="password" name="upw" size="50" id="password-current-input"></span>
						</div>

						<div>
							<span id="password-upd">변경 비밀번호</span>
							<span><input type="password" size="50" id="password-upd-input" name="newUpw"></span>
						</div>

						<div>
							<span id="password-chk">확인 비밀번호</span>
							<span><input type="password" size="50" id="password-chk-input" name="confirmupw"></span>
						</div>

						<div>
							<input class="btn btn-primary" id="password-smt" type="submit" value="비밀번호 변경" onsubmit="password()" n>
						</div>
					</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">

			</div>
			<div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
				...
			</div>
			<div class="tab-pane fade" id="list-steamed" role="tabpanel" aria-labelledby="list-steamed-list">
				ㅋ
			</div>
		</div>
	</div>
</div>