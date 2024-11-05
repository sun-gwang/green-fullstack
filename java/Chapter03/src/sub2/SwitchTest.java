package sub2;

/*
 * 날짜 : 2023/12/27
 * 이름 : 김선광
 * 내용 Java 조건문 if 실습하기
 * 
 * */
import java.util.Scanner; // Scanner의 출처

public class SwitchTest {
	public static void main(String[] args) {
		
		
		System.out.print("숫자입력:");
		Scanner scan = new Scanner(System.in);
		int number  = scan.nextInt();
		
		System.out.println("입력한 숫자:"+number);
		
		switch (number%2) {
		
		case 0:
			System.out.println("number는 짝수 입니다.");
			break;
		case 1:
			System.out.println("number는 홀수 입니다.");
			break;
		
		}
		
	}

}