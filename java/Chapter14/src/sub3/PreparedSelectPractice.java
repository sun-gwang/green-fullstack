package sub3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PreparedSelectPractice {
	public static void main(String[] args) {
		
		List<User4VO> users = new ArrayList<>();
		
		String host = "jdbc:mysql://127.0.0.1:3306/studydb";
		String user = "kc5353";
		String pass = "abcd1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(host, user, pass);
			
			String sql = "SELECT * FROM `User4`";
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			ResultSet rs =psmt.executeQuery();
			
			// 5단계 결과처리
			while(rs.next()) {
				
				User4VO vo = new User4VO();
				vo.setUid(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setAge(rs.getInt(4));
				vo.setHp(rs.getString(5));
				vo.setAddr(rs.getString(6));
				
				users.add(vo);
				
			}
			
			for(User4VO vo : users) {
				System.out.printf("%s,%s,%s,%d,%s,%s\n", vo.getUid(),
						                                 vo.getName(),
						                                 vo.getGender(),
						                                 vo.getAge(),
						                                 vo.getHp(),
						                                 vo.getAddr());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("SELECT 성공...");
	}

}
