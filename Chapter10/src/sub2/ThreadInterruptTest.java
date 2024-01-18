package sub2;
/*
 * 날짜 : 24/01/15
 * 이름 : 김선광
 * 내용 : Java Thread 상태 실습하기
 */

class SubTread extends Thread{
	
	@Override
	public void run() {
		int i =1;
		try {
			while(true) {
				System.out.println("i:"+i);
				i++;
				sleep(1000);
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
		System.out.println(getName()+"스레드 종료...");
	}
}
public class ThreadInterruptTest {
	public static void main(String[] args) {
		
		System.out.println("Main스레드 시작...");
		
		SubTread sub = new SubTread();
		sub.setName("Sub");
		
		// 자식 스레드 실행
		sub.start();
		
		try {
			// 메인스레드 10초 일시 정지
			Thread.sleep(1000*10);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 자식 스레드 종료
		sub.interrupt();
		
		System.out.println("Main Thread 종료...");
	}

}
