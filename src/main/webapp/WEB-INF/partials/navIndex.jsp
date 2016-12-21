<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-dark bg-inverse">
    <div class="container-fluid">
        <a class="navbar-brand" href="/ads">Adlister</a>
        <ul class="nav navbar-nav">
            <%
                if (request.getSession().getAttribute("user") == null)
                {
            %>
            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="/register">Register</a></li>
            <%
            } else {
            %>
            <li class="nav-item"><a class="nav-link" href="/ads/create">Create an Ad!</a> </li>
            <li class="nav-item"><a class="nav-link" href="/profile">Your Profile</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
            <%
                }
            %>
        </ul>
    </div>
    </div>
</nav>