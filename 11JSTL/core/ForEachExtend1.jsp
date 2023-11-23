<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL - forEach2</title>
</head>
<body>
    <h4> 향상된 for문 형태의 forEach 태그</h4>
    <%
        String[] rgba = {"Red", "Green", "Blue", "Black"};
    %>
    <c:forEach items="<%= rgba%>" var="c">
        <span style="color:${ c };">${ c }</span>
    </c:forEach>

    <h4> varStatus 속성 살펴보기 </h4>
    <table border="1">
        <c:
    </table>
</body>
</html>
