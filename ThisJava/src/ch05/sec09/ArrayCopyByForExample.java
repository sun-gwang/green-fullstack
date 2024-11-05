package ch05.sec09;

//p.187
public class ArrayCopyByForExample {

	public static void main(String[] args) {
		
		
		int [] oldIntArray = {1,2,3};
		
		// 길이 5인 배열로 새로 생성
		int[] newIntArray = new int[5];
		
		// 배열 항목 복사 (앞에서부터 채워짐)
		for(int i=0; i<oldIntArray.length; i++) {
			newIntArray[i]=oldIntArray[i];
		}
		
		// 배열 항목 출력
		for(int k=0; k<newIntArray.length; k++) {
			System.out.print(newIntArray[k]+",");
		}
		
		
	}
}
