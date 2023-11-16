<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
    <%
        // 방법 1: 회원인증정보 속성 삭제
        // 인수로 지정한 속성을 삭제하는 메소드
        // 특정 속성만 선택해서 삭제 가능
        session.removeAttribute("UserId");
        session.removeAttribute("UserName");

        // 방법 2: 모든 속성 한꺼번에 삭제
        // 세션 자체를 무효화
        // 세션 영역의 모든 속성을 한꺼번에 삭제
        session.invalidate();
        // invalidate를 사용하면 서버는 세션 정보를 더 이상 유지할 필요가 없으므로
        // 부담이 줄어듦
        // 따라서 로그아웃시에는 invalidate를 사용하는 거이 좋음.

        // 속성 삭제 후 페이지 이동
        // 속성 삭제 후 로그인 페이지로 이동
        response.sendRedirect("LoginForm.jsp");
    %>
