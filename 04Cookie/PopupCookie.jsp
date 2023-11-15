<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
    String chkval = request.getParameter("inactiveToday"); // 매개변수 값 얻기

    // 값이 1이면 쿠키를 생성해 응답 객체에 추가
    if (chkval != null && chkval.equals("1")){
        Cookie cookie = new Cookie("PopupClose", "off");
        cookie.setPath(request.getContextPath()); // 경로 설정
        cookie.setMaxAge(60*60*24); // 응답 기간 설정
        response.addCookie(cookie); // 응답 객체에 추가
        out.print("쿠키 : 하루 동안 열지 않음");
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
