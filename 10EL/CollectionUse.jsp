<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title> 표현 언어(EL) - 컬렉션 </title>
</head>
<body>
    <h2> List 컬렉션 </h2>
    <%
        // List 컬렉션 생성 타입 매개변수 object 선언 - 어떠한 객체든 저장 가능
        List<Object> aList = new ArrayList<Object>();
        aList.add("청해진"); //  String
        aList.add(new Person("장보고", 28)); // Person
        pageContext.setAttribute("Ocean", aList); // List 컬렉션을 page 영역에 저장
    %>
    <ul>
<%--        영역에 저장된 List를 출력, 배열처럼 인덱스로 접근 가능--%>
        <li> 0번째 요소 : ${ Ocean[0]}</li>
        <li> 1번째 요소 : ${ Ocean[1].name}, ${ Ocean[1].age}</li>
<%--        출력되지 않음--%>
<%--    EL은 null을 출력해도 예외를 발생시키지 않으므로 아무것도 출력되지 않음--%>
        <li> 2번째 요소 : ${ Ocean[2]}</li>
    </ul>

    <h2> Map 컬렉션 </h2>
    <%
        // Map을 Page에 저장
        Map<String, String> map = new HashMap<>();
        map.put("한글", "훈민정음");
        map.put("Eng", "English");
        pageContext.setAttribute("King", map);
    %>
    <ul>
        <li> 영문 key : ${King["Eng"]}, ${King['Eng']}, ${King.Eng}</li>
<%--        \${King.한글} 여기는 에러남. << \ 는 EL 문자 주석--%>
<%--        한글은 . 을 사용할 수 없음 500 에러가 발생하므로 주석처리.--%>
        <li> 한글 key : ${King["한글"]}, ${King['한글']}, \${King.한글}</li>
    </ul>
</body>
</html>
