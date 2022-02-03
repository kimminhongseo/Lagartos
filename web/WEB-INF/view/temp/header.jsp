<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>



<%--    <nav class="navbar navbar-expand-lg navbar-light">--%>
<%--        <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--            <li class="nav-item dropdown">--%>
<%--                <a class="nav-link dropdown-toggle" href="/auction/list" id="navDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">도마뱀</a>--%>
<%--                <ul class="lnb dropdown-menu">--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/1">1</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/2">2</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/3">3</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/4">4</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/5">5</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/6">6</a></li>--%>
<%--                    <li><a class="dropdown-item" href="/auction/list/7">7</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--            <li class="nav-item">용품</li>--%>
<%--            <li class="nav-item">리뷰</li>--%>
<%--            <li class="nav-item">고객센터</li>--%>
<%--            <li class="nav-item">마이페이지</li>--%>

<%--        </ul>--%>
<%--    </nav>--%>


    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href=""><img src="/res/img/lagarto_logo.svg" alt="" width="100" height="24"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="/auction/list" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">도마뱀</a>
                        <ul class="lnb dropdown-menu">
                            <li><a class="dropdown-item" href="/auction/list/">도마뱀 전체보기</a></li>
                            <li><a class="dropdown-item" href="/auction/list/1">리자드/모니터</a></li>
                            <li><a class="dropdown-item" href="/auction/list/2">게코/스킨크</a></li>
                            <li><a class="dropdown-item" href="/auction/list/3">레오파드 게코</a></li>
                            <li><a class="dropdown-item" href="/auction/list/4">크레스티드 게코</a></li>
                            <li><a class="dropdown-item" href="/auction/list/5">카멜레온</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="">용품</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/customer/list/1">리뷰</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/customer/list/2">커뮤니티</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/customer/list/3">고객센터</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>


<%--    <div class="dropdown">--%>
<%--        <a href="/auction/list"><button class="dropbtn">경매</button></a>--%>
<%--        <div class="dropdown-content">--%>
<%--            <a href="/auction/list/1">리자드/모니터</a>--%>
<%--            <a href="/auction/list/2">게코/스킨크</a>--%>
<%--            <a href="/auction/list/3">레오파드 게코</a>--%>
<%--            <a href="/auction/list/4">크레스티드 게코</a>--%>
<%--            <a href="/auction/list/5">카멜레온</a>--%>
<%--        </div>--%>
<%--        <button class="dropbtn">용품</button>--%>
<%--        <div class="dropdown-content">--%>
<%--            <a href="#">Link 1</a>--%>
<%--            <a href="#">Link 2</a>--%>
<%--            <a href="#">Link 3</a>--%>
<%--        </div>--%>
<%--        <button class="dropbtn">리뷰</button>--%>
<%--        <button class="dropbtn">고객센터</button>--%>
<%--        <button class="dropbtn">마이페이지</button>--%>
<%--    </div>--%>


