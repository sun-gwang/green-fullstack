package sub5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 * 날짜 : 2024/01/10
 * 이름 : 김선광
 * 내용 : Java HashMap 실습하기
 */
public class HashMapTest {
	public static void main(String[] args) {
		
		// Map 생성
		Map<Character, String> map = new HashMap<>();
		
		// 데이터 입력
		map.put('A', "Apple");
		map.put('B', "Banana");
		map.put('C', "Cherry");
		
		System.out.println(map);
		
		// map 크기
		System.out.println("map 크기:"+map.size());
		
		// map 데이터 추출
		System.out.println("map A값 : "+map.get('A'));
		System.out.println("map A값 : "+map.get('B'));
		System.out.println("map A값 : "+map.get('C'));
		
		
		// Map 반복문
		for (char num:map.keySet()) {
			System.out.println(num+"-"+map.get(num));
		
		}
		
		
		// List와 Map을 이용한 자료구조
		List<Map<Integer,Apple>> mylist = new ArrayList<>();
		
		
		Map<Integer, Apple> m1 = new HashMap<>();
		m1.put(101, new Apple("한국",3000));
		m1.put(102, new Apple("중국",3000));
		m1.put(103, new Apple("일본",3000));
		
		Map<Integer, Apple> m2 = new HashMap<>();
		m2.put(201, new Apple("미국",3000));
		m2.put(202, new Apple("영국",3000));
		m2.put(203, new Apple("호주",3000));
		
		Map<Integer, Apple> m3 = new HashMap<>();
		m3.put(301, new Apple("대만",3000));
		m3.put(302, new Apple("태국",3000));
		m3.put(303, new Apple("인도",3000));
		
		mylist.add(m1);
		mylist.add(m2);
		mylist.add(m3);
		
		// 한국 사과
		Map<Integer, Apple> resultmap1 = mylist.get(0);
		
		Apple apple1 = resultmap1.get(101);
		apple1.show();
		
		System.out.println(resultmap1);
		// 호주 사과
//		Map<Integer, Apple> resultmap2 = mylist.get(1);
//		
//		Apple apple2 = resultmap2.get(203);
//		apple2.show();
		
		mylist.get(1).get(203).show(); // 메서드 체이닝
		
		// 태국사과
		mylist.get(2).get(302).show();
		
	}

}
