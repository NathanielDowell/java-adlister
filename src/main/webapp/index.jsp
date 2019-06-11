<%--
  Created by IntelliJ IDEA.
  User: macintosh
  Date: 2019-06-11
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

This is my Adlister.
    <% counter ++;
    if(counter == 1) {
        System.out.println("counter =  " + counter);
    }
    %>

</body>
</html>
