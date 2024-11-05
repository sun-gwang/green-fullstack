package ch06.sec13.exam03.package1;

public class B{
	
	public void method() {
		
		// 객체 생성
		A a = new A();
		
		// 필드 값 변경
		a.field1 = 1;
		a.field2 = 1;
//		a.field3 = 1;   private라 객체 외부에서 사용 불가
		
		// 메서드 호출
		a.method1();
		a.method2();
//		a.method3();    private 접근 불가
	}

}
