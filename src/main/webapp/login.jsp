
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login, why don't ya?</title>
</head>
<body>
    <h3>Please log in!</h3>

    <form action="/login.jsp" method="POST">
        Username:<input type="text" name="username"/><br/><br/>
        Password:<input type="password" name="password"/><br/><br/>
        <input type="submit" value="login"/>
    </form>

    <c:if test="${(param.username == 'admin') and (param.password == 'password')}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:if>

</body>
</html>
