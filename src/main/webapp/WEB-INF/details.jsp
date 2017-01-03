<%--
  Created by IntelliJ IDEA.
  User: joshua
  Date: 1/3/17
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="details" />
    </jsp:include>
    <title>Details</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<h2>${ad.title}</h2>
<p>${ad.description}</p>



</body>
</html>
