<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <section id="intro" class="section-intro">
        <div class="overlay">
            <div class="container">
                <div class="main-text">
                    <h1 class="intro-title"><span style="color: #3498DB">Registration</span></h1>
                    <p class="sub-title">Create an account by filling out the form below.</p>
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
                            Please enter your info
                        </h3>
                        <form action="/register" method="post" role="form" class="login-form">
                            ${sessionScope.message}
                            <div class="form-group">
                                <input type="text" id="username" class="form-control" name="username" placeholder="Username">
                            </div>
                            <div class="form-group">
                                <input type="text" id="email" class="form-control" name="email" placeholder="Email Address">
                            </div>
                            <div class="form-group">
                                <input id="password" name="password" type="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <input id="confirm_password" name="confirm_password" type="password" class="form-control" placeholder="Confirm Password">
                            </div>
                            <button type="submit" class="btn btn-common log-btn">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
