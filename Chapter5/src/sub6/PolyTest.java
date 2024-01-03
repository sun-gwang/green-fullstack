package sub6;

/*
 * 날짜 : 2024/01/03
 * 이름 : 김선광
 * 내용 : Java 다형성 내용 실습
 */

public class PolyTest {
	public static void main(String[] args) {
		
		// 업캐스팅으로 다형성 구현
		Animal t = new Tiger();
		t.move();
		t.hunt();
		
		Animal e = new Eagle();
		e.move();
		t.hunt();
		
		Animal s = new Shark();
		s.move();
		t.hunt();
		
		// 객체 타입 비교연산
		if(t instanceof Tiger) {
			System.out.println("t는 Tiger입니다.");
		}
		if(e instanceof Eagle){
			System.out.println("e는 Eagle입니다.");
		}
		if(s instanceof Shark){
			System.out.println("s는 Shark입니다.");			
		}
		
	}

}