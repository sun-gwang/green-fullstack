package sub3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Stream;

/*
 * 날짜 : 2024/01/16
 * 이름 : 김선광
 * 내용 : Java 컬렉션 스트림 실습하기
 * 
 */

class Person{
	private String name;
	private int age;
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + "]";
	}

	
}
public class StreamTest {

	public static void main(String[] args) {
		
		List<String> names = new ArrayList<>();
		names.add("김유신");
		names.add("김춘추");
		names.add("장보고");
		names.add("강감찬");
		names.add("이순신");
		
		// 외부 반복자를 이용한 출력
		Iterator<String> it = names.iterator();
		
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		System.out.print("\n");
		
		// 내부 반복자를 이용한 출력(Stream)
		Stream<String> stream = names.stream();
		// forEach(안에 람다식이 들어감)
		stream.forEach((name)->{System.out.println(name);});
		
		List<Person> persons = new ArrayList<>();
		persons.add(new Person("김유신", 23));
		persons.add(new Person("김춘추", 21));
		persons.add(new Person("장보고", 33));
		persons.add(new Person("강감찬", 43));
		persons.add(new Person("이순신", 53));
		
		// 외부 반복자
		for(Person person : persons) {
			System.out.println("이름 : "+ person.getName()+", 나이:"+person.getAge());
		}
		
		System.out.print("\n");

		// 내부 반복자
		Stream<Person> st = persons.stream();
		//st.forEach((person)->System.out.println(person));
		st.forEach(System.out::println);
		
	}
}
