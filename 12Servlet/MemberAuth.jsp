<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>MemberAuth.jsp</title>
</head>
<head>
    <title>MVC 패턴으로 회원인증하기</title>
</head>
<body>
    <p>
        <strong> ${authMessage}</strong>
        <br/>
        <a href="./MemberAuth.mvc?id=nakja&pass=1234"> 회원인증(관리자)</a>
        &nbsp;&nbsp;
        <a href="./MemberAuth.mvc?id=musthave&pass=1234"> 회원인증(회원)</a>
        &nbsp;&nbsp;
        <a href="./MemberAuth.mvc?id=stranger&pass=1234"> 회원인증(비회원)</a>
        &nbsp;&nbsp;
    </p>

</body>
</html>
