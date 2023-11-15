
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>

<%
    // ArrayList 컬렉션을 생성한 후 2개의 String 객체를 저장
    ArrayList<String> lists = new ArrayList<>();
    lists.add("리스트");
    lists.add("컬렉션");
    session.setAttribute("lists", lists); // 컬렉션을 통째로 session 영역에 저장
%>
<html>
<head>
    <title>session 영역</title>
</head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<%--    session 영역이 이동된 페이지에서도 공유되는지 확인하기 위한 링크--%>
    <a href="SessionLocation.jsp"> SessionLocation.jsp 바로가기 </a>
</body>
</html>
