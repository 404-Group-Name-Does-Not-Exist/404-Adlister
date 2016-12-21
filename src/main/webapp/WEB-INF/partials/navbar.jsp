<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <%
                if (request.getSession().getAttribute("user") == null)
                {
                    %>
            <li><a href="/login">Login</a></li>
            <li><a href="/register">Register</a></li>
            <%
                } else {
            %>
            <li><a href="/ads/create">Create an Ad!</a> </li>
            <li><a href="/profile">Your Profile</a></li>
            <li><a href="/logout">Logout</a></li>
            <%
                }
            %>
    </ul>
        <form action="/ads" method="GET" class="navbar-form" role="search">
            <div class="input-group">
                <input id="search" name="search" type="text" class="form-control" placeholder="Search">
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-search">
                            <span class="sr-only">Search</span>
                        </span>
                    </button>
                </span>
            </div>
        </form>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
