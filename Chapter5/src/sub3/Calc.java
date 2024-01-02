package sub3;

public class Calc { // new 해야 사용가능
	
	
	// 싱글톤 객체 생성
	private static Calc instance = new Calc();
	public static Calc getInstance() {
		return instance;
	}
	// new를 못하도록 막게 private로 선언
	private Calc() {}
	
	public int plus (int x, int y) {
		return x+y;
	}
	
	public int minus (int x, int y) {
		return x-y;
	}
	
	public int multi (int x, int y) {
		return x*y;
	}
	
	public int div (int x, int y) {
		return x/y;
	}
	

}
