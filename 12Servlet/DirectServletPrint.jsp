<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>DirectServletPrint.jsp</title>
</head>
<body>
  <h2> web.xml에서 매핑 후 Servlet에서 직접 출력하기</h2>
<%--  post 방식으로 전송하기 위해 <form> 태그 사용.--%>
<%--  .을 하나만 찍거나 아얘 찍지 않으면 연결되지 않음.--%>
  <form method="post" action="../12Servlet/DirectServletPrint.do">
    <input type="submit" value="바로가기" />
  </form>
</body>
</html>
