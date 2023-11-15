<%@ page import ="common.Person"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
%>
<%--request영역엣 String 객체와 Person 객체를 저장--%>
<%
    request.setAttribute("requestString", "request 영역의 문자열");
    request.setAttribute("requestPerson", new Person("안중근", 31));
%>
<html>
<head>
    <title>request 영역</title>
</head>
<body>
    <h2> request 영역의 속성값 삭제하기</h2>
    <%
        // String 속성 삭제
        request.removeAttribute("requestString");  // 지워서 null값
        // Integer 속성 삭제
        request.removeAttribute("requestInteger"); // 에러가 발생하지 않음
    %>
<%--    속성값을 읽어와 출력--%>
    <h2> request영역의 속성값 읽기</h2>
    <%
        Person rPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
        <li>String 객체 : <%= request.getAttribute("requestString")%></li>
        <li>Person 객체 : <%= rPerson.getName()%>, <%= rPerson.getAge()%> </li>
    </ul>

    <h2> 포워드된 페이지에서 request 영역 속성값 읽기</h2>
    <%
        // 포워드란 현재 페이지로 들어온 요청을 다음 페이지로 보내는 기능을 말함.
        // 포워드 시 쿼리스트링으로 매개변수도 전달 가능

        request.getRequestDispatcher(
                "RequestForward.jsp?paramHan=한글&paramEng=English")
                .forward(request,response);
                %>
<%--내장객체를 통해 실제로 포워드를 수행하는 코드--%>
<%--requset.getRequestDispatcher("포워드할 파일 경로").forward(request, response)--%>

</body>
</html>
