<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title_val" value="글쓰기" />
<c:set var="action_val" value="/customer/write" />
<c:set var="submit_val" value="WRITE" />
<c:set var="iboard_val" value="0" />
<c:set var="board_cd_val" value="${param.board_cd}" />
<c:if test="${requestScope.data != null && requestScope.data.iboard > 0}">
    <c:set var="title_val" value="수정" />
    <c:set var="action_val" value="/customer/mod" />
    <c:set var="submit_val" value="MOD" />
    <c:set var="iboard_val" value="${requestScope.data.iboard}" />
    <c:set var="board_cd_val" value="0" />
</c:if>
<div>
    <form action="/customer/write" method="post">
        <div class="mb-3">
            <input type="text" class="form-control" id="title" placeholder="제목">
        </div>
        <div class="mb-3">
            <textarea class="form-control" id="ctnt" rows="3" placeholder="내용을 입력해 주세요."></textarea>
        </div>
        <div class="mb-3">
            <input class="form-control" type="file" id="formFileMultiple" multiple>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <button type="reset" class="btn btn-outline-secondary">Reset</button>
    </form>
</div>