package sub5;
/*
 * 날짜 : 2024/01/03
 * 이름 : 김선광
 * 내용 : Java 메서드 오버라이드 실습하기
 */

import sub4.Sedan;
import sub4.Truck;

class AAA{
	public void method1() {System.out.println("AAA::method1...");}
	public void method2() {System.out.println("AAA::method2...");}
	public void method3() {System.out.println("AAA::method3...");}
}
class BBB extends AAA {
	@Override
	public void method2() {System.out.println("BBB::method2...");}
	// Overload
	public void method3(int a) {System.out.println("BBB::method3...");}

}
class CCC extends BBB {
	@Override
	public void method1() {System.out.println("CCC::method1...");}
	@Override
	public void method2() {System.out.println("CCC::method2...");}
	// Overload
	public void method3(int a, int b) {System.out.println("CCC::method3...");}

}
public class OverrideTest {
	public static void main(String[] args) {
		
		// Override, Overload 실습
		CCC c = new CCC();
		c.method1(); // CCC에 있는 method1()이 AAA의 method1()을 덮어씌움(Override)
		c.method2(); // CCC에 있는 method1()이 BBB의 method1()을 덮어씌우고,
		             // BBB의 method1()이 AAA의 method1()을 덮어씌움
		c.method3(); // 매개변수가 달라 맞는 함수로 찾아감(Overload)
		c.method3(0);
		c.method3(1,2);
		
		//Override 구현 객체 생성
		Sedan sonata = new Sedan("소나타","흰색",0,2000);
		Truck bongo = new Truck("봉고","남색",0,0);
		
		sonata.speedUp(80);
		sonata.show();
		
		bongo.speedDown(60);
		bongo.show();
		
	}

}