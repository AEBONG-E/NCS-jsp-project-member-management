<%--
  로그인 기능 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
%>

<%@ include file="../inc/dbconn_jstl.jsp"%>

<sql:query dataSource="${dataSource}" var="resultSet">
    SELECT * FROM member_management WHERE id = ? AND password = ?
    <sql:param value="<%=id%>" />
    <sql:param value="<%=password%>" />
</sql:query>

<c:choose>
    <c:when test="${not empty resultSet.rows}">
        <c:forEach var="row" items="${resultSet.rows}">
            <c:set var="sessionMemberId" value="${row.id}" />
            <c:set var="sessionMemberName" value="${row.name}" />
        </c:forEach>
        <c:set scope="session" var="sessionMemberId" value="${sessionMemberId}" />
        <c:set scope="session" var="sessionMemberName" value="${sessionMemberName}" />
        <c:redirect url="result_member.jsp?msg=2" />
    </c:when>
    <c:otherwise>
        <c:redirect url="login_member.jsp?error=1" />
    </c:otherwise>
</c:choose>
