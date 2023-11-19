<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Outer Page</title>
</head>
<body>
    <h2>외부 파일 2</h2>
    <%
        String newVar2 = "백제 온조왕"; // 변수 선언
    %>
    <ul>
        <%--        내장 객체 영역에서 속성을 일거서 출력--%>
        <%--        only one page 에서만--%>
        <li>page 영역 속성 : <%=pageContext.getAttribute("pAttr")%></li>
        <%--    다른 page에서 사용 가능, 다른 페이지로 넘어감--%>
        <li>request 영역 속성: <%=request.getAttribute("rAttr")%></li>
    </ul>
</body>
</html>

