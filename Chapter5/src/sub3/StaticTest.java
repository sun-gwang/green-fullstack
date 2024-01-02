package sub3;

/*
 * 날짜 : 2024/01/02
 * 이름 : 김선광
 * 내용 : 클래스 변수 ,클래스 메서드 실습하기
 */

class Increment{
	
	private int num1;
	static int num2;
	
	public Increment(){
		num1++;
		num2++;
		
		System.out.println("num1:"+num1);
		System.out.println("num2:"+num2);
		System.out.println();
	}
	
}


public class StaticTest {
	public static void main(String[] args) {
		
		// Car 생성
		Car sonata = new Car("소나타", "흰색", 10);
		Car avante = new Car("아반테", "검정", 20);
		Car grande = new Car("그랜저", "남색", 30);
		
		sonata.show();
		System.out.println();
		avante.show();
		System.out.println();
		grande.show();
		System.out.println();
		
		// 전체 차량 수
		System.out.println("전체 차량 수:"+Car.count); // 정적변수는 객체 생성없이 바로 참조
		
		// Increment 실습
		Increment inc1 = new  Increment();
		Increment inc2 = new  Increment();
		Increment inc3 = new  Increment();
		
		
		// 싱글톤 예제
		Calc cal1 = Calc.getInstance();
		Calc cal2 = Calc.getInstance();
		Calc cal3 = Calc.getInstance();
		Calc cal4 = Calc.getInstance();
		
		int rs1 = cal1.plus(1, 2);
		int rs2 = cal2.minus(1, 2);
		int rs3 = cal3.multi(2, 3);
		int rs4 = cal4.div(4, 2);
		
		System.out.println("rs1:"+rs1);
		System.out.println("rs2:"+rs2);
		System.out.println("rs3:"+rs3);
		System.out.println("rs4:"+rs4);
		
	}

}
