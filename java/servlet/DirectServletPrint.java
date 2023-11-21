package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DirectServletPrint  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) //post 방식이므로 doPost 오버라이드
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter writer = resp.getWriter(); // response 내장객체에서 PrintWriter객체를 얻어옴
//                printWriter는 println() 메소드를 제공
        writer.println("<htlm>");
        writer.println("<head><title>DirectServletPrint</title></head>");
        writer.println("<body>");
        writer.println("<h2>서블릿에서 직접 출력합니다.</h2>");
        writer.println("<p>jsp로 포워드하지 않습니다.</p>");
        writer.println("</body>");
        writer.println("</html>");
        writer.close(); // 닫기

            }
}
