package ch06.sec10.example02;

public class Television {
	
	static String company = "MyComputer";
	static String model   = "LCD";
	static String info;
	
	static {
		info = company+"-"+model;
	}

}
