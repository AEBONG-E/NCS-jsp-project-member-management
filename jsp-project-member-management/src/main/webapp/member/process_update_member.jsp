<%--
  회원 수정 기능 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
    request.setCharacterEncoding("UTF-8");
    String id = (String) session.getAttribute("sessionMemberId");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String year = request.getParameter("birthyy");
    String month = request.getParameterValues("birthmm")[0];
    String day = request.getParameter("birthdd");
    String birth = year + "/" + month + "/" + day;
    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameterValues("mail2")[0];
    String email = mail1 + "@" + mail2;
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
%>

<%@ include file="../inc/dbconn_jstl.jsp" %>

<sql:update dataSource="${dataSource}" var="resultSet">
    UPDATE member_management SET password = ?, name = ?, gender = ?, birth = ?, email = ?, phone = ?, address = ? WHERE id = ?
    <sql:param value="<%=password%>" />
    <sql:param value="<%=name%>" />
    <sql:param value="<%=gender%>" />
    <sql:param value="<%=birth%>" />
    <sql:param value="<%=email%>" />
    <sql:param value="<%=phone%>" />
    <sql:param value="<%=address%>" />
    <sql:param value="<%=id%>" />
</sql:update>

<c:if test="${resultSet>=1}">
    <c:redirect url="result_member.jsp?msg=0" />
</c:if>
