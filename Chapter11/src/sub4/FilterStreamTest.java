package sub4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Stream;

/*
 * 날짜 : 2024/01/16
 * 이름 : 김선광
 * 내용 : Java 컬렉션 스트림 필터 실습하기
 * 
 */
public class FilterStreamTest {
	public static void main(String[] args) {
		
		// 리스트는 중복을 허용함
		List<Integer> numbers = List.of(1,2,3,4,5,6,7,8,9,1,2,3);
		
		System.out.println(numbers);
		
		// 중복 제거
		numbers.stream().distinct().forEach((num->System.out.print(num+",")));
		
		System.out.println();
		
		// 5 이상의 데이터만 필터링
		numbers.stream().filter(num->num>=5)
		.forEach(num->System.out.print(num+","));
		
		System.out.println();
		
		// 중복 제거, 짝수데이터
		numbers.stream().filter(num->num%2==0)
		       .distinct().forEach(num->System.out.print(num+","));
		
		System.out.println();
		
		// 중복제거, 짝수데이터, 내림차순
		numbers.stream().filter(num->num%2==0).distinct()
		       .sorted(Collections.reverseOrder())
		       .forEach(num->System.out.print(num+","));
		
	}

}
