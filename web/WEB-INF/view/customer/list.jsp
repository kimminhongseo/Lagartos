<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h1>리뷰 게시판</h1>
<c:if test="${sessionScope.loginUser != null}">
    <div><a href="/board/write">글쓰기</a></div>
    <div><a href="/user/logout">로그아웃</a></div>
</c:if>
<div>
    <c:choose>
        <c:when test="${fn:length(requestScope.list) == 0}">
            게시글이 없습니다.
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>번호 | </th>
                    <c:choose>
                        <c:when test="${requestScope.board_type == 1}">
                            <th>상품제목 | </th>
                        </c:when>
                        <c:otherwise></c:otherwise>
                    </c:choose>
                    <th>제목 | </th>
                    <th>작성자 | </th>
                    <th>작성일시</th>
                </tr>
                <c:forEach items="${requestScope.list}" var="item">
                    <tr class="record" data-iboard="${item.iboard}">
                        <td>${item.iboard}</td>
                        <c:choose>
                            <c:when test="${requestScope.board_type == 1}">
                                <td><c:out value="${item.productTitle}"/></td>
                            </c:when>
                        </c:choose>
                        <td><c:out value="${item.title}"/></td>
                        <td><c:out value="${item.nickname}"/></td>
                        <td>${item.rdt}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</div>