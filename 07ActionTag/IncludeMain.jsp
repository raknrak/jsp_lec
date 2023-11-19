<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>

<%
    //포함할 파일의 경로
    String outerPath1="./inc/OuterPage1.jsp";
    String outerPath2="./inc/OuterPage2.jsp";

    //page 영역과 request 영역의 속성 저장
    pageContext.setAttribute("pAttr", "동명왕");
    request.setAttribute("rAttr", "온조왕");

%>
<html>
<head>
    <title>지시어와 액션 태그 동작 방식 비교</title>
</head>
<body>
    <h2>지시어와 액션 태그 동작 방식 비교 </h2>
<%--지시어 방식--%>
    <h3> 지시어 페이지 포함하기 </h3>
<%--    링크가 아닌 포함이라 페이지 연결 o--%>
<%--    포함 관계--%>
    <%@include file="./inc/OuterPage1.jsp"%>
    <p> 외부 파일에 선언한 변수 : <%=newVar1%></p>

<%--    액션 태그 방식--%>
    <h3> 액션 태그로 페이지 포함하기 </h3>
<%--    링크: 페이지 연결 x--%>
<%--    포함 관계가 아닌 링크--%>
    <jsp:include page="./inc/OuterPage2.jsp" />
<%--        액션태그는 링크 관계이기 때문에 request 방식만.--%>
<%--    jsp include 위에 고정, 아래만 변경--%>
    <jsp:include page="<%=outerPath2%>" />
    <p> 외부 파일에 선언한 변수 : <%--=newVar2--%></p>



</body>
</html>
