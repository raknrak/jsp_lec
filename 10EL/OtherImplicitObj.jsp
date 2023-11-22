<%@ page import="utils.CookieManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%
  // 유효시간 2초
  CookieManager.makeCookie(response, "ELCookie", "EL좋아요", 2);

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>표현 언어(EL) - 그 외 내장 객체</title>
</head>
<body>
  <h3> 쿠키값 읽기 </h3>
  <li> EL 쿠키값 : ${ cookie.ELCookie.value }</li>

  <h3> HTTP 헤더 읽기</h3>

  <ul>
    <li> host : ${ header.host }</li>
    <li> user-agent : ${ header['user-agent'] }</li>
    <li> cookie : ${ header.cookie }</li>
  </ul>
<%-- xml 지정 드라이버 파라미터 이름 넣기--%>
  <h3> 컨텍스트 초기화 매개변수 읽기</h3>
  <li>MariaDriver : ${ initParam.MySQL_Driver}</li>

  <h3> 컨텍스트 루트 경로 읽기</h3>
  <li> ${pageContext.request.contextPath}</li>
</body>
</html>
