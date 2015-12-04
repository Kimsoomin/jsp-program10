package admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

import global.Command;
import global.DispatcherServlet;
import global.Seperator;
import member.MemberService;
import member.MemberServiceImpl;
import member.MemberVO;

@WebServlet("/admin.do")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminService service = AdminServiceImpl.getInstance();
	String userid,password,name,email,birth,phone,gender,portal;
	StringBuffer addr;
	int result;
	MemberVO member = new MemberVO();
	JSONObject obj = new JSONObject();
	List list = new ArrayList();
	Gson gson = new Gson();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Command command = Seperator.init(request,response); 
		HttpSession session=request.getSession(); 
		switch (command.getPage()) {
		case "main":
			break;
		case "header":
			break;
		case "search":
			System.out.println("서치 케이스 진입");
			break;
		case "member_list":
			System.out.println("회원목록 case 진입");
			
			list = service.getMemberList();
			JsonElement element = gson.toJsonTree(list, new TypeToken<List>() {}.getType());
			JsonArray memberList = element.getAsJsonArray();
			System.out.println(memberList);
			response.setContentType("application/json; charset=UTF-8");
			response.getWriter().print(memberList);
			
			return;	
		default:
			break;
		}
		DispatcherServlet.send(request, response, command);
	}
}
