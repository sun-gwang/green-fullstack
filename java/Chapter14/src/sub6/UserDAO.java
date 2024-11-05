package sub6;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
	// 싱글톤
	private static UserDAO instance = new UserDAO();
	public static UserDAO getinstance() {
		return instance;
	}
	private UserDAO() {}

	private final String HOST ="jdbc:mysql://127.0.0.1:3306/studydb"; 
	private final String USER ="kc5353"; 
	private final String PASS ="abcd1234"; 
	
	private Connection        conn = null;
	private Statement         stmt = null;
	private PreparedStatement psmt = null;
	private ResultSet         rs   = null;
	
	// 커넥션 메서드
	private Connection Connection() throws ClassNotFoundException, SQLException {
		
		// 1단계
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2단계 
		return DriverManager.getConnection(HOST, USER, PASS);
		
	}
	
	// 클로즈 메서드
	private void Close() throws SQLException {
		
		if(rs!=null) {
			rs.close();
		}
		if(psmt!=null) {
			psmt.close();
		}
		if(stmt!=null) {
			stmt.close();
		}
		if(conn!=null) {
			conn.close();
		}
	}
	
	
	public void insertUser(UserDTO user) {
		
		try {
			
			// 3단계
			conn = Connection();
			psmt = conn.prepareStatement(SQL.INSERT_USER);
			psmt.setString(1,user.getUid());
			psmt.setString(2,user.getName());
			psmt.setString(3, user.getBirth());
			psmt.setString(4, user.getAddr());
			
			// 4단계
			psmt.executeUpdate();
			// 5단계
			
			// 6단계
			Close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<UserDTO> selectUsers() {
		
		List<UserDTO> users = new ArrayList<>();

		try {
			
			conn=Connection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_USERS);
			
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				
				dto.setUid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setBirth(rs.getString(3));
				dto.setAddr(rs.getString(4));
				
				users.add(dto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public UserDTO selectUser(String uid) {
		
		UserDTO dto = new UserDTO();
		
		try {
			conn = Connection();
			psmt = conn.prepareStatement(SQL.SELECT_USER);
			psmt.setString(1, uid);
			rs = psmt.executeQuery();
			
			if(rs.next()){
				dto.setUid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setBirth(rs.getString(3));
				dto.setAddr(rs.getString(4));
				
			}
			Close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public void updateUser() {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser() {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
