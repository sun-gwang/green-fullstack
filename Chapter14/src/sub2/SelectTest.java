package sub2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * 날짜 : 2024/01/22
 * 이름 : 김선광
 * 내용 : SELECT 실습하기
 */

public class SelectTest {
	public static void main(String[] args) {
		
		String host = "jdbc:mysql://127.0.0.1:3306/studydb";
		String user = "kc5353";
		String pass = "abcd1234";
		
        // 결과 처리용 리스튼
		List<User1> users = new ArrayList<>();
		
		try {
			// 1단계 - JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 2단계 - 데이터베이스 연결
			Connection conn = DriverManager.getConnection(host,user,pass);
			
			// 3단계 - Statement 생성
			Statement stmt = conn.createStatement();
			
			// 4단계 - SQL문 
			String sql = "SELECT * FROM `User1`";
			ResultSet rs= stmt.executeQuery(sql);
			
			// 5단계 - 결과받기(SELECT 문 일 경우)
			while(rs.next()) { 
				
				String uid   = rs.getString(1);
				String name  = rs.getString(2);
				String birth = rs.getString(3);
				String hp    = rs.getString(4);
				int    age   = rs.getInt(5);
				
				User1 u1 = new User1();
				u1.setUid(uid);
				u1.setName(name);
				u1.setBirth(birth);
				u1.setHp(hp);
				u1.setAge(age);
				
				users.add(u1);
			//  System.out.printf("%s, %s, %s, %s, %d\n", uid, name, birth, hp, age);
			}
			
			// 6단계 - 접속 종료
			rs  .close();
			stmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		 //리스트 출력
		for(User1 u1 : users) {
			System.out.printf("%s,%s,%s,%s,%d,\n", u1.getUid(),
					                               u1.getName(),
					                               u1.getBirth(),
					                               u1.getHp(),
					                               u1.getAge());
			
	      }
		
		System.out.println("SELECT 성공...");
		
		
	}

}
