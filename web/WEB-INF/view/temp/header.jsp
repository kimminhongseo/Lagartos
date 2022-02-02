<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<header>
    <div class="dropdown">
        <a href="/auction/list"><button class="dropbtn">경매</button></a>
        <div class="dropdown-content">
            <a href="/auction/list/1">리자드/모니터</a>
            <a href="/auction/list/2">게코/스킨크</a>
            <a href="/auction/list/3">레오파드 게코</a>
            <a href="/auction/list/4">크레스티드 게코</a>
            <a href="/auction/list/5">카멜레온</a>
        </div>
        <button class="dropbtn">용품</button>
        <div class="dropdown-content">
            <a href="#">Link 1</a>
            <a href="#">Link 2</a>
            <a href="#">Link 3</a>
        </div>
        <button class="dropbtn">리뷰</button>
        <button class="dropbtn">고객센터</button>
        <button class="dropbtn">마이페이지</button>
    </div>

</header>
