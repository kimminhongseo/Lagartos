<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title_val" value="글쓰기" />
<c:set var="action_val" value="/customer/write" />
<c:set var="submit_val" value="WRITE" />
<c:set var="iboard_val" value="0" />
<c:set var="board_type_val" value="${param.board_type}" />
<c:if test="${requestScope.data != null && requestScope.data.iboard > 0}">
    <c:set var="title_val" value="수정" />
    <c:set var="action_val" value="/customer/mod" />
    <c:set var="submit_val" value="MOD" />
    <c:set var="iboard_val" value="${requestScope.data.iboard}" />
    <c:set var="board_type_val" value="0" />
</c:if>
<div class="flex-container flex-center flex-direction-column">
    <h1>${title_val}</h1>
    <form action="${action_val}" method="post">
        <input type="hidden" name="iboard" value="${iboard_val}">
        <input type="hidden" name="board_type" value="${board_type_val}">
        <div>
            <label>제목 : <input type="text" name="title" value="<c:out value='${requestScope.data.title}'/>">
            </label>
        </div>
        <div>
            <label>내용 : <textarea name="ctnt"><c:out value="${requestScope.data.ctnt}" /></textarea>
            </label>
        </div>
        <div><input type="submit" value="${submit_val}"></div>
    </form>
</div>