<%--common.Person import--%>
<%@ page import ="common.Person"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="UTF-8"
%>
<%--속성지정--%>
    <%
        pageContext.setAttribute("pageInteger", 1000);
        pageContext.setAttribute("pageString", "페이지 영역의 문자열");
        pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
    %>
<html>
<head>
    <title>page 영역</title>
</head>
<body>
    <h2> 영역의 속성값 읽기</h2>
<%--속성 읽기--%>
    <%
        int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
        String pString = pageContext.getAttribute("pageString").toString();
        Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
    %>
    <ul>
        <li> Integer 객체 : <%= pInteger %></li>
        <li> String 객체 : <%= pString %></li>
<%--  자바에서 가져옴 -> 추후 DB랑 맞추기 (자바 따로, DB따로 만들어야함) --%>
        <li> Person 객체 : <%= pPerson.getName() %> <%= pPerson.getAge()%></li>
    </ul>
    <h2> include된 파일에서 page 영역 읽어오기</h2>
    <%@ include file="pageInclude.jsp"%>

    <h2> 페이지 이동 후 page 영역 읽어오기</h2>
    <a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>



</body>
</html>
