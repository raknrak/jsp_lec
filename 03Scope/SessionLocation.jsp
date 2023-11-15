
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>

<html>
<head>
    <title>session 영역</title>
</head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <%
        // session 영역에서 속성을 읽어온 후 형 변환
        ArrayList<String> lists = (ArrayList<String>) session.getAttribute("lists");
        // for문을 이용해 컬렉션에서 객체들을 꺼내 출력
        for (String str : lists)
            out.print(str + "<br />");
    %>
</body>
</html>
