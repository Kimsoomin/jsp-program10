package admin;

import java.util.List;

import member.MemberService;
import member.MemberServiceImpl;

public class AdminServiceImpl implements AdminService{
	private static AdminService instance = new AdminServiceImpl();
	MemberService memberService = MemberServiceImpl.getInstance();
	private AdminServiceImpl() {}
	public static AdminService getInstance(){
		return instance;
	}
	AdminDAO dao = AdminDAOImpl.getInstance();
	@Override
	public List getMemberList() {
		return memberService.getList();
	}
	/**
	 * API 결과를 받아오기 위하여 오픈API 서버에 Request 를 하고 결과를 
	 * XML Object 로 반환하는 메소드
	 * 
	 * @return object
	 */
	@Override
	public String query(String query) {

		String url = null;
		/*
		 * sprintf("%s?query=%s&target=%s&key=%s", $this->searchUrl, $query,
		 * $this->target, $this->key);
		 */
		String data = null;/* file_get_contents(url); */
	

		return null; /* $xml; */
	}

	/**
	 * API의 결과를 Json 으로 encode 하려 반환하는 메소드 XML을 직접 parsing 하지 않고 json으로 변환하여
	 * 반환한다.
	 */
	@Override
	public String getBookSearch(String query) {

		return null;
	}
	@Override
	public String getTotal(String day) {
		
		return dao.selectTotal(day);
	}
}
