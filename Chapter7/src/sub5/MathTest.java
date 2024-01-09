package sub5;
/*
 * 날짜 : 2024/01/09
 * 이름 : 김선광
 * 내용 : Java Math 클래스 실습
 */
public class MathTest {
	public static void main(String[] args) {
		
//		Math math = new Math(); 객체 생성 할 수 없음, static으로 제공됨(클래스 메서드, 정적 메서드)
		System.out.println("절대값 : "+ Math.abs(-5));
		System.out.println("제곱근 : "+ Math.sqrt(9));
		System.out.println("올림값 : "+ Math.ceil(1.2));
		System.out.println("올림값 : "+ Math.ceil(1.8));
		System.out.println("내림값 : "+ Math.floor(1.2));
		System.out.println("내림값 : "+ Math.floor(1.8));
		System.out.println("반올림값 : "+ Math.round(1.2));
		System.out.println("반올림값 : "+ Math.round(1.8));
		
		// random 메서드
		double num1 = Math.random(); // 0~1까지의 실수
		System.out.println("num1 : "+num1);
		
		double num2 = Math.random()*10; // 0~10까지의 실수
		System.out.println("num2 : "+num2);
		
		double num3 = Math.ceil(num2); // 0~10까지의 정수
		System.out.println("num3 : "+num3);
		
		// 1~45 사이 임의의 정수
		int rand = (int) Math.ceil(Math.random() *45);
		System.out.println("rand : "+rand );
	}

}
