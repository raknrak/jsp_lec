<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>액션 태그 - sub</title>
</head>
<body>
<%--포워드된 페이지는 이전 페이지와는 서로 다른 페이지이므로
페이지별로 생성되는 page 영역은 공유되지 않음.
한편 포워드는 요청을 전달하므로 request 영역은 공유됨.--%>
    <h2>포워드 결과</h2>
    <ul>
        <li>
<%--        page는 넘어가지않음--%>
<%--        page영역에 설정한 속성은 불러오는데 실패--%>
            page 영역 :<%= pageContext.getAttribute("pAttr")%>
        </li>
        <li>
<%--        request는 넘어감--%>
<%--        request영역에 설정한 속성은 제대로 가져옴--%>
            request 영역 : <%= request.getAttribute("rAttr")%>
        </li>
    </ul>
</body>
</html>
