<%--
  로그아웃 기능 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  session.invalidate();
  response.sendRedirect("login_member.jsp");
%>
