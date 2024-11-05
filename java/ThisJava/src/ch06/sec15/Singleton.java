package ch06.sec15;

public class Singleton {
	
	// private 접근 권한을 갖는 정적 필드 선언과 초기화
	private static Singleton singleton = new Singleton();
	
	// private 접근 권한을 갖는 정적 메서드 선언
	private Singleton() {
		
	}
	
//	public 접근 권한을 갖는 정적 메서드 선언
	public static Singleton getInctance() {
		return singleton;
	}

}
