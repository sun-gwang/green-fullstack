package ch05.sec04;

public class NullPointerExceptionExample {
	public static void main(String[] args) {
		
		int[] intArray = null;
		//intArray[0]=10;  //NummPointerException null로 저장을 했기때문에 10이 대입이 안됨
		
		String str = null;
		//System.out.println("총 문자 수:" +str.length() ); NullPointerException
		
	}

}
