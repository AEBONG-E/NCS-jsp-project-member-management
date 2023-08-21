<%--
  회원 삭제 기능 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%
    String sessionId = (String) session.getAttribute("sessionMemberId");
%>

<%@ include file="../inc/dbconn_jstl.jsp" %>

<sql:update dataSource="${dataSource}" var="resultSet">
    DELETE FROM member_management WHERE id = ?
    <sql:param value="<%=sessionId%>" />
</sql:update>

<c:if test="${resultSet>=1}">
    <c:import var="url" url="process_logout_member.jsp" />
    <c:redirect url="result_member.jsp" />
</c:if>