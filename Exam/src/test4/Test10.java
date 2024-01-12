package test4;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/*
 * 날짜 : 2024/01/12
 * 이름 : 김선광
 * 내용 : 파일입출력 연습문제
 */

public class Test10 {
	public static void main(String[] args) {
		
		String path = "C:\\Users\\java\\Desktop\\Gugudan.txt";
		
		try {
			File file = new File(path);
			FileWriter fw = new FileWriter(file);
			
			for(int x = 2; x<=9; x++) {
				
				fw.write(x+"단\n");
				
				for(int y = 2; y<=9; y++) {
					int z = x*y;
					fw.write(x+"x"+y+"="+z+"\n");
					}
					
			}
			
			fw.close();
		} catch (IOException e) {
			e.printStackTrace();
			
		}
		System.out.println("구구단 파일생성 완료...");
	}

}
