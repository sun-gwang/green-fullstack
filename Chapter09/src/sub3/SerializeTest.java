package sub3;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;

/*
 * 날짜 : 2024/01/11
 * 이름 : 김선광
 * 내용 : Java 직렬화 실습
 */

public class SerializeTest {
	public static void main(String[] args) {
		
		Apple apple = new Apple("한국",3000);
		
		String target = "C:\\Users\\java\\Desktop\\Apple.txt";
		
		try {
			
			// 객체를 직렬화하기 위한 스트림 생성
			FileOutputStream fos = new FileOutputStream(target);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			
			// 객체 직렬화
			oos.writeObject(apple);
			
			// 스트림 해제
			oos.close();
			fos.close();
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}
