package test4;
/*
 * 날짜 : 2024/01/12
 * 이름 : 김선광
 * 내용 : 자바 문자열 연습문제
 */

public class Test04 {
	public static void main(String[] args) {
		
		String fileName = "HelloWorld.java";
		
		int idx = fileName.indexOf(".");
		
		String title = fileName.substring(0, idx);
		String ext   = fileName.substring(idx+1);
		
		System.out.println("파일명 : "+title);
		System.out.println("확장자 : "+ext);
		
		String strScores = "60,72,82,86,92";
        String[] scores = strScores.split(",");
        // ,를 빼고 배열로 바꾸는데, " 72" 이런식으로 앞에 공백이 생김
		
		int total = 0;
		
		for(String score : scores) {
			total += Integer.parseInt(score.trim());
		}
		
		System.out.println("strScores 총점 : "+total);
	}

}
