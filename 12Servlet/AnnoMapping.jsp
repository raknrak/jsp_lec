<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>AnnoMapping.jsp</title>
</head>
<body>
    <h2> 애너테이션으로 매핑하기 </h2>
    <p>
<%--        EL을 사용하면 null이 아닌 공백이 출력됨.--%>
        <strong>${ message }</strong>
        <br />
        <a href=" <%= request.getContextPath()%>/12Servlet/AnnoMapping.do">바로가기</a>
    </p>
</body>
</html>
