package sub1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BankApplication {
	
	private static List<Account> accounts = new ArrayList<>();
	private static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		
		boolean run = true;
		while(run) {
			System.out.println("---------------------------");
			System.out.println("1.계좌생성 | 2.계좌목록 | 3.예금 | 4.출금 | 5.종료");
			System.out.println("---------------------------");
			System.out.print("선택>");
			
			int choice = sc.nextInt();
			
			switch(choice){
			case 1:
				createAccount();
				break;
			case 2:
				accountList();
				break;
			case 3:
				deposit();
				break;
			case 4:
				withdraw();
				break;
			case 5:
				run=false;
				System.out.println("프로그램 종료...");
				break;
			    
			}
			
		}
				
		
	}
private static void createAccount( ) {
	    
	    System.out.println("--------");
	    System.out.println("계좌생성");
	    System.out.println("--------");
	    
	    System.out.print("계좌번호: ");
	    String myAccount = sc.next();
	    
		System.out.print("계좌주: ");
		String myName = sc.next();
		
		System.out.print("초기입금액: ");
		int myBalance = sc.nextInt();
		
		accounts.add(new Account(myAccount, myName, myBalance));
		
		System.out.println("계좌가 생성되었습니다.");
		
		
	}
	
	private static void accountList() {
		System.out.println("--------");
		System.out.println("계좌목록");
		System.out.println("--------");
		
		if(accounts.isEmpty()) {
			
			System.out.println("생성된 계좌 목록이 없습니다.");
		}else {
			for(Account acc:accounts) {
				System.out.println(acc);
			}
		}
	}
	
	private static void deposit() {
		
		
	        try {
	        	System.out.println("------");
	 	        System.out.println("예금");
	 	        System.out.println("------");
	 	        System.out.print("계좌번호 : ");
	 	       String ano = sc.next();
		        System.out.print("예금액 : ");
		        findAccount(ano).setBalance(findAccount(ano).getBalance() + sc.nextInt());
		        System.out.println("결과 : 예금이 성공되었습니다.");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("잘못된 번호입니다.");
			}
	       
	     
		
	}
	
	private static void withdraw() {
		
		try {
			System.out.println("--------");
			System.out.print("출금");
			System.out.println("--------");
			System.out.print("계좌번호 :");
		    String ano = sc.next();
		    System.out.print("출금액 : ");
		    int remain = findAccount(ano).getBalance() - sc.nextInt();
		    
		    if (remain < 0) {
		        System.out.println("결과 : 출금 가능액을 초과하였습니다.");
		    } else {
		        findAccount(ano).setBalance(remain);
		        System.out.println("결과 : 출금이 성공되었습니다.");
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("잘못된 번호입니다.");
		}
		
		
	}
	
	
	private static Account findAccount(String ano) {
		
		for(Account acc : accounts) {
			if(acc.getAno().equals(ano)) {
				return acc;
			}
		}
		return null;
	}
}

