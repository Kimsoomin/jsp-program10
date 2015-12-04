package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import global.Constants;
import global.DQL;
import global.DatabaseFactory;
import global.Vendor;
import member.MemberVO;

public class AdminDAOImpl implements AdminDAO{
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	AdminVO vo = new AdminVO();
	
	private static AdminDAO instance = new AdminDAOImpl();
	public static AdminDAO getInstance(){
		return instance;
	}
	
	public AdminDAOImpl() {
		con = DatabaseFactory
				.getDatabase(Vendor.ORACLE, Constants.ORACLE_ID, Constants.ORACLE_PASSWORD)
				.getConnection();
	}
	
	@Override
	public String selectTotal(String day) {
		System.out.println("다오 들어옴");
		String total = null;
		String sql = "select sum from purchase where account_num = '"+day+"'";
		System.out.println(sql);
		try {
			stmt = con.createStatement(); // 쿼리를 실행하는 객체
			rs = stmt.executeQuery(sql);
		     
			while (rs.next()) {
				vo.setTotal(rs.getString("sum"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo.getTotal();
	}
}
