package admin;

public class AdminVO {
	private String id;
	private String password;
	private String account_num;
	private String total;
	
	public AdminVO(String account_num, String total) {
		this.account_num = account_num;
		this.total = total;
	}
	
	
	public AdminVO() {
	
	}


	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}
	public String getAccount_num() {
		return account_num;
	}
	public String getTotal() {
		return total;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}
	public void setTotal(String total) {
		this.total = total;
	}
}
