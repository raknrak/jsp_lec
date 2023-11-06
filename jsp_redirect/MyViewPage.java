package com.example.demo1;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MyViewPage", value = "/myView.do")
public class MyViewPage extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String url = "myViewPage.jsp";
        // 사용자 처리
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

    }
}
