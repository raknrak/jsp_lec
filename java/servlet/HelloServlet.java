package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HelloServlet extends HttpServlet { //HttpServlet 상속
    // serial : 고유번호.
    // 숫자 뒤 L = long 타입. - 내부적으로 고유번호 부여 - 다른 파일과 엉키지 않음.
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // request 영역에 page라는 속성 데이터 저장
        req.setAttribute("message", "Hello Servlet..!!"); // 처음에는 바로 호출이라 출력X
        req.getRequestDispatcher("/12Servlet/HelloServlet.jsp")
                //포워드함
                //request 영역에 저자된 데이터는 포워드된 페이지까지 공유되므로 해당 속성 출력 가능
                .forward(req, resp);
    }
}

