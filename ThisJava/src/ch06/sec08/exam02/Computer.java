package ch06.sec08.exam02;

public class Computer {
	
	// 가변길이 매개변수를 갖는 메서드 선언
	int sum(int ...values) {
		
		// sum 변수 선언
		int sum =0;
		
		for(int i=0; i<values.length; i++) {
			sum+=values[i];
		}
		
		
		return sum;
		
		
	}

}
