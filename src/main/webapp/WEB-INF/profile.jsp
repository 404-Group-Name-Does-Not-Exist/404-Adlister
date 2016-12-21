<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h1>Welcome, ${sessionScope.user.username}!</h1>
            <h2>If you have created any ads, they will be displayed below. If not, create one <a href="/ads/create">here</a>!</h2>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-6">
                    <div class="card card-block">
                        <h2 class="card-title">${ad.title}</h2>
                        <p class="card-text">${ad.description}</p>
                        <a href="#" class="card-link">Details</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
