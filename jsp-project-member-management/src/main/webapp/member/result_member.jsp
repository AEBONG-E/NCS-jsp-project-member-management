<%--
    회원가입 결과 뷰
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>


</head>
<body>
<%--<%@include file="../inc/menu.jsp"%>--%>
<div class="container">
    <h1>환영합니다.</h1>
    <c:choose>
        <c:when test="${param.msg == '1'}">
            <div class="alert alert-success" role="alert">
                회원가입이 성공적으로 완료되었습니다.
            </div>
        </c:when>
    </c:choose>
    <button class="btn btn-primary" onclick="location.href='../main/welcome.jsp'">메인 페이지로 이동</button>
</div>

<%--<%@ include file="../inc/footer.jsp"%>--%>
</body>
</html>