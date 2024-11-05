package ch07.sec07.exam03;

public class ChildExample {
	public static void main(String[] args) {
		Parent parent = new Child();
		
		parent.field1 = "data1";
		parent.method1();
		parent.method2();
		
		/* 자식으로 캐스팅되면 본인꺼, 자식이 오버라이드 한 메서드만 사용가능
		 * parent.field2 = "data2";
		 * parent.method3();
		 * */
		
		// 강제 타입 변환
		Child child = (Child) parent;
		
		// Child타입으로 필드와 메서드 사용
		// 강제 변환하면 자식타입 객체로 부모의 내용 사용 가능
		child.field2 = "data2";	
		child.method1();
		child.method2();
		child.method3();
	}
}
