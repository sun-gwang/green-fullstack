package sub1;
/*
 * 날짜 : 2024/01/02
 * 이름 : 김선광
 * 내용 : JAVA클래스 실습하기
 * 
 */
public class ClassTest {
	public static void main(String[] args) {
		
		// 객체 생성
		Car sonata = new Car(); // 인스턴스(객체) 생성
		
		// 객체 초기화
		sonata.name = "소나타";
		sonata.color = "흰색";
		sonata.speed = 0;
		
		// 객체 상호작용
		sonata.speedUp(60);
		sonata.speedDown(20);
		
		sonata.show();
		
		System.out.println();
		
		// 객체 선언, 생성, 초기화, 상호작용
		Car avante;
		avante = new Car();
		
		avante.name = "아반테";
		avante.color = "검은색";
		avante.speed = 0;
		
		avante.speedUp(80);
		avante.speedDown(20);
		avante.show();
		System.out.println();

		// Account 객체생성/초기화/상호작용
		Account kb = new Account();
		
		kb.bank = "국민은행";
		kb.id = "101-12-0011";
		kb.name = "김유신";
		kb.balance = 10000;
		
		kb.deposit(40000);
		kb.withdraw(30000);
		kb.show();
		System.out.println();

	}

}
