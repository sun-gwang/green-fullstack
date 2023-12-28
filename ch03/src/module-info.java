/**
 * 
 */
/**
 * 
 */
module ch03 {
	{
	// 비교연산자
	 int var1 = 1;
	 int var2 = 2;

	 boolean rs1 = var1> var2; // var1이 var2보다 크다.
	 boolean rs2 = var1< var2; // var1이 var2보다 작다.
	 boolean rs3 = var1>= var2; // var1이 var2보다 크거나 같다.
	 boolean rs4 = var1<= var2; //var1이 var2보다 작거나 같다.
	 boolean rs5 = var1== var2; //var1이 var2보다 서로 같다.
	 boolean rs6 = var1!= var2; //var1이 var2보다 서로 다르다.

	system.out.println("rs1 : "+rs1);
	system.out.println("rs2 : "+rs2);
	system.out.println("rs3 : "+rs3);
	system.out.println("rs4 : "+rs4);
	system.out.println("rs5 : "+rs5);
	system.out.println("rs6 : "+rs6);

	// 논리 연산자
	int var3 = 3;
	int var4 = 4;
	
	 boolean res1 = (var3<3) && (var4>3); // && == AND 둘 다 만족시켜야 함 (false)
	 boolean res2 = (var3>2) && (var4>3); // true
	 boolean res3 = (var3>3) || (var4>3); // || == or 둘 중 하나만 만족되어도 됨 (false)
	 boolean res4 = (var3>3) || (var4>5); // true
	 boolean res5 = !(var3>var4);         // true
	 
	 sysout 
	 
	}
	
}