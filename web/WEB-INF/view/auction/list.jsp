<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<h1>현재 경매 리스트</h1>
<!--로그인이 되었을때-->
<div><a href="/auction/write">글쓰기</a></div>
<div>검색기능?</div>
<div class="auction_container">
    <ul class="auction_list">
        <c:forEach items="${requestScope.list}" var="item">
            <li onclick="moveToDetail(${item.iboard})">
                <div>
                    <img src="/res/img/Lagarto.PNG">
                </div>
                <div>조회수 : ${item.hits}</div>
                <div>작성자 : ${item.iuser} </div>
                <div class="auction_info">
                    <div>제목 : ${item.title}</div>
                    <div>내용 : ${item.ctnt}</div>
                </div>
                <div>
                    <div>즉시구매가 : ${item.imbuy} 원</div>
                    <div>경매가 : ${item.buy} 원</div>
                </div>

            </li>


        </c:forEach>

    </ul>



</div>