<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div>
    <h1>글쓰기</h1>
    <form action="/auction/write" method="post">
        <input type="hidden" name="iboard" value="0">
        <input type="hidden" name="icategory" value="0">
        <div>
            <label>제목 : <input type="text" name="title" value="<c:out value="${requestScope.data.title}"/>"></label>
        </div>
        <div>
            <label>내용 : <textarea name="ctnt"><c:out value="${requestScope.data.ctnt}"/></textarea> </label>
        </div>
        <div>
            <label>즉시구매가: <input type="number" name="imbuy"></label>
            <label>경매가 : <input type="number" name="buy" value="0"></label>
        </div>

        <div><input type="submit" value="경매등록"></div>

    </form>

</div>
