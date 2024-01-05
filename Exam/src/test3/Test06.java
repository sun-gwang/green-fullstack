package test3;
/*
 * 날짜 : 2021/01/04
 * 이름 : 김선광
 * 내용 : 싱글톤 객체와 인스턴스 객체 연습문제
 */

class Adder{
	private static Adder instance = new Adder();
	public static Adder getInstance() {
		return instance;
	}
	
	// 생성자 호출 막기
	private Adder() {}

	private Adder(int value) {
		y+=value;
	}
	
	private int x;
	private int y;


public void add(int x, int y) {
	this.x = x; // x,y둘 다 연산자있으므로 int 유추
	y++;       // this가 아니므로 위의 y가 아님 0으로 시작
}

public void add(int[] arr) {
	this.x+=arr[0];
	this.y+=arr[1];
}

public static void add(Adder a2) {
	a2.x+=10; // .을 보고객체다라고 유추
}

// 위의 생성자에서 value를 어떻게 선언했는지 확인
public static Adder add (Adder a3, int value) {
	return new Adder(value);
}

public void show() {
	System.out.println("x:"+x);
	System.out.println("y:"+y);
}



}
public class Test06 {
	public static void main(String[] args) {
		Adder a1 = Adder.getInstance();
		
		a1.add(1,2);
		a1.show();
		
		int[] arr = {10,20};
		a1.add(arr);
		a1.show();
		
		Adder.add(a1);
		a1.show();
		
		a1=Adder.add(a1,3);
		a1.show();
	}

}
