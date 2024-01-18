package test3;
/*
 * 날짜 : 2024/01/04
 * 이름 : 김선광
 * 내용 : 추상클래스, 다형성 연습문제
 */


abstract class Shape{
	public abstract void draw();
	
}

class Triangle extends Shape{
	
	@Override
	public void draw() {
		System.out.println("draw Triangle!");
	}
}

class Circle extends Shape{

	@Override
	public void draw() {
		System.out.println("draw Circle!");		
	}
}


public class Test09 {
	
	public static void main(String[] args) {
		
		Test09 here = new Test09();
<<<<<<< HEAD
		
=======
>>>>>>> dde5b1ca830c455a9e97341419c63103c3c9c430
		Circle circle = new Circle();
		Triangle triangle = new Triangle();
		
		here.draw(circle);
		here.draw(triangle);
	}
<<<<<<< HEAD
	
	public void draw( Shape obj ) {
		obj.draw();
	}
=======
		
		public void draw(Shape obj) {
			obj.draw();
		}
		
>>>>>>> dde5b1ca830c455a9e97341419c63103c3c9c430
}

