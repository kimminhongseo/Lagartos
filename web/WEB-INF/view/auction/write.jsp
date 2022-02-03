<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="titleVal" value="경매 글쓰기" />
<c:set var="actionVal" value="/auction/write" />
<c:set var="submitVal" value="경매등록" />
<c:set var="iboardVal" value="0" />
<c:set var="icategoryVal" value="${param.icategory}" />

<div>
    <h1>${titleVal}</h1>
    <form action="${auctionVal}" method="post">
        <input type="hidden" name="iboard" value="${iboardVal}">
        <input type="hidden" name="icategory" value="${icategoryVal}">
        <div>
            <label>제목 : <input type="text" name="title" value="<c:out value="${requestScope.data.title}"/>"></label>
        </div>
        <div>
            <label>내용 : <textarea name="ctnt"><c:out value="${requestScope.data.ctnt}"/></textarea> </label>
        </div>
        <div>
            <label>즉시구매가: <input type="number" name="imbuy"><c:out value="${requestScope.data.imbuy}"/></label>
            <label>경매가 : <input type="number" name="buy"><c:out value="${requestScope.data.buy}"/></label>
        </div>
        <div>이미지업로드~~~~~~~</div>


        <div><input type="submit" value="${submitVal}"></div>

    </form>

</div>
