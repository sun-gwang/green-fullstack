package ch06.sec08.exam02;
//p235
public class ComputerExample {
	public static void main(String[] args) {
		
		// Computer 객체 생성
		Computer myCom = new Computer();
		
		// sum() 메서드 호출시 매개값 1,2,3을 제공하고
		// 합산결과를 리턴받아 result1 변수에 대입
		int result1 = myCom.sum(1,2,3);
		System.out.println("result1 : "+result1);
		
		int result2 = myCom.sum(1,2,3,4,5);
		System.out.println("result2 : "+result2);
		
		// sum() 메서드 호출 시 배열을 제공하고
		// 합산 결과를 리턴받아 result3변수에 대입
		int[] values = {1,2,3,4,5};
		int result3 = myCom.sum(values);
		System.out.println("result3 : "+result3);
		
		int result4 = myCom.sum(new int[] {1,2,3,4,5});		
		System.out.println("result4 : "+result4);
	}

}
