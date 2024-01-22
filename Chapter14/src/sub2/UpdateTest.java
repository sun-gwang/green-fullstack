package sub2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
/*
 * 날짜 : 2024/01/22
 * 이름 : 김선광
 * 내용 : UPDATE 실습하기
 */
public class UpdateTest {
	public static void main(String[] args) {
		
		String host = "jdbc:mysql://127.0.0.1:3306/studydb";
		String user = "kc5353";
		String pass = "abcd1234";
		
		try {
			
			// 1단계 - JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2단계 - 데이터베이스 연결
			Connection conn = DriverManager.getConnection(host, user, pass);
			
			// 3단계 - SQL 실행객체 생성
			Statement stmt = conn.createStatement();
			
			// 4단계 - SQL 실행
			String sql = "UPDATE user1 SET `hp`='010-1234-0002', `age`=27 WHERE `uid`='P101'";
			stmt.executeUpdate(sql);
			
			// 5단계 - 결과 처리(SELECT일 경우에만)
			
			// 6단계 - 접속 종료
			stmt.close();
			conn.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("UPDATE 완료...");
		
	}

}
