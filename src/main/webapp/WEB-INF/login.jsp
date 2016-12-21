<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Login" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="jumbotron">
    <div class="container">
        <h1>Login</h1>
        <h2>If you haven't yet registered, please do so <a href="/register">here</a>.</h2>
    </div>
    </div>
    <div class="container">
        <div ng-view class="col-md-3"></div>
        <form ng-view class="col-md-6 content" action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Log In">
        </form>
        <div ng-view class="col-md-3"></div>
    </div>
    </div>
</body>
</html>
