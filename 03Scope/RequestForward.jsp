
<%@ page import ="common.Person"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<html>
<head>
    <title>request 영역</title>
</head>
<body>
    <h2>포워드로 전달된 페이지</h2>
    <h4>RequestMain 파일의 리퀘스트 영역 속성 읽기</h4>
    <%
        // request 영역에 저장된 속성들을 읽어와서 출력
        Person pPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
<%--        request 영역에 저장된 속성들을 일겅와서 출력--%>
        <li> String 객체 : <%= request.getAttribute("requestString")%></li>
        <li> Person 객체 : <%= pPerson.getName()%>, <%= pPerson.getAge()%></li>
    </ul>

    <h4>매개변수로 전달된 값 출력하기</h4>
    <%
        // 매개변수에 한글이 있다면 반드시 인코딩
        request.setCharacterEncoding("UTF-8");
        out.println(request.getParameter("paramHan")); // 매개변수 값 출력
        out.println(request.getParameter("paramEng")); // 매개변수 값 출력

    %>
</body>
</html>
