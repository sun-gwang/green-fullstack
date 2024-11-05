package sub6;

import java.util.List;
import java.util.Scanner;

public class CRUDPractice {
	public static void main(String[] args) {
		
		System.out.println("회원 관리 매니저 v1.0");
		Scanner sc = new Scanner(System.in);
		
		UserDAO dao = UserDAO.getinstance();
		
		while(true) {
			
			System.out.println("종료:0, 입력:1, 조회:2, 검색:3, 4.수정, 삭제:5");
			System.out.println("선택>");
			int answer = sc.nextInt();
			
			if(answer ==0 ) {
				break;
				
			}else if(answer== 1) {
				//입력
				UserDTO dto = new UserDTO();
				
				System.out.print("아이디 입력:");
				dto.setUid(sc.next());
				
				System.out.print("이름 입력:");
				dto.setName(sc.next());
				
				System.out.print("생년월일 입력:");
				dto.setBirth(sc.next());
				
				System.out.print("주소 입력:");
				dto.setAddr(sc.next());
				
				System.out.println("등록완료...");
				dao.insertUser(dto);
				
			}else if(answer ==2) {
				List<UserDTO> users = dao.selectUsers();
				
				for(UserDTO user : users) {
					System.out.println(user);
				}
				
			}else if(answer == 3) {
				System.out.print("조회할 아이디를 입력하세요:");
				String uid = sc.next();
				
				UserDTO dto = dao.selectUser(uid);
				
				if(dto == null) {
					System.out.println("해당하는 아이디를 가진 사용자가 없습니다.");
				}else {
					System.out.println(dto);
				}
				
			}else if(answer ==4) {
				
			}else if(answer ==5) {
				
			}
			
		}
		
		sc.close();
		System.out.println("회원 관리 매니저 종료...");
		
	}

}
