package admin;

public class AdminMain {
	public static void main(String[] args) {
		AdminService service = AdminServiceImpl.getInstance();
		System.out.println("메인: "+service.getTotal("20151101"));
	}
}
