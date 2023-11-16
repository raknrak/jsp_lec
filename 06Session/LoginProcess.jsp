<%@ page import="membership.MemberDTO" %>
<%@ page import="membership.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
    <%
        //로그인 폼으로부터 받은 아이디와 패스워드- request 내장 객체를 통해 받아둠
        String userId = request.getParameter("user_id");
        String userPwd = request.getParameter("user_pw");

        // web.xml에서 가져온 데이터베이스 연결 정보
        String driver = application.getInitParameter("MySQL_Driver");
        String url = application.getInitParameter("MySQL_URL");
        String id = application.getInitParameter("MySQL_Id");
        String pwd = application.getInitParameter("MySQL_Pwd");

        MemberDAO dao = new MemberDAO(driver, url, id, pwd);
        MemberDTO memberDTO=dao.getMemberDTO(userId, userPwd);
        dao.close();

        // 로그인 성공 여부에 따른 처리
        if(memberDTO.getId() != null){
            //로그인 성공
            session.setAttribute("UserId", memberDTO.getId());
            session.setAttribute("UserName", memberDTO.getName());
            // 세션 영역에 저장된 속성값은 웹 브라우저를 닫을 때까지는 모든 페이지에서 공유
            response.sendRedirect("LoginForm.jsp");
        }
        else{
            request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
            request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
        }
    %>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
