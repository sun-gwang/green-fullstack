package sub3;
/*
 * 날짜 : 24/01/15
 * 이름 : 김선광
 * 내용 : Java Thread 동기화(Synchronized) 실습하기
 * 
 * 동기(Synchronize) 투수-포수
 *  - 동기방식은 순서에 따라서 차례대로 처리되는 실행 흐름
 *  - 운영체제 스케쥴링 등
 * 
 * 비동기(Asynchronous) 키커-골키퍼
 *  - 순서에 상관없이 처리되는 실행흐름
 *  - 웹 비동기 통신
 */

class Count{
	private int num;
	
	public int getNum() {
		return num;
	}
	
	/*
	 *  임계 영역
	 *    - 멀티 스레드에 의해 공유 자원이 참조되는 코드의 범위
	 *    - 스레드간 경합이 발생
	 *    - 동기화 처리를 수행하는 어느 한 스레드가 사용하면 락을 걸어 다른 스레드의 침범을 막음
	 *    - 너무 많은 스레드가 발생할 경우 교착상태에 빠질 수 있음(병목현상)
	 */
	
	public synchronized void setNum() {
	
		num++;
	}
}

class CountThread extends Thread{
	
	private Count cont;
	
	public CountThread(Count count) {
		this.cont = count;
	}
	
	@Override
	public void run() {
		
		for(int i =1; i<=1000; i++) {
			
			cont.setNum();
		}
		
	}
	
}
public class ThreadSyncTest {

	public static void main(String[] args) {
		
		Count cont  = new Count();
		
		CountThread ct1 = new CountThread(cont);
		CountThread ct2 = new CountThread(cont);
		CountThread ct3 = new CountThread(cont);
		
		ct1.start();
		ct2.start();
		ct3.start();
		
		try {
			ct1.join();
			ct2.join();
			ct3.join();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("cont : "+cont.getNum());
	}

}
