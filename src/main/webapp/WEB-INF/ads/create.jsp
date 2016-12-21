<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">

        ${sessionScope.message}

        <h1>Create an ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div id="categories">
                <h5>Categories</h5>
                    <input name="category[0]" class="checkbox-line" type="checkbox" value="1"> Clothing
                    <input name="category[1]" class="checkbox-line" type="checkbox" value="2"> Electronics
                    <input name="category[2]" class="checkbox-line" type="checkbox" value="3"> Misc
                    <input name="category[3]" class="checkbox-line" type="checkbox" value="4"> Other
                </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
