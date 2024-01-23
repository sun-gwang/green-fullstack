package sub3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * 날짜 : 2024/01/23
 * 이름 : 김선광
 * 내용 : PreparedStatement 실습하기
 * 
 *  PreparedStatement
 *  - 기존 Statement 보다 향상된 동적 SQL 생성을 위한 Statement
 *  - Query Parameter를 사용해서 값을 Mapping(사상, 바인딩) 해서 쿼리 실행
 *  
 *  VO 객체
 *  - VO(Value Object) 객체는 SELECT의 결과 테이블 속성을 갖는 객체
 *  - 테이블 개체(Entity) 를 객체(Object)로 변환할 때 사용하는 객체
 *  - Spring 에서는 DTO(Data Transfer Object)로 사용
 */



public class PreparedSelectTest {
	public static void main(String[] args) {
		
		List<User4VO>users = new ArrayList<>();
		
		String host = "jdbc:mysql://127.0.0.1:3306/studydb";
		String user = "kc5353";
		String pass = "abcd1234";
		
		try {
			// 1단계
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 2단계 데이터 베이스 연결
			Connection conn = DriverManager.getConnection(host, user, pass);
			
			// 3단계 SQL 실행 객체 생성
			String sql = "SELECT * FROM `User4`";
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			// 4단계 SQL실행
			ResultSet rs = psmt.executeQuery();
			
			
			// 5단계 결과 처리
			while(rs.next()) {
				// 커서가 가리키는 튜플 결과 가져오기 +
				// vo 객체생성 및 초기화
				User4VO vo = new User4VO();
				
				vo.setUid(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setAge(rs.getInt(4));
				vo.setHp(rs.getString(5));
				vo.setAddr(rs.getString(6));
				
				users.add(vo);
				//System.out.printf("%s,%s,%s,%d,%s,%s\n",uid,name,gender,age,hp,addr);
			}
			
			for(User4VO vo : users) {
				System.out.printf("%s,%s,%s,%d,%s,%s\n",vo.getUid(),
						                                vo.getName(),
						                                vo.getGender(),
						                                vo.getAge(),
						                                vo.getHp(),
						                                vo.getAddr());
				
			}
			// 6단계 접속 종료
			rs.close();
			psmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("SELECT 성공...");
		
	}

}
