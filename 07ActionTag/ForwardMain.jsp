<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>

<%
    //page 영역과 request 영역의 속성 저장
    pageContext.setAttribute("pAttr", "김유신");
    request.setAttribute("rAttr", "계백");

%>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션 태그 - forward</title>
</head>
<body>
<%--<jsp:forward>를 만나면 그전의 모든 출력으 제거되므로 아래 제목은 출력되지 않음.--%>
    <h2>액션 태그를 이용한 포워딩</h2>
<%--main으로 뜨지만 실제는 sub을 보여줌.
main의 내용을 보여주지 않음. main과 sub은 다른 페이지 - 데이터 연결 x
연결을 하고싶으면 request로.--%>
    <jsp:forward page="./ForwardSub.jsp" />
</body>
</html>
