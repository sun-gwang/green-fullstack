package sub3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/*
 * 날짜 : 2024/01/23
 * 이름 : 김선광
 * 내용 : PreparedStatement 실습하기
 */
public class PreparedDeleteTest {
	public static void main(String[] args) {
		
		String host = "jdbc:mysql://127.0.0.1:3306/studydb";
		String user = "kc5353";
		String pass = "abcd1234";
		
		try {
			// 1단계 - JDBC 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 2단계 - 데이터베이스 연결
			Connection conn = DriverManager.getConnection(host, user, pass); 
			
			// 3단계 - SQL쿼리문 객체 생성 및 맵핑
			String sql = "DELETE FROM `User1` WHERE `uid`=?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, "p102");
			
			// 4단계 - SQL 쿼리문 실행
			psmt.executeUpdate();
			
			// 5단계 - (SELECT문)
			
			// 6단계 데이터베이스 종료
			psmt.close();
			conn.close();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("DELETE 종료...");
	}

}
