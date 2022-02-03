<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<h1>현재 경매 리스트</h1>
<!--
전체 리스트에선 보기만하고 특정종류 눌렀을때 글쓰기 가능하게
ge의 의미는 >= 부등호 표시
-->
<c:if test="${requestScope.icategory ge 1}">
    <div><a href="/auction/write?icategory=${requestScope.icategory}">글쓰기</a></div>
</c:if>
<div>검색기능?</div>
<!--grid  css or bootstrap-->
<div class="auction_container">
    <ul class="auction_list">
        <c:forEach items="${requestScope.list}" var="item">
            <li class="record" data-iboard="${item.iboard}">
                <div>
                    <img src="/res/img/Lagarto.PNG">
                </div>
                <div>조회수 : ${item.hits}</div>
                <c:choose>
                    <c:when test="${item.writernm == null}">
                        <div>작성자가 없습니다.</div>
                    </c:when>
                    <c:otherwise><div>작성자 : ${item.writernm} </div></c:otherwise>
                </c:choose>


                <div class="auction_info">
                    <div>제목 : ${item.title}</div>
                    <div>내용 : ${item.ctnt}</div>
                </div>
                <div>
                    <div>즉시구매가 : ${item.imbuy} 원</div>
                    <div>경매가 : ${item.buy} 원<span><button name="priceinc">가격UP</button></span></div>
                </div>

            </li>


        </c:forEach>

    </ul>



</div>