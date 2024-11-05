package sub2;

import java.util.Scanner;

public class ThrowsTest {
	public static void main(String[] args) {
		
		try {		
			method1(10);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("프로그램 정상 종료...");
		
	}

	public static void method1(int n1) throws Exception {
		method2(n1);
	}
	
	
	public static void method2(int n2) throws Exception{
		Scanner sc = new Scanner (System.in);
		
		System.out.println("숫자입력 : ");
		int input = sc.nextInt(); // 예외 발생 숫자말고 다른거 입력할 수 있어서
		
		int result = n2/input; // 예외 발생 input을 0으로 입력했을 때
		
		System.out.println("result : " +result);
	}
	
}