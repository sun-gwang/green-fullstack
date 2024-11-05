package ch05.sec05;
//p164
public class SplitExample {
	public static void main(String[] args) {
		
		String board = "1,자바학습,참조 타입 String을 학습합니다.,홍길동";
		
		String [] tokens = board.split(","); // ,를 제거한 배열을 얻을 수 있다.
		
		System.out.println("번호 : "+tokens[0]);
		System.out.println("제목 : "+tokens[1]);
		System.out.println("내용 : "+tokens[2]);
		System.out.println("성명 : "+tokens[3]);
		
		// for 문을 이용한 읽기
		for(int i=0; i<tokens.length; i++) {
			System.out.println(tokens[i]);
		}
	}

}
