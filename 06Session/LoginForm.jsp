<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Session</title>
</head>
<body>
<%--공통 링크 추가--%>
    <jsp:include page ="../common/Link.jsp" />
    <h2> 로그인 페이지</h2>
<%--    반응형--%>
    <span style = "color: red; font-size: 1.2em;">
        <%= request.getAttribute("LoginErrMsg") == null?
                "" : request.getAttribute("LoginErrMsg")
        %>
    </span>
    <%
        //
        if(session.getAttribute("UserId")==null) { // 로그인 상태 확인
        //로그아웃 상태

    %>
    <script> // 회원인지 인증
        function validateForm(form){
            if(!form.user_id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            if (form.user_pw.value=="") {
                alert("패스워드를 입력하세요.");
            }
        }
    </script>
    <form action="LoginProcess.jsp" method="post" name="loginFrm"
          onsubmit="return validateForm(this);">
<%--        유효성 검사를 통과하면 폼에 입력한 값이 post 방식으로 LoginProcess에 전송--%>
        아이디 : <input type = "text" name ="user_id" /> <br/>
        패스워드 : <input type = "password" name="user_pw"   /> <br />
        <input type="submit" value = "로그인하기" />
    </form>
    <%
        } else { // 로그인된 상태
    %>
        <%= session.getAttribute("UserName")%> 회원님, 로그인하셨습니다. <br/>
        <a href = "Logout.jsp"> [로그아웃] </a>
    <%
        }
    %>
</body>
</html>
