<%--
  ajax 비동기 통신을 활용한 아이디 중복 확인 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
%>

<%@ include file="../inc/dbconn_jstl.jsp"%>

<sql:query var="resultSet" dataSource="${dataSource}">
    SELECT COUNT(*) AS cnt FROM member_management WHERE id = ?
    <sql:param value="<%=id%>" />
</sql:query>
{"result":
<c:forEach var="row" items="${resultSet.rows}">
    <c:choose>
        <c:when test="${row.cnt == 1}">
            "true"
        </c:when>
        <c:otherwise>
            "false"
        </c:otherwise>
    </c:choose>
</c:forEach>
}