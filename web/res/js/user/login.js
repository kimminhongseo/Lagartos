


{
    let btnLoginElem = document.querySelector('#btnLogin');

    if (btnLoginElem) {
        btnLoginElem.addEventListener('click', () => {
            alert('실행');
        });
    }


    // 휴대전화 인증 페이지 (/user/certification) 이동
    let btnJoinElem = document.querySelector('#btnJoin');

    if (btnJoinElem) {
        btnJoinElem.addEventListener('click', () => {
            openJoinWin();
        })
    }

    function openJoinWin() {
        window.open(
            "/user/certification",
            "_blank",
            "width=800, height=700, location=no, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
    }


    //기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
    function statusChangeCallback(res) {
        statusChangeCallback(response);
    }


    function fnFbCustomLogin() {
        FB.login(function (response) {
            if (response.status === 'connected') {
                FB.api('/me', 'get', {fields: 'name,email'}, function (r) {
                    let url = '/user/login';
                    console.log(r);

                    fetch(url, {
                        method: 'post',
                        headers: {'Content-type': 'application/json'},
                        body: JSON.stringify(r)
                    }).then(function (res) {
                        return res.json();
                    })
                    location.href = "/user/join";
                })
            } else if (response.status === 'not_authorized') {
                // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
                alert('앱에 로그인해야 이용가능한 기능입니다.');
            } else {
                // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
                alert('페이스북에 로그인해야 이용가능한 기능입니다.');
            }
        }, {scope: 'public_profile,email'});
    }

    window.fbAsyncInit = function () {
        FB.init({
            appId      : '100077093453861', // 내 앱 ID를 입력한다.
            cookie     : true,
            xfbml      : true,
            version    : 'v12.0'
        });
        FB.AppEvents.logPageView();
    };

}
//카카오
{
    //카카오 초기화
    Kakao.init('26fdb40a974d81a0ceaf74ba448073cd');
    console.log( Kakao.isInitialized() ); // 초기화 판단여부

    //데모버전으로 들어가서 카카오로그인 코드를 확인.
    function loginWithKakao() {
        Kakao.Auth.login({
            success: function (authObj) {
                console.log(authObj); // access토큰 값
                Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

                getInfo();
            },
            fail: function (err) {
                console.log(err);
            }
        });
    }

    //액세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
    function getInfo() {
        Kakao.API.request({
            url: '/v2/user/me',
            success: function (res) {
                console.log(res);
                // 이메일, 닉네임
                const kakao_user_info = {
                    email: res.kakao_account.email,
                    name: res.kakao_account.profile.nickname
                }
                let url = '/user/login';
                console.log(kakao_user_info);

                fetch(url, {
                    method : 'post',
                    headers : {'Content-type' : 'application/json'},
                    body : JSON.stringify(kakao_user_info)
                }).then(function (res){
                    return res.json();
                })
                location.href = "/user/join";
            },
            fail: function (error) {
                alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
            }
        });
    }

    //로그아웃 기능 - 카카오 서버에 접속하는 엑세스 토큰을 만료, 사용자 어플리케이션의 로그아웃은 따로 진행.
    function kakaoLogout() {
        if (!Kakao.Auth.getAccessToken()) {
            alert('Not logged in.');
            return;
        }
        Kakao.Auth.logout(function() {
            alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
        });
    }

    <!--네이버-->
    {
        var naverLogin = new naver.LoginWithNaverId(
            {
                clientId: "Olu165BkwTiB1vNvozvn", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                callbackUrl: "http://localhost:8090/user/login", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                isPopup: false, //true주니까 팝업창에 또 로그인 페이지 뜨더라~
                callbackHandle: true
            }
        );

        naverLogin.init();

        window.addEventListener('load', function () {
            naverLogin.getLoginStatus(function (status) {
                if (status) {
                    var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.

                    console.log(naverLogin.user);
                    //나의 정보들

                    console.log(naverLogin.user.email);
                    console.log(naverLogin.user.name);

                    if (email == undefined || email == null) {
                        alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                        naverLogin.reprompt();
                        return;
                    }
                } else {
                    console.log("callback 처리에 실패하였습니다.");
                }
            });
        });


        var testPopUp;

        function openPopUp() {
            testPopUp = window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
        }

        function closePopUp() {
            testPopUp.close();
        }

        function naverLogout() {
            openPopUp();
            setTimeout(function () {
                closePopUp();
            }, 1000);


        }


    }

}