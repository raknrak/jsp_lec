<%@ page import="el.MyELClass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="mytag" uri="/WEB-INF/MyTagLib.tld" %>
<%
    MyELClass myClass = new MyELClass(); // 객체 생성
    pageContext.setAttribute("myClass", myClass); // page영역에 myClass라는 이름으로 저장
%>
<html>
<head>
    <title>표현 언어(EL) - 메소드 호출</title>
</head>
<body>
    <h3> 영역에 저장 후 메소드 호출하기 </h3>
<%--    속성명으로 객체를 지칭해 메소드 호출 --%>
    001225-3000000 => ${ myClass.getGender("001225-3000000")}<br/>
    001225-2000000 => ${ myClass.getGender("001225-2000000")}<br/>

    <h3> 클래스명을 통해 정적 메소드 호출하기 </h3>
<%--    클래스명을 통해 정적 메소드를 바로 호출할 수 있음.--%>
<%--    자바에서 정석 메소드는 객체 생성 없이 클래스명으로 직접 호출이 가능함. EL에서도 동일하게 사용.--%>
    ${MyELClass.showGugudan(9)}

    <h3> TLD 파일 등록 후 정적 메소드 호출하기 </h3>
    <ul>
        <li>mytag:isNumber("100") => ${ mytag:isNumber("100")}</li>
        <li>mytag:isNumber("이백") => ${ mytag:isNumber("이백")}</li>
    </ul>
</body>
</html>
