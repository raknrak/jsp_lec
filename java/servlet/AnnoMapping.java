package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//  xml에서 <url-pattern>에 입력한 값과 똑같이 입력.
@WebServlet("/12Servlet/AnnoMapping.do") // 애너테이션을 이용해 처리할 것임을 선언
public class AnnoMapping  extends HelloServlet{ // 서블릿이므로 상속.
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) // 오버라이드
            throws ServletException, IOException {
        req.setAttribute("message", "@WebServlet으로 매핑" ); // request 영역에 데이터를 저장
        req.getRequestDispatcher("/12Servlet/AnnoMapping.jsp")
                .forward(req,resp); //AnnoMapping.jsp로 포워드

    }
}
