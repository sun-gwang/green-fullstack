package sub4;
/**
 * 날짜 : 2023/12/28
 * 이름 : 김선광
 * 내용 : While문 실습하기
 */
public class WhileTest {
	public static void main(String[] args) {
		
		// 1부터 10까지의 합
		int sum = 0;
		int k = 1; // for문 에서의 초기식
		
		while(k<=10) {
			sum+=k;
			k++;
		}
		System.out.println("1부터 10까지의 합:"+ sum);
		
		// 1부터 10까지의 홀수 합
		
		int tot = 0;
		int j = 1;
		
		while(j<=10) {
			
			if(j%2 == 1) {
				tot+=j;
			}
			
			j++;
		}
		System.out.println("1부터 10까지의 홀수 합:"+tot);
		
		// do-wihle
		// 1부터 10까지의 짝수 합
		int esum = 0;
		int i = 1;
		 do {
			 if(i%2==0)
			 {
				 esum+=i;
			 }
			 
			 i++;
			 
		 }while(i<=10);
		System.out.println("1부터 10까지의 짝수합:"+esum);
		
		// break
		int num=1;
		while(true) {
			if(num%5==0 && num%7==0) {
				break;
			}
			num++;
		}
		System.out.println("5와 7의 최소공배수:" +num);
				
		// continue
		int total = 0;
		int n = 1;
		
		while(n<=10) {
			
			 n++;
			 
			if(n%2==1) { // 홀수를 걸러줌 
				
				continue; // 반복문 처음으로 이동(while의 조건쪽으로)
			}
			
			total+=n;
		}
			System.out.println("1부터 10까지의 짝수 합:"+total);	
		
	}
		
	}