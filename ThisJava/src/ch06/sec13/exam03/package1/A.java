package ch06.sec13.exam03.package1;

public class A {
	
	// public 접근 제한을 갖는 필드 선언
	public int field1;
	
	// default 접근 제한을 갖는 필드 선언
	int field2;
	
	// private 접근 제한을 갖는 필드 선언
	private int field3;
	
	// 생성자 선언
	public A() {
		
		// 같은 클래스 내부일 경우 접근 제한자의 영향을 받지 않는다.
		field1 = 1;
		field2 = 1;
		field3 = 1;
		
		method1();
		method2();
		method3();
		
	}

	public void method1() {
		
	}
	
	void method2() {
		
	}
	
	private void method3() {
		
	}

}

