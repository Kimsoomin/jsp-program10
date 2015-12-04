package admin;

import java.util.List;

public interface AdminService {

  public List getMemberList();
  public String query(String query);
  public String getBookSearch(String query);
  public String getTotal(String day);

}
