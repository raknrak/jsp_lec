<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%
  // 속성 저장
pageContext.setAttribute("scopeValue", "페이지 영역");
request.setAttribute("scopeValue", "리퀘스트 영역");
session.setAttribute("scopeValue", "세션 영역");
application.setAttribute("scopeValue", "애플리케이션 영역");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>표현 언어(EL) - 내장 객체</title>
</head>
<body>
  <h2>ImplicitObjMain Page</h2>
  <h3> 각 영역에 저장된 속성 읽기</h3>

    <ul>
<%--      속성값 출력--%>
      <li> 페이지 영역 : ${pageScope.scopeValue}</li>
      <li> 리퀘스트 영역 : ${requestScope.scopeValue}</li>
      <li> 세션 영역 : ${sessionScope.scopeValue}</li>
      <li> 애플리케이션 영역 : ${applicationScope.scopeValue}</li>

    </ul>
  <h3> 영역 지정 없이 속성 읽기</h3>
    <ul>
<%--      영역을 따로 지정하지 않으면 가장 좁은 영역에서부터 속성을 찾음  - page 부터 --%>
      <li> ${scopeValue}</li>
    </ul>
<jsp:forward page="ImplicitForwardResult.jsp" />
</body>
</html>
