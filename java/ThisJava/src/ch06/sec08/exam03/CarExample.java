package ch06.sec08.exam03;
//p.238
public class CarExample {
	
	public static void main(String[] args) {
		
		Car myCar = new Car();
		
		myCar.setGas(5);
		
		// isLeftGas() 메서드를 호출하여 받은 리턴값이 true일 경우 if 블록 실행
		if(myCar.isLeftGas()) {
			System.out.println("출발합니다.");
			
			myCar.run();
		}
		
		System.out.println("gas를 주입하세요.");
		
	}
	
}
