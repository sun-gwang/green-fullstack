package sub4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class TransactionTest {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("장애를 발생시키겠습니까?");
		
		int answer = sc.nextInt();    // 0:장애발생X , 1: 장애발생0
		
		// DB 정보
		String host = "jdbc:mysql://127.0.0.1:3306/bank";
		String user = "kc5353";
		String pass = "abcd1234";
		
		Connection conn = null;
		try {
			
			// 1단계 JDBC드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 2단계 데이터베이스 접속
			conn = DriverManager.getConnection(host, user, pass);
			
			// 트랜잭션 시작
			// 자동으로 설정되어있는 commit을 꺼줘야 한다.(자동으로 작업이 넘어가는걸 막기 위해_
			conn.setAutoCommit(false);
			
			// 3단계 SQL 실행 객체 생성(PreparedStatement)
			String sql1 = "UPDATE `bank_account` SET `a_balance` = `a_balance`-10000 WHERE `a_no`=? ";
			String sql2 = "UPDATE `bank_account` SEt `a_balance` = `a_balance`+10000 where `a_no`=? ";
			
			PreparedStatement psmt1 = conn.prepareStatement(sql1);
			psmt1.setString(1, "101-11-1001");
			PreparedStatement psmt2 = conn.prepareStatement(sql2);
			psmt2.setString(1, "101-11-1003");
			
			// 4단계 SQL실행
			psmt1.executeUpdate();
			
			if(answer == 1 ) {
				throw new Exception("예상치 못한 예외 발생!");
			}
			
			psmt2.executeUpdate();
			
			// 작업 확정
			conn.commit();
			
			// 5단계 결과처리 (SELECT문)
			
			// 6단계 데이터베이스 접속 종료
			psmt2.close();
			psmt1.close();
			conn.close();
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			
			// 트랜잭션 취소 -실패처리
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		System.out.println("트랜잭션 성공...");
	}

}
