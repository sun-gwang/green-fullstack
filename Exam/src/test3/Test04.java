package test3;
/*
 * 날짜 : 2024/01/04
 * 이름 : 김선광
 * 내용 : 정적변수 연습문제
 */

class Student{
	public static int studentId; // static은 웬만하면 public
	private String studentName;
	private String major;
	private int grade;
	
	public Student(String studentName, String major, int grade) {
		
		this.studentId++; // ++을 보고 int라는것을 유추, 직접 객체생성 보고 static유추
		this.studentName = studentName;
		this.major = major;
		this.grade = grade;
	}
	
	public void studentInfo() {
		System.out.println("==================");
		System.out.println("학번 : "+studentId);
		System.out.println("이름 : "+studentName);
		System.out.println("전공 : "+major);
		System.out.println("학년 : "+grade);
		System.out.println("==================");
	}
	
}
public class Test04 {
	public static void main(String[] args) {
		
		Student.studentId = 20201000;
		
		Student kim = new Student("김유신", "국문과",1); 
		kim.studentInfo();
		
		Student lee = new Student("이순신", "경제학과",1); 
		lee.studentInfo();
		
		Student lim = new Student("임꺽정", "경영학과",1); 
		lim.studentInfo();
	}

}
