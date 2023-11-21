package sec01.ex02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;


@WebServlet("/download.do")
public class FileDownload extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doHandle(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doHandle(request, response);
    }
// get or post 어떤 형식으로 들어오던  모두 인식하게 하는게 handler
    public void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        String file_repo = "e:\\file_repo";
        String fileName = (String) request.getParameter("fileName");
        System.out.println("fileName=" + fileName);
        OutputStream out = response.getOutputStream();
        String downFile = file_repo + "\\" + fileName;
        File f = new File(downFile);
//        set, add가 없으면 실행 안됨. - 주석처리 해보고 다운로드 해보기. 브라우저에 출력됨.
        response.setHeader("Cache-Control", "no-cache");
        response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
        FileInputStream in = new FileInputStream(f);
//        배열, 변수는 버퍼
//        8바이트 단위로 잘라서 배열로 모음.
        byte[] buffer = new byte[1024 * 8];
        while(true){
            int count = in.read(buffer);
            if (count == -1)
                break;
            out.write(buffer, 0, count);
        }
        in.close();
        out.close();
    }
}