package ch06.sec13.exam01.package2;

public class A {
	
	A a1 = new A(true);
	A a2 = new A(1);
	A a3 = new A("문자열");
	
	// public 접근 제한 생성자 선언 
	public A(boolean b) {
		
	}
	
	public A(int b){
		
	}
	
	// 같은 객체 내부기 때문에 사용가능
	private A(String s) {
		
	}
}
