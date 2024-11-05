package ch06.sec10.example03;

public class Car {
	
	// 인스턴스 필드 선언
	int speed;
	
	// 인스턴스 메서드 선언
	void run() {
		System.out.println(speed+"으로 달립니다.");
	}
	
	static void simulate() {
		// 객체 생성
		Car myCar = new Car(); // 정적으로 만들었으니 객체를 생성해조야 참조 가능
		myCar.speed = 200;
		myCar.run();
	
	}

	
	public static void main(String[] args) {
		
		// 정적 메서드 호출
		simulate();
		
		// 객체 생성
		Car myCar = new Car();
		
		myCar.speed =60;
		myCar.run();
		
	}
}
