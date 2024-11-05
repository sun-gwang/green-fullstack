package sub1;
/*
 * 날짜 : 2024/01/18
 * 이름 : 김선광
 * 내용 : Java Swing 실습하기
 */

import java.awt.Container;
import java.awt.Dimension;
import java.awt.Frame;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTabbedPane;

public class HelloSwingTest {
	public static void main(String[] args) {
		
		// 윈도우 생성
		JFrame frame = new JFrame("Hello Swing");
		frame.setPreferredSize(new Dimension(300,200));
		frame.pack();
		frame.setVisible(true);
		
		// 컨테이너 생성
		Container pane = frame.getContentPane();
		
		// 컴포넌트 배치
		JLabel label = new JLabel("Hello Swing");
		pane.add(label);
		
		JButton button = new JButton("확인");
		pane.add(button);
		
		
	}

}
