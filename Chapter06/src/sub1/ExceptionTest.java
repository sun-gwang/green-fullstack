package sub1;

/*
 * 날짜 : 2024/01/08
 * 이름 : 김선광
 * 내용 : Java 예외처리 실습하기
 */
public class ExceptionTest {
	public static void main(String[] args) {
		
      ///////////////////////////////////
      // 실행 예외 (런타임)
      ///////////////////////////////////

      //예외상항1. 어떤 수를 0으로 나눌 때 ArithmeticException
      int num1 = 1;
      int num2 = 0;

      int r1 = 0;
      int r2 = 0;
      int r3 = 0;
      int r4 = 0;
      
      try {
    	  // 예외가 발생할 코드
    	  r1 = num1 + num2;    // 
    	  r2 = num1 - num2;    // 
    	  r3 = num1 * num2;    // 
          r4 = num1 / num2;    // 예외 발생 시점이니 얘만 예외처리
      }
      catch(ArithmeticException e) { // 예외객체
    	  //예외가 발생했을 때
    	  e.printStackTrace();
    	  
      }
      System.out.println("r1 : " +r1);
      System.out.println("r2 : " +r2);
      System.out.println("r3 : " +r3);
      System.out.println("r4 : " +r4);
      
      
      // 예외상황2. 배열의 인덱스 번호가 없을 때 IndexOutOfBoundsException
      int[] arr = {1,2,3,4,5};
      
      try {
      for(int i =0; i<6; i++) {
    	  System.out.println("arr["+i+"] : "+ arr[i]); // arr[i]에서 예외 발생
      }
        } catch(IndexOutOfBoundsException e) {
    	  e.printStackTrace();
      }

      
      // 예외상황3. 객체 생성없이 메서드 호출 NullPointerException
      Animal a; // 참조변수만 선언 객체 생성은X
      a = null;
      try {
           a.move();
      } catch(NullPointerException e){
    	  e.printStackTrace();
  
      }
      
      // 예외상황4. 잘못된 캐스팅 ClassCastException
      Animal a1 = new Tiger(); // 업캐스팅
      Animal a2 = new Eagle();
      Animal a3 = new Shark();
      
      Tiger tiger = (Tiger) a1; // 다운캐스팅
      Shark shark = (Shark) a2; // 예외 발생 위에 a2는 Eagle
      try {
      tiger.move();
      tiger.hunt();
      } catch(ClassCastException e) {
    	  
      }
      
      
      ///////////////////////////////////
      // 일반 예외 (컴파일 타임)   
      ///////////////////////////////////
      
      // 실행하기 전부터 오류
      
      try {
		Class animal = Class.forName("sub1.Lion");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} finally {
		// 예외처리 발생여부에 상관없이 마지막에 항상 실행되는 코드
		System.gc(); // 메모리 정리
		
		System.out.println("Finally 실행...");
	}
      System.out.println("프로그램 정상 종료...");
      
   	}

}
