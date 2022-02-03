<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div id="data"
     data-icategory="${data.icategory}"
     data-iboard="${data.iboard}"
     data-nm="${sessionScope.loginUser.nm}"
     data-iuser="${sessionScope.loginUser.iuser}"
     data-profileimg="${sessionScope.loginUser.profile_img}">
</div>


<div>
    ~~~~~여기는 디테일 부분 ~~~~~
    <div>카테고리 : ${data.categorynm}</div>
    <div>제목 :<c:out value="${data.title}"/> </div>
    <div><c:out value="${data.ctnt}"/></div>
    <div>즉시 구매가: ${data.imbuy} 원</div>
    <div>현재가 : ${data.buy} 원 <span><button>// 가격올리는 기능 어찌할꼬 //</button></span></div>
    <div><img src="/res/img/pro.png"></div>
</div>