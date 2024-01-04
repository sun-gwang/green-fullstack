package ch02.sec02;

public class LongExample {
 public static void main(String[] args) {
	 
	 long var1 = 10;
	 long var2 = 20L;
	 long var3 = 10000000000;  //long 타입에서 허용을 초과한 값일 경우 l,L둘 중 하나를 붙여 long 인걸 알려줘야 함. 
	 long var4 = 10000000000L; 
	
	 System.out.println(var1);
	 System.out.println(var2);
	 System.out.println(var3);
	 System.out.println(var4);
	
}
}