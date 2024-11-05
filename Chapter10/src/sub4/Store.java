package sub4;

public class Store {

	private int cont = 0;
	private int max = 3;
	private int min = 0;
	
	public synchronized void produce() {
		System.out.println("생산전 : "+cont);
		
		while(cont>=max) {

			try {				
				System.out.println("Produce 대기...1 : ");
				// 현재 실행 스레드는 대기상태로 전환
				wait();
				System.out.println("Produce 대기...2 : ");
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		cont++;
		// 대기상태의 스레드를 실행 준비상태로 전환
		notifyAll();
		
		System.out.println("생산후 : "+cont);
	}
	
	
	
	public synchronized void consume() {
		
       System.out.println("소비 전 : "+cont);
		
		while(cont<=min) {

			try {				
				System.out.println("Consume 대기...1 : ");
				wait();
				System.out.println("Consume 대기...2 : ");
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		cont--;
		notifyAll();
		
		System.out.println("소비 후 : "+cont);
		
		
	}
}
