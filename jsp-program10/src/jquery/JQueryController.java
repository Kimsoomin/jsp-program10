package jquery;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.ParamMap;
import global.Seperator;

/**
 * Servlet implementation class JQueryController
 */
@WebServlet("/jquery/main.do")
public class JQueryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		Seperator.init(request,response);
		switch (Seperator.command.getAction()) {
		case "main":goPage(request);break;  // get 방식은 이쪽으로 접수
		default:break;
		}
		DispatcherServlet.send(request, response, Seperator.command);
	}
	private void goPage(HttpServletRequest request) {
		switch (Seperator.command.getPage()) {
			case "selector":break;
			default:break;
		}
	}
}
