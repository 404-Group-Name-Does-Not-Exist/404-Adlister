<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<section id="intro" class="section-intro">
    <div class="overlay">
        <div class="container">
            <div class="main-text">
                <h1 class="intro-title"><span style="color: #3498DB">Create</span> an ad</h1>
                <p class="sub-title">Fill out the form below to create your listing.</p>
            </div>
        </div>
    </div>
</section>
<section id="content">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <div class="page-login-form box">
                    <h3>
                        Create your ad
                    </h3>
                    ${sessionScope.message}
                    <form action="/ads/create" method="POST" role="form" class="login-form">
                        <div class="form-group">
                            <input type="text" id="title" class="form-control" name="title" placeholder="Title">
                        </div>
                        <div class="form-group">
                            <textarea id="description" name="description" type="text" class="form-control" placeholder="Description"></textarea>
                        </div>
                        <div id="categories">
                            <h5>Categories</h5>
                            <input name="category[0]" class="checkbox-line" type="checkbox" value="1"> Clothing
                            <input name="category[1]" class="checkbox-line" type="checkbox" value="2"> Electronics
                            <input name="category[2]" class="checkbox-line" type="checkbox" value="3"> Misc
                            <input name="category[3]" class="checkbox-line" type="checkbox" value="4"> Other
                        </div>
                        <button type="submit" class="btn btn-common log-btn">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/partials/footer.jsp" />

</body>
</html>
