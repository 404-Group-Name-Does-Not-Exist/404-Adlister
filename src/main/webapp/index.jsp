<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navIndex.jsp" />
    <div class='jumbotron' >
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-lg-12" >
                    <h1 class="welcome-text">Welcome to Adlister.</h1>
                    <h2>Free classifieds service. Post and find ads for used cars, real estate, jobs, smartphones, apartments and more.</h2>
                </div>
                <div class="row">
                    <div id="custom-search-input">
                    <form action="/ads" method="GET" class="search-form" role="search">
                        <div class="input-group col-md-10 col-md-offset-1">
                            <input id="search" name="search" type="text" class="search-query form-control" placeholder="Search" />
                            <span class="input-group-btn">
                                <button class="btn btn-danger" type="submit">
                                    <span class=" glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="container">--%>
        <%--<h1>Welcome!</h1>--%>
        <%--<h2><a href="/login">Login</a> or <a href="/register">register</a> to create an ad.</h2>--%>
    <%--</div>--%>
</body>
</html>
