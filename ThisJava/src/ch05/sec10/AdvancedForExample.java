package ch05.sec10;
//p.190
public class AdvancedForExample {

	public static void main(String[] args) {
		
		int[] scores = {95,71,84,93,87};
		
		int sum =0;
		
		// socre에 scores 항목 차례로 다 대입
		for(int score : scores) {
			System.out.println(score);
			sum+=score;
		}
		System.out.println("점수 총합 : "+sum);
		
		double avg = (double)sum/scores.length;
		System.out.println("점수 평균 : "+avg);
		
		
	}
}
