<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<section id="intro" class="section-intro">
    <div class="overlay">
        <div class="container">
            <div class="main-text">
                <h1 class="intro-title"><span style="color: #3498DB">Ads</span></h1>
                <p class="sub-title">Available listings are displayed below.</p>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <div class="card card-block">
                <h2 class="card-title">${ad.title}</h2>
                <p class="card-text">${ad.description}</p>
                <a href="details=id${ad.id}" class="card-link">Details</a>
            </div>
        </div>
    </c:forEach>
</div>


<jsp:include page="/WEB-INF/partials/footer.jsp" />

</body>
</html>
