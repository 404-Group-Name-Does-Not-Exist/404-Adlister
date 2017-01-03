<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-default main-navigation" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <!-- Stat Toggle Nav Link For Mobiles -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- End Toggle Nav Link For Mobiles -->
            <a class="navbar-brand logo" href="/ads"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="nav navbar-nav navbar-right">
                <%
                    if (request.getSession().getAttribute("user") == null)
                    {
                %>
                <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                <li><a href="/register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
                <li class="postadd"><a class="btn btn-danger btn-post" href="/ads/create">Create an Ad!<span class="glyphicon glyphicon-plus-sign"></span></a></li>

                <%
                } else {
                %>

                <li><a href="/profile"><span class="glyphicon glyphicon-knight"></span>Your Profile</a></li>
                <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                <li class="postadd"><a class="btn btn-danger btn-post" href="/ads/create">Create an Ad!<span class="glyphicon glyphicon-plus-sign"></span></a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>