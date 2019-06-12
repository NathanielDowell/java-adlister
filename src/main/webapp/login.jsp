
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login, why don't ya?</title>
</head>
<body>
<%@ include file="partials/head.jsp" %>
<%@ include file="partials/header.jsp" %>
<%@ include file="partials/navbar.jsp" %>


</body>
    <h3>Please log in!</h3>

    <form action="/login.jsp" method="POST">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username"/><br/>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password"/><br/>
        <input type="submit" value="login"/>
    </form>

    <c:if test="${(param.username == 'admin') and (param.password == 'password')}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:if>

<%@ include file="partials/footer.jsp" %>
</body>
</html>
