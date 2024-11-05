package ch05.sec03;

public class ReferenceVariableCompareExample {
	public static void main(String[] args) {
		
		int[] arr1;  // 배열 변수 arr1선언
		int[] arr2;
		int[] arr3;
		
		arr1 = new int[] {1,2,3}; // 배열 {1,2,3}을 생성하고 arr1 변수에 대입
		arr2 = new int[] {1,2,3}; // 다른 heap 영역에다가 배열 {1,2,3}을 생성
		arr3 = arr2;              // 배열 변수 arr2의 heap영역 값을 배열변수 arr3에 대입
		
		System.out.println(arr1==arr2);
		
		System.out.println(arr2==arr3);
	}

}
