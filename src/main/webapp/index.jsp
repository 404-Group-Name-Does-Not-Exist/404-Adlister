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
<section id="intro" class="section-intro">
    <div class="overlay">
        <div class="container">
            <div class="main-text">
                <h1 class="intro-title">Welcome To <span style="color: #3498DB">AdLister</span></h1>
                <p class="sub-title">Buy and sell everything from clothes and furniture to cars and smartphones, or find places to live, great jobs and more</p>
            </div>
            <div class="row search-bar">
                <div class="advanced-search">
                    <form action="/ads" method="GET" class="search-form" role="search">
                        <div class="col-md-9 col-sm-6 search-col">
                            <input id="search" name="search" type="text" class="search-query form-control keyword" placeholder="Enter Search Terms" />
                            <i class="fa fa-search"></i>
                        </div>
                        <div class="col-md-3 col-sm-6 search-col">
                            <button class="btn btn-common btn-search btn-block" type="submit">
                                <strong>Search</strong>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</body>
</html>
