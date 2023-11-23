<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>JSTL - fmt 2</title>
</head>
<body>
    <c:set var="today" value="<%= new java.util.Date()%>" />

    <h4> 날짜 포맷 </h4>
    full : <fmt:formatDate value="${today}" type="date" dateStyle="full" /> <br/>
    short : <fmt:formatDate value="${today}" type="date" dateStyle="short" /> <br/>
    long : <fmt:formatDate value="${today}" type="date" dateStyle="long" /> <br/>
    default : <fmt:formatDate value="${today}" type="date" dateStyle="default" /> <br/>

    <h4> 시간 포맷 </h4>
    full : <fmt:formatDate value="${today}" type="time" timeStyle="full" /> <br/>
    short : <fmt:formatDate value="${today}" type="time" timeStyle="short" /> <br/>
    long : <fmt:formatDate value="${today}" type="time" timeStyle="long" /> <br/>
    default : <fmt:formatDate value="${today}" type="time" timeStyle="default" /> <br/>

    <h4> 날짜 / 시간 표시 </h4>
    <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/> <br />
    <fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd hh:mm:ss" /> <br />

    <h4> 타임존 설정 </h4>
<%--   value ""만 입력해도 그리니치 표준시  --%>
    <fmt:timeZone value="GMT">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
    </fmt:timeZone>
    <br/>

    <fmt:timeZone value="America/Chicago">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
    </fmt:timeZone>


</body>
</html>
