package sub2;

import java.util.LinkedList;

import java.util.Queue;
import java.util.Stack;

/*
 * 날짜 : 2024/01/10
 * 이름 : 김선광
 * 내용 : Java Stack, Queue 실습하기
 */
public class StackQueueTest {
	public static void main(String[] args) {
		
		// 컬렉션(List, Set, Map)은 기본형을 취급X
		// 모두 제네릭, Wrraper로 해야함
		Stack<Integer> stack = new Stack<>();
		
		stack.push(1);
		stack.push(2);
		stack.push(3);
		stack.push(4);
		stack.push(5);
		
		
		while(!stack.empty()) {
			
			System.out.print(stack.pop()+" ");
		}
		
		System.out.println();
		
		Queue<String> queue = new LinkedList<>();
		Queue<Integer> qu1 = new LinkedList<>();
		
		queue.offer("서울");
		queue.offer("대전");
		queue.offer("대구");
		queue.offer("부산");
		queue.offer("광주");
		
		while(!queue.isEmpty()) {
			
			System.out.print(queue.poll()+" ");
		}
		
	}
	
}
