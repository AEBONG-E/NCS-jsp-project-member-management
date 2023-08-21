<%--
    로그인 뷰 코드
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 페이지</title>
</head>
<body>
<%--<jsp:include page="../inc/menu.jsp" />--%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">로그인</h1>
    </div>
</div>
<div class="container" align="center">
    <div class="col-md-4 col-md-offset-4">
        <h3 class="form-signin-heading">Please sign in</h3>
        <c:if test="${not empty param.error}">
            <div class='alert alert-danger'>
                아이디와 비밀번호를 확인해 주세요
            </div>
        </c:if>
        <form class="form-signin" action="process_login_member.jsp" method="post">
            <div class="form-group">
                <label for="inputUserName" class="sr-only">User Name</label>
                <input id="inputUserName" type="text" class="form-control" placeholder="ID" name="id" required autofocus>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="sr-only">Password</label>
                <input id="inputPassword" type="password" class="form-control" placeholder="Password" name="password" required>
            </div>
            <button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
        </form>
    </div>
</div>
<%--<jsp:include page="../inc/footer.jsp" />--%>
</body>
</html>