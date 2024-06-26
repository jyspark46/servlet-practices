package helloweb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public HelloServlet() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// url 뒤에 "?id=..." 자리에 들어오는 것
		String id = request.getParameter("id");
		
		// 한글 지원
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter pw = response.getWriter();
		pw.println("<h1>안녕 " + id + "<h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
