package ch05.sec05;
//p.163
public class IndexOfContainsExample {
	public static void main(String[] args) {
		
		String subject = "자바 프로그래밍";
		
		int location = subject.indexOf("프로그래밍"); // 프로그래밍이 3번부터 시작
		System.out.println(location);
		String substring = subject.substring(location); // 3번 문자열부터 끝까지
		System.out.println(substring); 
		
		location = subject.indexOf("자바");
		
		if(location != -1) {
			System.out.println("자바와 관련된 책이군요");
		}else {
			System.out.println("자바와 관련 없는 책이군요");			
		}
		
		boolean result = subject.contains("자바"); // 해당 단어가 있는지 확인 후 true or false 리턴(boolean)
		if(result) {
			System.out.println("자바와 관련된 책이군요");
		}else{
			System.out.println("자바와 관련 없는 책이군요");			
		}
	}

}
