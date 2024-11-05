package ch06.sec10.example01;
//p.247
public class CalculatorExample {
	public static void main(String[] args) {
		
		double result1 = 10*10*Calculator.pi;
		int result2 = Calculator.plus(10,5);
		int result3 = Calculator.minus(10,5);
		
		System.out.println("Result1 : "+result1);
		System.out.println("Result2 : "+result2);
		System.out.println("Result3 : "+result3);
	}

}
