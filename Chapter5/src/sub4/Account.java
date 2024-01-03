package sub4;

public class Account {
	protected String bank;
	protected String name;
	protected String id;
	protected int balance;
	
	public Account(String bank, String name, String id, int balance) {
		this.bank=bank;
		this.name = name;
		this.id = id;
		this.balance =balance;
	}
	
	public void deposit(int money) {
		this.balance+=money;
		
	}
	public void withdraw(int money) {
		this.balance-=money;

	}
	public void show() {
		System.out.println("은행명:"+this.bank);
		System.out.println("입금주:"+this.name);
		System.out.println("계좌번호:"+this.id);
		System.out.println("현재잔액:"+this.balance);
		
	}

}