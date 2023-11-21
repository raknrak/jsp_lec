package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// URL패턴이  "*.one"에 해당하는 모든 요청을 모두 이 서블릿과 매핑.
// 그러면 ".one"으로 끝나는 모든 요청명이 매핑됨
@WebServlet("*.one")
public class FrontController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
//        내장 객체로부터 현재 경로에서 호스트명을 제외한 나머지 부분을 알아낸 다음
        String uri = req.getRequestURI();
//        마지막 슬래시(/)의 인덱스를 구함
        int lastSlash = uri.lastIndexOf("/");
//        그리고 이 인덱스로 경로의 마지막 부분의 문자열을 얻어옴
        String commandStr = uri.substring(lastSlash);
//         문자열을 통해 페이지를 구분하여, 각 페이지를 처리할 수 있는 메소드를 호출
        if(commandStr.equals("/regist.one"))
            registFunc(req);
        else if(commandStr.equals("/login.one"))
            loginFunc(req);
        else if(commandStr.equals("/freeboard.one"))
            freeboardFunc(req);
//        uri와 페이지 구분을 위한 문자열(commandStr)을 request 영역에 저장하고 FrontController.jsp로 포워드함.
        req.setAttribute("uri", uri);
        req.setAttribute("commandStr", commandStr);
        req.getRequestDispatcher("/12Servlet/FrontController.jsp")
                .forward(req, resp);
    }

    //페이지별 처리 메소드
//    각 페이지에 출력할 데이터를 request 영역에 저장함.
    void freeboardFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4> 자유게시판 </h4>");
    }
    void loginFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4> 로그인 </h4>");
    }

    void registFunc(HttpServletRequest req) {
        req.setAttribute("resultValue", "<h4> 회원가입 </h4>");
    }
}

